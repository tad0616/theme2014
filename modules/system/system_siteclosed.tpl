<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.html"}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.html"}>

    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.html"}>

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>
    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.html 那就不需要這一部份 -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.html"}>
  </head>
  <body>
    <div id="xoops_theme_wrap">
      <div id="xoops_theme_container" class="container">
        <div id="xoops_theme_head">
          <{if $logo_img}>
            <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/logo.html"}>
          <{else}>
            <div id="site_name"><a href="<{xoAppUrl}>" style="color:inherit;text-decoration: none;"><{$xoops_sitename}></a></div>
            <div id="site_slogan">
              <{if $xoops_isuser}>
                <{xoMemberInfo assign=mem}>
                <{$smarty.const.TF_USER_WELCOME}> <{$mem.user_occ}> <u><{$mem.name}></u>
              <{else}>
                <{$xoops_slogan}>
              <{/if}>
            </div>
          <{/if}>
        </div>

          <div class="row" id="xoops_theme_content">
            <div class="col-md-12">
              <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu/cssmenu/menu.html"}>

              <{if $slide_width > 0}>
                <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/slideshow_responsive.html"}>
              <{/if}>

              <!-- 載入布局 -->
              <div class="row">
                <div class="col-md-12">
                    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
                </div>
              </div>


            </div>
          </div>
      </div>


      <div id="theme_foot">
        <div id="xoops_theme_foot">
          <div id="foot_content">
            <!--頁尾區-->
            <{$xoops_footer}>
          </div>
        </div>
      </div>
    </div>



    <!-- 載入 BootStrap所需的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.html"}>

    <!-- 載入自訂的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.html"}>

    <!-- 是否顯示樣板變數資訊 -->
    <{if $show_var==1}>
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.html"}>
    <{/if}>

  </body>
</html>