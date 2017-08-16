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
}

