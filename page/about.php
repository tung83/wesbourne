<?php
class about extends base{
    function __construct($db,$lang){
        parent::__construct($db,2,'about',$lang);
    }
    function ind_about($sum_text){
        $str='
        <div class="ind-about">  
            <div class="container">
                <div class="row">   
                <div class="row">    
                    <div class="col-xs-12">
                        <div class="title-head">
                            <span>' 
                                .$this->title.' 
                            </span>
                            <p class="sub-sum">'
                                .$sum_text.
                            '</p>
                        </div>
                    </div>';   
        $str.='  
                    <div class="clearfix"></div>
                       
                    </div>
                </div>
                </div>
            </div>';
        return $str;
    }
    
    function about_item($item){
         return '
            <div class="col-md-4 wow fadeIn animated about-col" data-wow-duration="1000ms">
                <div class="about-item item">
                        <img src="'.webPath.$item['img'].'" class="img-responsive center-block"/>     
                </div>
                    <div class="item-title">
                            <h3>'.$item['title'].'</h3>
                        <div class="about-sum">
                                <span>'.$item['content'].'</span>
                        </div>
                    </div>
            </div>';
       
    }
    function about_cate(){
        $page=isset($_GET['page'])?intval($_GET['page']):1;
        $this->db->reset();
        $this->db->where('active',1);
        $this->db_orderBy();
        $this->db->pageLimit=limit;
        $list=$this->db->paginate('about',$page);
        $count=$this->db->totalCount;
        $str.='<div class="about-list">';
        if($count>0){
            foreach($list as $item){
                $str.=$this->about_item($item);
            }
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
    function about_one($id=1){
        $item=$this->db->getOne('about');        
        $content=$this->lang=='vi'?$item['content']:($this->lang=='cn'?$item['cn_content']:$item['e_content']);
        return  
            '<div class="container">
                <div class="row">   
                        <div class="title-head">
                            <span>' 
                                .$this->title.' 
                            </span>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    
                <div class="row">   '
                       .$content.' 
                </div>
            </div>';                        
    }
}

