<?php
/**
 *
 * IndexAction.class.php (前台首页)
 *
 */
if(!defined("Ainaphp")) exit("Access Denied");
class IndexAction extends BaseAction
{
    public function index()
    {	
    	// echo 1;die;
		$this->assign('bcid',0);//顶级栏目
		$this->assign('ishome','home');
        $this->display();
    }
	
	function get_mail($body){
		
	    $model =M('mailbox');
		$count = $model->where('status=1')->count();// 查询满足要求的总记录数
		$Adp_sql = $model->where('status=1')->getField('title',$count+1);
		foreach ($Adp_sql as $value) {
		sendmail($value,"Inquiry Product :WenYang", $body);
		}
		
	}

	function message(){
		$mod = M("message");
		//$_POST = get_safe_replace($_POST);
		
		//判断post值为空或空格
         $t = array_keys($_POST, '');//如果空格不算空，就用这条
         $t = array_keys(array_map('trim', $_POST), '');//如果空格算空，就用这条
         if($t) { //有空数据项
          $this->error("Send failed!"); //值就是为空的项提示错误
         }
		 
		if(preg_match("/^[0-9-()+(^\s*)|(\s*$)]+$/",$this->_POST('phone'))){    

		$ip = get_client_ip();
        $ADDRESS=$this->getAddressFromIp($ip);
		
	    $body= " IP ADDRESS: ".$ADDRESS."<br>";
		$body.= " USER: ".$this->_POST('name')."<br>";
        $body.= " EMAIL:".$this->_POST('email')."<br>";
        $body.= " PHONE:".$this->_POST('phone')."<br>";
        $body.= " CONTENT:".$this->_POST('message');
        
		$nowtime=time();
		$tc = $nowtime-$_SESSION['time'];
       
		
		if(false!==$mod->create()){
			if($tc<30){
			
			$this->error("Message has been sent, please donot repeat!");
		   }else{
			
			$mod->title ="[".$ADDRESS."]".$this->_POST('message');
			$mod->status = 1;
			$mod->lang = 1;
			$mod->createtime = time();
			$mod->updatetime = time();
			$result = $mod->add();
            if($result) {
				
			$_SESSION['time']=time();
				
	       //sendmail("rason.shen@adwordsfs.com","Inquiry Product : wenyang", $body);
	       //sendmail("jimmy.su@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("adwords@cnwenyang.com","Inquiry Product : wenyang", $body);
		   //sendmail("sienna.lin@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("david.liu@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("josie@adwordsfs.com","Inquiry Product : wenyang", $body);
		    $this->get_mail($body);
				
               //$this->success('Sent successfully!','thanks.html');
			 
               redirect('thanks.html', 0, '页面跳转中...');

			  
            }else{
                $this->error('Send failed!');
			}
			}
		}else{
			$this->error("Send failed!");
		}
		
		}else{    
         $this->error("The phone is wrong!"); //手机号码格式不对    
        }
	}
	
	//根据ip地址获取地址信息
function getAddressFromIp($ip){
    $urlTaobao = 'http://ip.taobao.com/service/getIpInfo.php?ip='.$ip;
    $urlSina = 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip='.$ip;
    $json = file_get_contents($urlTaobao);
    $jsonDecode = json_decode($json);
    if($jsonDecode->code==0){//如果取不到就去取新浪的
        $data['country'] = $jsonDecode->data->country;
        $data['province'] = $jsonDecode->data->region;
        $data['city'] = $jsonDecode->data->city;
        $data['isp'] = $jsonDecode->data->isp;
        $IpAddress=$data['country'].$data['province'];
		return  $IpAddress;
    }else{
        $json = file_get_contents($urlSina);
        $jsonDecode = json_decode($json);
        $data['country'] = $jsonDecode->country;
        $data['province'] = $jsonDecode->province;
        $data['city'] = $jsonDecode->city;
        $data['isp'] = $jsonDecode->isp;
        $data['district'] = $jsonDecode->district;
        $IpAddress=$data['country'].$data['province'];
		return  $IpAddress;
    }
}


}
?>
