<!--<div class="main_lf">
	<div class="title">账户管理</div>
	<ul class="lf_nav">
		<li class="active"><a href="##" style="background-image: url(<?/*=ASSETPATH*/?>images3/modify_icon.png);">修改基本资料</a></li>
		<li><a href="##" style="background-image: url(<?/*=ASSETPATH*/?>images3/security_icon.png);">管理安全信息</a></li>
		<li><a href="##" style="background-image: url(<?/*=ASSETPATH*/?>images3/invoice_icon.png);">索取发票</a></li>
		<li><a href="##" style="background-image: url(<?/*=ASSETPATH*/?>images3/contacts_icon.png);">联系人管理</a></li>
	</ul>
</div>-->

<div class="main_lf">
<!--	<div class="title"><a href="">主页</a></div>-->
	<ul class="lf_nav">
        <?php foreach($child_menu as $key => $item){  ?>
            <li id="<?=$item['menu_id']?>"><a  onclick="selecta('<?=$item['menu_id']?>')" class="J_menuItem"  href="<?=site_url($item['menu_url'])?>" target="iframe0"  data-index="0" style="background-image: url(<?=ASSETPATH?>images3/security_icon.png);"><?=$item['menu_name']?></a></li>
        <?php } ?>
<!--		<li class="active"><a href="##" style="background-image: url(--><?//=ASSETPATH?><!--images3/modify_icon.png);">修改基本资料</a></li>-->
	</ul>
</div>
<script>
    function selecta(id){
        $('.lf_nav li').removeClass('active');
        $('#'+id).addClass('active');
    }
</script>