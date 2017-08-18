<?php
class contact extends base{
    private $post_result;
    function __construct($db,$lang){
        parent::__construct($db,8,'contact',$lang);
    }
    function contact_insert(){
        $this->db->reset();
        if(isset($_POST['contact_send'])){
            
                                $name=htmlspecialchars($_POST['name']);
                                $adds=htmlspecialchars($_POST['adds']);
                                $phone=htmlspecialchars($_POST['phone']);
                                $email=htmlspecialchars($_POST['email']);
                                $subject=htmlspecialchars($_POST['subject']);
                                $content=htmlspecialchars($_POST['content']);
                                $purpose='';
                                if(!empty($_POST['purpose'])) {
                                    foreach($_POST['purpose'] as $key=>$check) {
                                        if($key == 0){
                                            $purpose.= $check; 
                                        }
                                        else{
                                            $purpose.= ', '.$check; 
                                            
                                        }
                                    }
                                }
                                $insert=array(
                                    'name'=>$name,'adds'=>$adds,'phone'=>$phone,
                                    'email'=>$email,'subject'=>$subject,'content'=>$content, 'purpose'=>$purpose,
                                    'dates'=>date("Y-m-d H:i:s")
                                );
                                try{
                                    $this->send_mail($insert);                                                    
                                     if(!$this->post_result){
                                    $this->post_result = ' <div class="alert alert-success"><i class="icon fa fa-check"></i>
                                             <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                             <strong>Success!</strong>  Your information was submitted successfully. We will contact you soon!
                                           </div>';
                                }
                                        
                                }catch(Exception $e){
                                     $this->post_result .= ' <div class="alert alert-warning">
                                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                        <strong>Error!</strong> '. $e->getMessage() .
                                      '</div>'; 
                                }
                     
        }
    }
    function contact(){
        $basic_config=$this->db->getOne('basic_config');
        $this->contact_insert();
        $this->db->reset();
        $item=$this->db->where('id',3)->getOne('qtext','content');
         
        $str.='    
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <section id="contact-page">
            <div class="container">
                <div class="row contact-box">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="title-head">
                                <span>'
                                    .$this->title.' 
                                </span>  
                            </div>
                        </div> 
                    </div> 
                    <div class="row contact-wrap">'; 
                        if($this->post_result != '')
                         {
                             $str.= $this->post_result;
                         }                             
        $str.=              '
                            <form data-toggle="validator" role="form" class="contact-form" name="contact-form" method="post" action="">
                            <div class="col-md-7">

                            <p class="contact-address">
                                '.common::qtext($this->db,$this->lang, 4).'
                            </p>  
                            <div class="clearfix"></div>
                            <p class="contact-enquiry-text">
                                '.common::qtext($this->db,$this->lang, 3).'
                            </p> 
                            <div class="clearfix"></div>
                            <h3 class="contact-right-header">
                                Leasing Entquiry
                            </h3>
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" required placeholder="Name *" />
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" class="form-control" required placeholder="Phone *">
                                </div>   
                                <div class="form-group">
                                    <input type="text" name="adds" class="form-control" placeholder="Fax">
                                </div>  
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="Company"/>
                                    <div class="help-block with-errors"></div>
                                </div>   
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" required placeholder="Email *" />
                                    <div class="help-block with-errors"></div>
                                </div> 
                               
                                <div class="form-group">
                                    <textarea name="content" id="content" required class="form-control"  placeholder="Message *" rows="8"></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="contact_send" class="btn btn-primary btn-md btn-custom submit-button">
                                        SEND
                                    </button>
                                    <button type="reset" name="reset" class="clear-btn btn btn-primary btn-md btn-custom">
                                        CLEAR
                                    </button>
                                </div>
                        </div>
                        <div class="col-md-4  col-md-offset-1"> 
                             <div class="form-group">
                                    <label class="inline">How can we assist you?
                                    </label>
                                <table class="purpose-check">
                                    <tr>
                                    <td>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="purpose[]" value="custom homes" class=""/>Custom Design
                                        </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="buy home" class=""/>New Home
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="build new home" class=""/>Knockdown
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="house" class=""/>Multi Unit/Subdivision
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="sell home" class=""/>Renovation
                                    </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="purpose[]" value="sell home" class=""/>Town Planning
                                    </label>
                                    </td>
                                    </tr>
                                   </table>
                                    <div class="help-block with-errors"></div>
                                </div>   
                                
                                    <div class="form-group">
                                    <label class="inline">Do i need help finding a block?
                                    </label>
                                <table class="purpose-check">
                                    <tr>
                                    <td>
                                        <label class="">
                                            <input type="radio" name="need_help" id="radios-1" value="Yes">
                                            Yes
                                        <input type="text" name="where" class="contact-where form-control" placeholder="If yes, where?"/>
                                        </label>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <label class="">
                                            <input type="radio" name="need_help" id="radios-2" value="No">
                                            No
                                    </label>
                                    </td>
                                    </tr>
                                   </table>
                                    <div class="help-block with-errors"></div>
                                </div>   
                        </div>
                        </form> 
                    </div><!--/.row-->   
                </div><!--/.row contact-box--> 
            </div><!--/.container-->
             <div id="google-map"> </div>
        </section><!--/#contact-page-->';
        return $str;
    }
    function send_mail($item){
        $basic_config=$this->db->getOne('basic_config');      
      
        //Create a new PHPMailer instance
        include_once phpLib.'PHPMailer/PHPMailerAutoload.php';
        $mail = new PHPMailer(); // create a new object
        $mail->IsSMTP(); // enable SMTP
        $mail->SMTPSecure = 'tls'; // secure transfer enabled REQUIRED for Gmail        
        //Whether to use SMTP authentication
        //$mail->SMTPDebug = 3;
        //Ask for HTML-friendly debug output
        //$mail->Debugoutput = 'html';
        $mail->SMTPAuth = true;
        $mail->Host = $basic_config['smtp_server'];
        $mail->Port = $basic_config['smtp_port']; // or 587
        $mail->IsHTML(true);
        $mail->Username = $basic_config['smtp_user'];
        $mail->Password = $basic_config['smtp_pwd'];
        $mail->SetFrom($basic_config['smtp_user'], $basic_config['smtp_sender_name']);
        $mail->AddAddress($basic_config['smtp_receiver']);
        $mail->SMTPAutoTLS = false;
        $mail->CharSet = 'UTF-8';
        $mail->Subject =  'Customer contacted from website';        
        
        $mail->Body = '
        <html>
        <head>
        	<title>'.$mail->Subject.'</title>
        </head>
        <body>
        	<p>Full Name: '.$item['name'].'</p>
        	
        	<p>Fax: '.$item['adds'].'</p>
        	<p>Phone: '.$item['phone'].'</p>
                <p>Company: '.$item['subject'].'</p>        	
        	<p>Email: '.$item['email'].'</p>
                <p>For: '.$item['purpose'].'</p>
        	<p>Content: '.nl2br($item['content']).'</p>
        </body>
        </html>';
        if (!$mail->send()) {
             $this->post_result = ' <div class="alert alert-warning">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Lỗi!</strong> Mailer Error:' . $mail->ErrorInfo.
                      '</div>'; 
        }
    }
}
?>
