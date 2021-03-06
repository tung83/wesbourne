<?php
include_once 'front.php';
include_once 'object/form.php';
common::page('base');
include_once 'page/search.php';
function pageId($view){
    if($view == 'trang-chu')
    {
        return 'home-page';
    }
    return '';
}
function menu($db,$lang,$view){
   
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    
        $flag_lnk = common::language_change($_SERVER['REQUEST_URI'],'en');        
        $flag_lnk_vi = common::language_change($_SERVER['REQUEST_URI'],'vi');
        $flag_lnk_cn = common::language_change($_SERVER['REQUEST_URI'],'cn');
    $str.='
             
    <div class="header">
        <div class="wsmobileheader clearfix">
            <a id="wsnavtoggle" class="animated-arrow"><span></span></a>
            <a href="'.myWeb.'" class="smallogo"><img src="'.frontPath.'logo.jpg" height="43" alt="" /></a>
            <a class="callusicon" href="tel:'.common::qtext($db,$lang,5).'"><span class="fa fa-phone"></span></a>
        </div>  
        <div class="header-wrap">
            <div class="container">
                <div class="row">
                    <div class="row header-top">
                        <div class="col-md-2 logo hidden-xs hidden-sm">
                            <a href="'.myWeb.'" title="logo"><img src="'.frontPath.'logo.jpg" alt="" style=""/></a>
                        </div>
                        <div class="col-md-10">
                        <div class="header-right hidden-xs hidden-sm">
                            <div class="hotline">
                            <div class="bg-image-blur"></div>
                                <img src="'.frontPath.'phone.png" alt="" style=""/>
                                <a href="tel:'.common::qtext($db,$lang,2).'">'.common::qtext($db,$lang,2).'</a>  '
            . '             <a href="'.$flag_lnk.'" title="en"><img class="flag" src="/file/front/en.jpg" alt="" style=""></a>
                            <a href="'.$flag_lnk_vi.'" title="vi"><img class="flag" src="/file/front/vi.jpg" alt="" style=""></a>
                            <a href="'.$flag_lnk_cn.'" title="cn"><img class="flag" src="/file/front/cn.jpg" alt="" style=""></a>
                       
                            </div>
                           </div>
                        <div class="menu-ground">
                        <div class="clearfix bigmegamenu">
                        <div class="row">      
                            <!--Main Menu HTML Code-->
                            <nav class="wsmenu clearfix">
                                <ul class="mobile-sub wsmenu-list">';
    
                            foreach($list as $item){
                        
        $title=$lang=='vi'?$item['title']:($lang=='cn'?$item['cn_title']:$item['e_title']);
        $db_view=$lang=='vi'?$item['view']:($lang=='cn'?$item['cn_view']:$item['e_view']);
                                $active=($view==$db_view)?'active':'';  
                    
                                $lnk=myWeb.$lang.'/'.$db_view;  
                                $str.='
                                    <li><a href="'.$lnk.'"  class="'.$active.'">'.$title.'</a></li>';
                            }
                            $str.='            
                                </ul>
                            </nav>
                            <!--Menu HTML Code-->    
                        </div>    
                        </div>   
                        </div> 
                        </div><!--class="pull-right">-->
                    </div>
                </div>
            </div>
        </div>   
    </div>';
    return $str;
}

function page_header($view, $db)
{
    $item_table = null;
    $cate_table = null;
    $info_table = null;
    switch ($view) {
        case 'san-pham':
            $item_table = 'product';
            $cate_table = 'product_cate';
            break;
        case 'tin-tuc':   
        case 'tuyen-dung':   
            $item_table = 'news';
            $cate_table = 'news_cate';
            break;  
            
    } 
    if($item_table){
        if (isset($_GET['id'])) {
            $db->where('id', intval($_GET['id']));
            $info_table = $item_table;
        }elseif(isset($_GET['pId'])){
            $db->where('id', intval($_GET['pId']))->where('lev',1);
            $info_table = $cate_table;
        }
    }
    if(!isset($info_table)){
        $db->where('view', $view);
        $info_table = 'menu';
    }
    $item = $db->getOne($info_table, 'title,meta_keyword,meta_description');
    $param = array(
            'title' => $item['title'],
            'keyword' => $item['meta_keyword'],
            'description' => $item['meta_description']);
    
    $title = $param['title'] === '' ? head_title : $param['title']. ' - '.head_title;
    $param['title'] = '.:'.$title.':.';
    $param['meta_keyword'] = $param['meta_keyword'] === '' ? head_keyword : $param['meta_keyword'];
    $param['meta_description'] = $param['meta_description'] === '' ?
        head_description : $param['meta_description'];
    common::page_head($param);
}
function foot_menu($db,$view){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->orderBy('id')->get('menu');
    $str.='
    <ul class="foot-menu">';
    foreach($list as $item){
        $title=$item['title'];
        if($title !="BIẾN TẦN" && $title !="SERVO" && $title !="ĐỘNG CƠ")
        {
            $db_view=$item['view'];
            $str.='
            <li><a href="'.myWeb.$db_view.'">'.$title.'</a></li>';
        }
    }
    $str.='
    </ul>';
    return $str;
}
function foot_product_cate($db,$view){   
    common::page('product');
    $product=new product($db);
    return $product->product_cate_list();    
}
function foot_buy_cate($db,$view){   
    common::page('buy');
    $buy=new buy($db);
    return $buy->buy_cate_list();    
}
function foot_sell_cate($db,$view){   
    common::page('sell');
    $sell=new sell($db);
    return $sell->sell_cate_list();    
}

