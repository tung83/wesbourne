<?php include_once 'function.php';?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content=""/>
    <?=page_header($view,$db)?>  
    <link rel="icon" type="image/png" href="<?=frontPath?>short-letter-logo.png"/>   
    <?=common::basic_css()?> 
    <?=common::basic_js()?>
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-99793446-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<body id="<?=pageId($view)?>">
    <div class="wsmenucontainer clearfix">
        <div class="overlapblackbg"></div>
        <header>
            <?=menu($db,$view)?>         
        </header>  
        <div class="wrapper">
        <section id="page-content">
        <?php

        switch($view){
            case 'build':
                echo product($db);
                break;
            case 'search':
            case 'tim-kiem':
                echo search_product($db);
                break;
            case 'search_sell':
            case 'tim-kiem':
                echo search_sell($db);
                break;
            case 'buy':
                echo buy($db);
                break;
            case 'sell':
                echo sell($db, $view);
                break;        
            case 'concierge':
                echo concierge($db);
                break;
            case 'meet-our-partners':
                echo partner($db);
                break;
            case 'about-us':
                echo about($db);
                break;
            case 'contact-us':
                echo contact($db);
                break;
            default:
                echo home($db);
                break;
        }
        ?>
        
            
        </section>
        <footer>
            <div class="container">
                <div class="row footer-content">
                    <div class="col-md-6 footer-col col-xs-6 footer-menu">
                        <div class="footer-menu-part">
                            <span class="footer-top-span">
                                Site map
                            </span>
                            <div>
                                <img class="hidden-ms hidden-xs logo-footer" src="<?=frontPath?>logo2.jpg" alt="" style=""/>
                                <?=foot_menu($db,$view)?>
                                
                            </div>     
                        </div>
                    </div>
                    <div class="col-md-6 footer-col">
                        <div class="footer-contact-part">
                            <span class="footer-top-span">
                                Contact us
                            </span>    
                            <div>
                                <?=common::qtext($db,4)?>
                            </div> 
                        </div>
                    </div>
                </div>  
            </div> 
            <div class="copyright-wrapper">
                <div class="container">             
                    <div class="row bottom-footer">                
                        <div >
                            <div class="col-md-6 copyright">
                                Copyright © 2017 <b class="company">JJ Ketsa Property Agents</b>. All rights reserved.
                            </div>

                            <?=social($db)?>
                        </div>
                    </div>
                </div>
            </div>    
        </footer>
        </div>
    </div>
    <?php

        if($view=='sell'){ 
        ?>    
  <!-- Modal -->
  <div class="modal " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Modal title</h4>
        </div>
        <div class="modal-body">
          ...
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <?php
        }
        ?>
</body>
</html>