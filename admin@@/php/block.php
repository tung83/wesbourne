<?php
function mainProcess($db)
{
    return block($db);
}
function block($db)
{
	$msg='';
    $act='block';
    $type='block';
    $table='block';
    if(isset($_POST["Edit"])&&$_POST["Edit"]==1){
            $db->where('id',$_POST['idLoad']);
            $list = $db->getOne($table);
            $btn=array('name'=>'update','value'=>'Update');
            $form = new form($list);
	} else {
            $btn=array('name'=>'addNew','value'=>'Submit');	
            $form = new form();
	}
	if(isset($_POST["addNew"])||isset($_POST["update"])) {
            $title=htmlspecialchars($_POST['title']);	   
            $e_title=htmlspecialchars($_POST['e_title']);
            $cn_title=htmlspecialchars($_POST['cn_title']);
            $sum=str_replace("'","",$_POST['sum']);
            $content=str_replace("'","",$_POST['content']);
            $meta_kw=htmlspecialchars($_POST['meta_keyword']);
            $meta_desc=htmlspecialchars($_POST['meta_description']);
            $home=$_POST['home']=='on'?1:0;
            $active=$_POST['active']=="on"?1:0;
            $file=time().$_FILES['file']['name'];
            $ind=intval($_POST['ind']);
            
            $pId=intval($_POST['frm_cate_1']);
	}
    if(isset($_POST['listDel'])&&$_POST['listDel']!=''){
        $list = explode(',',$_POST['listDel']);
        foreach($list as $item){
            $db->where('id',intval($item));
            try{
               $db->delete($table); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }
        }
        header("location:".$_SERVER['REQUEST_URI'],true);
    }
	if(isset($_POST["addNew"])) {
            $insert = array(
                'title'=>$title,'e_title'=>$e_title,'cn_title'=>$cn_title,'sum'=>$sum,'content'=>$content,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
                    try{
                $recent = $db->insert($table,$insert);
                if(common::file_check($_FILES['file'])){
                    WideImage::load('file')->resize(1300,415, 'fill')->saveToFile(myPath.$file);
                    $db->where('id',$recent);
                    $db->update($table,array('img'=>$file));
                }
                header("location:".$_SERVER['REQUEST_URI'],true); 
            } catch(Exception $e) {
                $msg=$e->getMessage();
            }			
	}
	if(isset($_POST["update"]))	{
            $update=array(
                'title'=>$title,'e_title'=>$e_title,'cn_title'=>$cn_title,'sum'=>$sum,'content'=>$content,
                'meta_keyword'=>$meta_kw,
                'meta_description'=>$meta_desc,
                'home'=>$home,'active'=>$active,'ind'=>$ind,'pId'=>$pId
            );
            if(common::file_check($_FILES['file'])){
                WideImage::load('file')->resize(1300,415, 'fill')->saveToFile(myPath.$file);
                $update = array_merge($update,array('img'=>$file));
                $form->img_remove($_POST['idLoad'],$db,$table);
            }
            try{
                $db->where('id',$_POST['idLoad']);
                $db->update($table,$update);  
                //header("location:".$_SERVER['REQUEST_URI'],true);   
            } catch (Exception $e){
                $msg = $e->getMessage();
                var_dump($msg);
            }
	}
	
	if(isset($_POST["Del"])&&$_POST["Del"]==1) {
        $db->where('id',$_POST['idLoad']);
        try{
           $db->delete($table); 
           header("location:".$_SERVER['REQUEST_URI'],true);
        } catch(Exception $e) {
            $msg=$e->getMessage();
        }
	}
    
    $page_head= array(
                    array('#','Danh sách Concierge')
                );
	$str=$form->breadcumb($page_head);
	$str.=$form->message($msg);
    
    $str.=$form->search_area($db,$act,'block_cate',$_GET['hint'],0);
    
    $head_title=array('Tiêu đề<code>Vi/En/Cn</code>','Hiện/Ẩn','STT');
	$str.=$form->table_start($head_title);
	
    $page=isset($_GET["page"])?intval($_GET["page"]):1;
    if(isset($_GET['hint'])) $db->where('title','%'.$_GET['hint'].'%','LIKE'); 
    $db->orderBy('id');
    $db->pageLimit=ad_lim;
    $list=$db->paginate($table,$page);
    $count=$db->totalCount;

    if($db->count!=0){
        foreach($list as $item){
            $item_content = array(
                array($item['title'].'<br/><code>'.$item['e_title'].'</code>'.'<br/><code>'.$item['cn_title'].'</code>','text'),
                array($item['active'],'bool'),
                array($item['ind'],'text')
            );
            $str.=$form->table_body($item['id'],$item_content);      
        }
    }                               
    $str.=$form->table_end();                            
    $str.=$form->pagination($page,ad_lim,$count);
	$str.='			
	<form role="form" id="actionForm" name="actionForm" enctype="multipart/form-data" action="" method="post" data-toggle="validator">
	<div class="row">
    	<div class="col-lg-12"><h3>Cập nhật - Thêm mới thông tin</h3></div>
        <div class="col-lg-12">
        <div class="col-lg-12 admin-tabs">
            <ul class="nav nav-tabs">
    			<li class="active"><a href="#vietnamese" data-toggle="tab">Việt Nam</a></li>
    			<li><a href="#english" data-toggle="tab">English</a></li>
    			<li><a href="#chinese" data-toggle="tab">Chinese</a></li>
    		</ul>
    		<div class="tab-content">
    			<div class="tab-pane bg-vi active" id="vietnamese">
                            '.$form->text('title',array('label'=>'Tiêu đề','required'=>true)).'  
    			</div>
    			<div class="tab-pane bg-en" id="english">
                            '.$form->text('e_title',array('label'=>'Tiêu đề','required'=>true)).'  
    			</div><div class="tab-pane bg-cn" id="chinese">
                            '.$form->text('cn_title',array('label'=>'Tiêu đề','required'=>true)).' 
    			</div>
    		</div>             
        </div>
        <div class="col-lg-12">
            '.$form->file('img',1300,415).'
            '.$form->number('ind',array('label'=>'Thứ tự')).'
            '.$form->checkbox('home',array('label'=>'Trang chủ')).'
            '.$form->checkbox('active',array('label'=>'Hiển Thị','checked'=>true)).'
        </div>
    
    	'.$form->hidden($btn['name'],$btn['value']).'
	</div>
	</form>
	';	
	return $str;	
}
?>