function home($db,$lang){    
    $str='
    <section id="ind-slider">
        <div id="slider-box">
            '.wow_slider($db).'
        </div>
    </section>';  
    
    common::page('custom');
    $custom=new custom($db,$lang);
    $str.=$custom->ind_custom(common::qtext($db,$lang,13));
    
    $str.=ind_buy_sell($db, $lang);
    
    common::page('about');
    $about=new about($db,$lang);
    $str.=$about->ind_about(common::qtext($db,$lang,15));
    
    common::page('occupancy');
    $occupancy=new occupancy($db,$lang);
    $str.=$occupancy->occupancys();
    
    /*$str.=partner($db);*/
    return $str;
}
function ind_buy_sell($db,$lang){
    return '<div class="ind-sell-buy">
            <div class="ind-buy">
                <div class="container">
                <div class="row">  '.
                   common::qtext($db,$lang,12).                   
                '
            </div>
        </div>
            </div>
        </div>';
}
function wow_slider($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $hasTitle = count($list) > 0 && isset($list[0]['title']) && $list[0]['title'] != "";
$notHasTitle = (!$hasTitle)? ' not-has-title' :'';
    $str.='
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1" class="'.$notHasTitle.'">
	<div class="ws_images"><ul>';
    $i=1;

    foreach($list as $item){
		if($hasTitle){
			$img='<img src="'.webPath.$item['img'].'" alt="" title="'.$item['title'].'" />';
			$lnk=$item['lnk']!=''?$img.'<a href="'.$item['lnk'].'">'.$item['sum'].'</a>':$img.$item['sum'];
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
function slide($db){
    $db->reset();
    $list=$db->where('active',1)->orderBy('ind','ASC')->get('slider');
    $str.='
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
    <link rel="stylesheet" type="text/css" href="'.myWeb.'engine/style.css" />
	<div id="wowslider-container1">
	<div class="ws_images"><ul>';
    $i=1;
    $tmp='';
    foreach($list as $item){
        $img='<img src="'.webPath.$item['img'].'" alt="" title=""/>';
        if($item['lnk']!=''){
            $lnk='<a href="'.$item['lnk'].'">'.$img.'</a>';
        }else{
            $lnk=$img;
        }
        $str.='
        <li>'.$lnk.'</li>';
        $tmp.='
        <a href="#" title="images"><span>'.$img.$i.'</span></a>';
        $i++;
    }
    $str.='
	</ul></div>
	<div class="ws_bullets"><div>
		'.$tmp.'
	</div></div><div class="ws_script" style="position:absolute;left:-99%"></div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="'.myWeb.'engine/wowslider.js"></script>
	<script type="text/javascript" src="'.myWeb.'engine/script.js"></script>
	<!-- End WOWSlider.com BODY section -->';
    return $str;
}
function contact($db,$lang){
    $str.='
    <section id="page">';
    common::page('contact');
    $contact=new contact($db,$lang);
    $str.=$contact->contact(); 
    $str.=$contact->bottom_content();    
    $str.=gmap();
    $str.='
    </section>';
    return $str;
}
function about($db,$lang){ 
    $str.='
    <section id="page">';
    common::page('about');
    $about=new about($db,$lang);
    $str.=$about->about_one(); 
    $str.='
    </section>';
    return $str;    
}
function custom($db, $lang){
    $str.='
    <section id="custom-page">'; 
    common::page('custom');
    $custom=new custom($db,$lang);
    $str.=$custom->slide();
    $str.='
    </section>';
    return $str;
}
function block($db, $lang){
    $str.='
    <section id="block-page">'; 
    common::page('block');
    $block=new block($db,$lang);
    $str.=$block->block_cate();
    $str.='
    </section>';
    return $str;
}
function development($db, $lang){
    $str.='
    <section id="development-page">'; 
    common::page('development');
    $development=new development($db,$lang);
    $str.=$development->development_cate();
    $str.='
    </section>';
    return $str;
}
function partner($db){ 
    $str.='
    <section id="page">';
    common::page('partner');
    $partner=new partner($db);
    $str.=$partner->top_content();
    $str.=$partner->bottom_content(); 
    $str.= '<section id="partner-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partner_cate();
    $str.='</div></div></section>';
    $str.= '<section id="slider-section">
            <div class="container">
                <div class="row partner-box">';
    $str.=$partner->partners();
    $str.='</div></div></section>'; 
    $str.='
    </section>';
    return $str;    
}
function occupancy($db,$lang){
    $str.='
    <section id="sell-page">'; 
    common::page('occupancy');
    $occupancy=new occupancy($db,$lang);
    $str.=$occupancy->top_content_sum(common::qtext($db,$lang,8));
    if(isset($_GET['id'])){
        $str.=$occupancy->occupancy_one(intval($_GET['id']));    
    }else{
        $str.=$occupancy->occupancy_cate();
    }     
    $str.=$occupancy->bottom_content(); 
    return $str;
}
function product($db,$lang){
    $str.='
    <section id="product-page">';  
    common::page('product');
    $pd=new product($db,$lang);
    
    $str.=$pd->top_content_sum(common::qtext($db,$lang,6));
    if(isset($_GET['id'])){
        $str.=$pd->product_one(intval($_GET['id']));    
    }
    else{
        $str.=$pd->product_cate();
        $str.=resize_product_cate();
    }
    $str.=$pd->bottom_content(); 
    return $str;
}
function search_sell($db){
    $str.='
    <section id="search-sell-page">';  
    $str.=search_form($db);
    common::page('sell');
    $pd=new sell($db);
    $str.=$pd->sell_search($db);   
    return $str;
}
function search_product($db){
    $str.='
    <section id="search-product-page">';  
    $str.=search_form($db);
    common::page('product');
    $pd=new product($db);
    $str.=$pd->product_search($db);   
    return $str;
}
function search($db){
    $str.='
    <section id="search-page">';  
    $str.=search_form($db);
    common::page('product');
    $pd=new product($db);
    $str.=$pd->product_search($db);    
    common::page('sell');
    $pd=new sell($db);
    $str.=$pd->sell_search($db);   
    return $str;
}
function shadowBottom(){
    return '<div class="container">  
                <div id="shadow-bottom" class="row">
                </div>
            </div>';
}
function shadowBottomRow(){
    return '<div id="shadow-bottom" class="row">
            </div>';
}
function shadowBottomDent(){
    return '<div id="dent-shadow-bottom" class="row">
            </div>';
}

function social($db){
    $basic_config=$db->where('id',1)->getOne('basic_config','social_twitter, social_facebook');
    $str.='
        <ul id="social_block"> 
            <li>
                <a class="facebook-link" href="'.$basic_config['social_facebook'].'" target="_blank"><i class="fa fa-facebook"></i></a>
            </li>
            <li>
                <a href="'.$basic_config['social_twitter'].'" target="_blank"><i class="fa fa-instagram"></i></a>
            </li>
        </ul>
    ';
    return $str;
}
   
function resize_product_cate(){      
    return '
        <script>   
        $(document).ready(function() {
            $(window).resize(function() {
                if($(window).width() > 992 && $(".product-item").length > 1)
                {
                    var productItemHeight = $($(".product-item")[1]).height();
                    $(".product-menu-container").height(productItemHeight -1);
                }
                
            }).resize();
        });
        </script>';
}
function gmap(){      
    return '
        <script>   
            function initMap() {
                var companyAddress = {lat:-37.846906,lng: 144.978564};
                var addCenter = {lat: -37.846,lng: 144.978564};
                var map = new google.maps.Map(document.getElementById("google-map"), {
                  zoom: 17,
                  fullscreenControl: true,
                  center: addCenter,
                    scrollwheel: false,
                });
                var marker = new google.maps.Marker({
                  position: companyAddress,
                  map: map,
                  title: "Suite 116, 566 St Kilda Road, Melbourne Vic 3004"
                });
                var lequangdinhContentString = 
                      "<h4 style=\"color: #ff578f\">JJ Ketsa Property Agents</h4>" +
                      "<p>116/566 St Kilda Rd, Melbourne VIC 3004</p>" +
                      "<a  target=\"_blank\"href=\"https://www.google.com/maps/place/116%2F566+St+Kilda+Rd,+Melbourne+VIC+3004,+Australia/@-37.8468949,144.9763762,17z/data=!4m5!3m4!1s0x6ad6681746e892eb:0x2f4f5d2de9c5f51d!8m2!3d-37.8468949!4d144.9785649\">Get direction</a>";
                    var infowindow = new google.maps.InfoWindow({
                    content: lequangdinhContentString
                  });
                  infowindow.open(map, marker);
              }
        </script>
        <script async defer
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVWAnZRS56JnP5Nr5otnuzg47TsmJoKBM&callback=initMap">
        </script>';
    
    return $str;
}

function search_form($db){
    return    
        '<div class="search-box">
            <div class="container">
                <div class="row">
                    <form  id="search"  class="form-horizontal search-form" role="form">
                        <input type="hidden" id="search-link" value="'.myWeb.'search/" />
                        <input type="hidden" id="search-sell-link" value="'.myWeb.'search_sell/" />'                                        
                                    
                        . select_options($db, 'storey','storey', 'Storey')
                        . select_options($db, 'beds','min_beds', 'Min. Beds')
                        . select_options($db, 'beds','max_beds', 'Max. Beds')
                        . select_options_land_width($db)
                        . select_options_min_price($db)
                        . select_options_max_price($db)
                        . seach_button().                    
                    '<p>***</p>
                        </form>
                </div>
            </div>
        </div>';
}
?>
