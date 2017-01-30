<div class="sidebar-menu">
    <header class="logo-env" >

        <!-- logo -->
        <div class="logo" style="">
            <a href="<?php echo base_url(); ?>">
                <img src="<?php echo base_url();?>uploads/logo.png"  style="max-height:60px;"/>
            </a>
        </div>

        <!-- logo collapse icon -->
        <div class="sidebar-collapse" style="">
            <a href="#" class="sidebar-collapse-icon with-animation">

                <i class="entypo-menu"></i>
            </a>
        </div>

        <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
        <div class="sidebar-mobile-menu visible-xs">
            <a href="#" class="with-animation">
                <i class="entypo-menu"></i>
            </a>
        </div>
    </header>

    <div style=""></div>	
    <ul id="main-menu" class="">
        <!-- add class "multiple-expanded" to allow multiple submenus to open -->
        <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->


        <!-- DASHBOARD -->
        <li class="<?php if ($page_name == 'dashboard') echo 'active'; ?> ">
            <a href="<?php echo base_url(); ?>admin/dashboard">
                <i class="entypo-gauge"></i>
                <span><?php echo get_phrase('dashboard'); ?></span>
            </a>
        </li>
        
        
         <!-- SETTINGS -->
        <li class="<?php
        if ($page_name == 'system_settings' ||
                $page_name == 'manage_language' ||
                    $page_name == 'sms_settings'||
					$page_name == 'admin_test')
                        echo 'opened active';
        ?> ">
            <a href="#">
                <i class="entypo-lifebuoy"></i>
                <span><?php echo get_phrase('settings'); ?></span>
            </a>
            <ul>
                <li class="<?php if ($page_name == 'system_settings') echo 'active'; ?> ">
                    <a href="<?php echo base_url("admin/admin/system_settings"); ?>">
                        <span><i class="entypo-cog"></i> <?php echo get_phrase('general_settings'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'sms_settings') echo 'active'; ?> ">
                    <a href="<?php echo base_url("admin/admin/sms_settings"); ?>">
                        <span><i class="entypo-mobile"></i> <?php echo get_phrase('sms_settings'); ?></span>
                    </a>
                </li>
                <li class="<?php if ($page_name == 'manage_language') echo 'active'; ?> ">
                    <a href="<?php echo base_url("admin/admin/manage_language"); ?>">
                        <span><i class="entypo-language"></i> <?php echo get_phrase('language_settings'); ?></span>
                    </a>
                </li>

                <li class="<?php if ($page_name == 'admin_test') echo 'active'; ?> ">
                    <a href="<?php echo base_url("admin/admin/admin_test"); ?>">
                        <span><i class="entypo-briefcase"></i> Admin Test</span>
                    </a>
                </li>               
            </ul>
        </li>



        <!-- ACCOUNT -->
        <li class="<?php if ($page_name == 'manage_profile') echo 'active'; ?> ">
            <a href="<?php echo base_url(); ?>admin/manage_profile">
                <i class="entypo-lock"></i>
                <span><?php echo get_phrase('account'); ?></span>
            </a>
        </li>

    </ul>

</div>