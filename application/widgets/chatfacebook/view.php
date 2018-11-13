<div class="support-icon-right">
     <h3><i class="glyphicon glyphicon-flash"></i> CHAT VỚI CHÚNG TÔI</h3>

     <div class="online-support">
          <div
              class="fb-page"
              data-href="<?=@$this->option->site_fanpage?>"
              data-small-header="true"
              data-height="300"
              data-width="269"
              data-tabs="messages"
              data-adapt-container-width="false"
              data-hide-cover="false"
              data-show-facepile="false"
              data-show-posts="false">
          </div>
     </div>
</div>
<style type="text/css">
     .support-icon-right {
          background: #F0F3EF;
          position: fixed;
          right: 30px;
          bottom: 0;
          z-index: 1180;
          overflow: hidden;
          width: 269px;
          color: #fff!important;
          -webkit-transition: all 0.3s;
          -moz-transition: all 0.3s;
          -ms-transition: all 0.3s;
          -o-transition: all 0.3s;
          transition: all 0.3s;
     }

     .support-icon-right h3 {
          font-size: 13px!important;
          font-family: Arial;
          color: #fff!important;
          margin: 0!important;
          background-color: #e42222;
          cursor: pointer;
     }

     .support-icon-right i {
          background-color: #e42222;
          padding: 10px 15px 12px 15px;
     }
     .online-support {
          display: none;
     }
</style>
<script type="text/javascript">
     $(document).ready(function(){
          $('.online-support').hide();

          $('.support-icon-right h3').click(function(e){
               e.stopPropagation();
               $('.online-support').slideToggle();
          });
          $('.online-support').click(function(e){
               e.stopPropagation();
          });
          $(document).click(function(){
               $('.online-support').slideUp();
          });
     });
</script>