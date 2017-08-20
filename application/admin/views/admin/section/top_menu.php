<!-- 头部 -->
	<div class="head">
		<a href="<?=site_url('homeinfo')?>" target="iframe0" class="logo "><img  style=" margin-top:16px;height: 32px" src="<?=ASSETPATH?>images/home1.png" > </span></a>
		<div class="management_center">用户管理中心</div>
		<ul class="nav">
<!--			<li class="on"><a href="##">会员信息</a></li>-->

			<?php foreach ($menu_arr as $key => $value) {  ?>
				<?php if ($value['show'] == 1&& $value['display_order'] == 1) { ?>

                    <li <?php if($value['menu_id']==$selected_menu){echo "class='on'";}?> >
                        <?php if (empty($value['menu_url'])) { ?>
                            <a href="<?php echo site_url('index').'?menu='.$value['menu_id']?>">
                                <i class="fa <?=$value['icons']?>"></i>
                                <span class=" nav-label"><?=$value['menu_name']?></span>
<!--                                <span class="fa arrow"></span>-->
                            </a>
                        <?php } else { ?>
                            <a class="J_menuItem" href="<?=site_url($value['menu_url'])?>">
                                <i class="fa <?=$value['icons']?>"></i>
                                <span class="on nav-label"><?=$value['menu_name']?></span></a>
                        <?php } ?>
                    </li>

                    <?php }elseif($value['show'] == 1 && $value['display_order'] != 1){ ?>
					<li <?php if($value['menu_id']==$selected_menu){echo "class='on'";}?>>
						<?php if (empty($value['menu_url'])) { ?>
							<a href="<?=site_url('index').'?menu='.$value['menu_id']?>">
								<i class="fa <?=$value['icons']?>"></i>
								<span class="nav-label"><?=$value['menu_name']?></span>
<!--								<span class="fa arrow"></span>-->
							</a>
						<?php } else { ?>
							<a class="J_menuItem" href="<?=site_url('index').'?menu='.$value['menu_id']?>">
								<i class="fa <?=$value['icons']?>"></i>
								<span class="nav-label"><?=$value['menu_name']?></span></a>
						<?php } ?>
					</li>
				<?php } ?>
			<?php } ?>
		</ul>
		<div class="user_help">
			<a href="<?=site_url('security/password')?>"  target="iframe0" >修改密码</a>
			<a href="<?=site_url('login/logout')?>"  target="iframe0" >退出</a>
			<div class="user"><img src="<?=ASSETPATH?>images3/user_icon.png" alt=""></div>
		</div>
	</div>


