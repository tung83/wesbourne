<?php
class custom extends base{
    function __construct($db,$lang){
        parent::__construct($db,3,'custom',$lang);
    }
    
    function ind_custom($sum_text){
        $str='
        <div class="ind-custom">  
            <div class="container">
                <div class="row">   
                <div>    
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>' 
                                .$this->title.' 
                            </span>
                        </div>
                    </div>';
            $str.='
                    <div class="col-xs-12 wow fadeIn animated" data-wow-duration="1000ms">             
                        <p class="sub-sum">'.$sum_text.'</p>
                    </div>';   
       
        $str.='
                    <div class="clearfix"></div>
                       
                    </div>
                </div>
                </div>
            </div>';
        return $str;
    }
    function custom_item($item){
         return '
            <div class="col-xs-12 wow fadeIn animated" data-wow-duration="1000ms">
                <div>
                    '.$item['content'].'
                 </div>
            </div>';
       
    }
    function custom_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $list=$this->db->get('custom',1);
        $str.='<div class="custom-list">';
            foreach($list as $item){
                $str.=$this->custom_item($item);
            }
        $str.='</div>';
        
        $pg=new Pagination(array('limit'=>pd_lim,'count'=>$count,'page'=>$page,'type'=>0));  
        if($pId==0){
            $pg->set_url(array('def'=>myWeb.$this->view,'url'=>myWeb.$this->view.'/page[p]'));
        }else{     
            $pg->defaultUrl = myWeb.$this->view;
            $pg->paginationUrl = $pg->defaultUrl.'/page[p]';
        }
        $str.= '<div class="pagination-wrapper"> <div class="text-center">'.$pg->process().'</div></div>';
        $this->paging_shown = ($pg->paginationTotalpages > 0);
        return $str;
    }
    function custom_one($id=1){
        $item=$this->db->where('id',$id)->getOne('custom');
        $title=$item['title'];
        $content=$item['content'];
        return  
            '<article>
                <div class="text-center">
                    <h2 class="page-title">'.$title.'</h2>
                </div>
                <p>'.$content.'</p>
            </article>';                        
    }
    
    function slide(){
        $str.='<div class="container">
                <div class="row">   
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>' 
                                .$this->title.' 
                            </span>
                        </div>
                    </div>
                </div>
                </div>';
        $str.=$this->wow_slider_custom($this->db);
        return $str;
    }
    function wow_slider_custom($db){
        $db->reset();
        $list=$db->where('active',1)->orderBy('ind','ASC')->get('custom');
        if(count($list) > 0){
            $title0=$this->lang=='vi'?$list[0]['title']:($this->lang=='cn'?$list[0]['cn_title']:$list[0]['e_title']);
        }
        $hasTitle = count($list) > 0 && isset($title0) && $title0 != "";
    $notHasTitle = (!$hasTitle)? ' not-has-title' :'';
        $str.='
        <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
            <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
            <div id="wowslider-container1" class="'.$notHasTitle.'">
            <div class="ws_images"><ul>';
        $i=1;

        foreach($list as $item){
                    if($hasTitle){
                        
                            $title=$this->lang=='vi'?$item['title']:($this->lang=='cn'?$item['cn_title']:$item['e_title']);
                            $sum=$this->lang=='vi'?$item['sum']:($this->lang=='cn'?$item['cn_sum']:$item['e_sum']);
        
                            $img='<img src="'.webPath.$item['img'].'" alt="" title="'.$title.'" />';
                            $lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'">'.$sum.'</a>':$img.$sum;
                    }
                    else{
                            $img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
                            $lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'"></a>':$img;
                    }
            $str.='
            <li>'.$lnk.'</li>';
            $tmp.='
            <a href="#" title=""><span>'.$i.'</span></a>';
    if($hasTitle){
            $tmp.='<br />';
    }
            $i++;
        }
        $str.='
            </ul></div>';
                    if($hasTitle){

        $str.='
            <div class="ws_bullets"><div>
                    '.$tmp.'
            </div></div>';
    }else{
     $str.='
            <div class="ws_bullets"><div>
                    '.$tmp.'
            </div></div>';
    }
        $str.='
            <div class="ws_shadow"></div>
            </div>	
            <script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
            <script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
            <!-- End WOWSlider.com BODY section -->';
        return $str;
    }
}

