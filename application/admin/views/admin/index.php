<?php include 'section/head.php';?>
<body>
<!--头部导航栏-->
<?php include 'section/top_menu.php';?>
<!-- 主体 -->
<div class="main clearfix">
    <!-- 左侧菜单栏   主体 -->
    <?php  include 'section/content_left.php';?>
	<div class="main_rg">
        <!-- 中间  主体-->
        <div class=" main_content row J_mainContent">
            <iframe  name="iframe0" class=" J_iframe" width="100%" height="800px" src="<?=site_url('homeinfo')?>" frameborder="0" data-id="<?=site_url('main')?>" seamless>
            </iframe>
        </div>
        <!-- 右侧 user栏  主体-->
        <?php  include 'section/content_right.php' ?>
	</div>
</div>			
</body>

		