<!DOCTYPE html>
<html>
<head>
    <title>百度移动开放平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" >
    <meta http-equiv="keywords" content="开发者平台,百度开发者平台,百度移动开放平台,开发者中心,APP上传,app提交,应用提交,游戏提交,联运游戏,开发者帮助,开发者服务,开放平台,开发者,开发者网站" />
    <meta http-equiv="description" content="百度移动开放平台，轻松发布应用至百度手机助手,免费三端分发。接入百度移动开放平台,免费分享海量用户群，享受长期稳定的移动全产业链支持。获取海量推广资源,享多项优惠扶持政策,是您发布安卓应用、手机游戏的首选平台!" />
    <link rel="shortcut icon" href="https://www.baidu.com/favicon.ico" type="image/x-icon" />
    <link rel="icon" sizes="any" mask href="https://www.baidu.com/img/baidu.svg" />
    <link rel="apple-touch-icon" href="https://ascdn.bdstatic.com/devplat/apple-touch-icon.png"/>
    <link rel="stylesheet" type="text/css" href="https://ascdn.bdstatic.com/devplat/static/pkg/widget_ccd567b.css"/><link rel="stylesheet" type="text/css" href="https://ascdn.bdstatic.com/devplat/static/pkg/lib_38d6947.css"/><link rel="stylesheet" type="text/css" href="https://ascdn.bdstatic.com/devplat/static/index/index_b299ce1.css"/>
    <script>
        function isIE(){var myNav=navigator.userAgent.toLowerCase();return(myNav.indexOf('msie')!=-1)?parseInt(myNav.split('msie')[1]):false;}
        if(location.pathname!='/index/notsupport'&&(isIE()==7||isIE()==6||isIE()==8)){location.href="/index/notsupport";}
        var $up_url = '';
    </script>
</head>
<body>

<script type="text/javascript" src="//passport.baidu.com/passApi/js/uni_login_wrapper.js?cdnversion=201810102224"/></script>
<script type="text/javascript">
    var head_passport = "passport.baidu.com";
    var head_tpl = 'appsearch';
</script>
<div class="header-index iwrap-new header-blue ">
    
<div id="j-inheaderNew" class="iheader-new">
    <div class="nav-new">

        <span class="logo-container">
            <a href="/" class="logo">
                <i></i>
                <span class="txt">&nbsp; | 百度移动开放平台</span>
            </a>
        </span>

        <ul class="ul1">
            <li class="ul1-li" data-type="0">
                <a>
                    <span class="txt">应用分发<i></i></span>
                </a>
                <div class="ul2 apply">
                    <a data-href="/apps/" href="javascript:;">应用管理</a>
                    <a data-href="/apps/claimlist" href="javascript:;">应用认领</a>
                    <a data-href="/chart/dailyIndex?layout=download" href="javascript:;">应用统计</a>
                </div>
            </li>
            <li class="ul1-li" data-type="0">
                <a>
                    <span class="txt">流量服务<i></i></span>
                </a>
                <div class="ul2 flow">
                    <div class="ul2-left">
                        <div class="title">免费推广</div>
                        <div class="ul2-content">
                            <a data-href="/appplus/appPlusRouter?action=home" href="javascript:;" data-nologin-href="/appplus/appPlusRouter?action=introduce">应用+<span class="hot">热门</span></a>
                            <a data-href="/task/applist" href="javascript:;" data-nologin-href="/impel/showBanner?mainkey=appshow&frompos=200083">应用秀</a>
                            <a data-href="/task/game_detail" href="javascript:;">游戏换肤</a>
                        </div>
                        <div class="ul2-content">
                            <a data-href="/inapp/selfrecommend#/home" href="javascript:;">内容自荐
                                <span class="new">new</span>
                            </a>
                            <a data-href="/union/servicelist?frompos=720204" href="javascript:;">发布优惠</a>
                            <a href="javascript:;" data-href="/task/keywordindex" data-nologin-href="/impel/showBanner?mainkey=introkeyword&frompos=200076">搜索词投放</a>
                        </div>
                        <div class="ul2-content">
                            <a data-href="/first/" href="javascript:;">首发合作</a>
                            <a href="javascript:;" data-href="/task/agentlist" data-nologin-href="/impel/showBanner?mainkey=introagent&frompos=200075">独家合作</a>
                            <a data-href="/inapp/?frompos=710208" href="javascript:;">应用内搜索</a>
                        </div>
                    </div>
                    <div class="ul2-left">
                        <div class="title">商业合作</div>
                        <div class="ul2-content">
                            <a data-href="/spread/infoFlow" href="javascript:;">信息流推广</a>
                            <a data-href="/spread/index/3" href="javascript:;">百通推广</a>
                            <a data-href="/spread/index/4" href="javascript:;">搜索推广</a>
                        </div>
                        <div class="ul2-content">
                            <a data-href="/spread/index/5" href="javascript:;">dsp推广</a>
                            <a data-href="/union/channelapi" href="javascript:;">商店联盟</a>
                            <a href="javascript:;" data-href="/exg/getSummaryData">广告联盟</a>
                        </div>
                    </div>
                </div>
            </li>
            <li class="ul1-li" data-type="0">
                <a>
                    <span class="txt">开发者服务<i></i></span>
                </a>
                <div class="ul2 ul2-develop">
                    <div class="ul2-left">
                        <div class="title">应用服务</div>
                        <div class="ul2-content">
                            <a href="https://mtj.baidu.com/web/sdk/index" target="_blank">移动统计</a>
                            <a href="javascript:;" data-href="/apps/upauto?frompos=600129">自动更新</a>
                            <a href="javascript:;" data-href="/jiagu/?frompos=800130">安全加固</a>
                        </div>
                        <div class="ul2-content">
                            <a href="javascript:;" data-href="/apm/">性能服务</a>
                            <a href="javascript:;" data-href="/mtc/">应用测试</a>
                            <a href="javascript:;" data-href="/mota/">行业分析</a>
                        </div>
                    </div>
                    <div class="ul2-left">
                        <div class="title">人工智能</div>
                        <div class="ul2-content">
                            <a href="http://ai.baidu.com/tech/speech/tts" target="_blank">语音合成</a>
                            <a href="http://ai.baidu.com/tech/speech/asr" target="_blank">语音识别</a>
                            <a href="http://ai.baidu.com/tech/ocr" target="_blank">文字识别</a>
                        </div>
                        <div class="ul2-content">
                            <a href="http://ai.baidu.com/tech/face" target="_blank">人脸识别</a>
                        </div>
                    </div>
                    <div class="ul2-left">
                        <div class="title">网盘开放服务</div>
                        <div class="ul2-content">
                            <a data-href="/wangpan/apply" data-nologin-href="/wangpan/homepage" href="javascript:;">网盘云服务<span class="new">new</span></a>
                        </div>
                    </div>
                </div>
            </li>
            <li class="ul1-li" data-type="0">
                <a data-href="/game?action=appsummary&m=list&frompos=300122" href="javascript:;">
                    <span class="txt">游戏联运<i></i></span>
                </a>
            </li>
            <li class="ul1-li" data-type="0">
                <a href="/index/golden?frompos=720004">
                    <span class="txt">活动<i></i></span>
                </a>
            </li>
            <li class="ul1-li" data-type="0">
                <a href="/docs">
                    <span class="txt">帮助<i></i></span>
                </a>
            </li>            
        </ul>

        <ul class="logining">
                        <li class="ul1-li loginli signlogin">
                <a class="sign">
                    <span class="txt">注册<i></i></span>
                </a>
            </li>
            <span class="boundary1">|</span>
            <li class="ul1-li signlogin">
                <a class="login" href="javascript:;" onclick='showPassportLogin();'>
                    <span class="txt">登录<i></i></span>
                </a>
            </li>
                    </ul>
    </div>
</div>
<script type="text/javascript">
    function logoutuuap(){
        $('#uuapframe2').attr('src', 'https://uuap.baidu.com/logout'); 
        setTimeout(logoutbdu, 500);
    }
    function logoutbdu(){
        $('#uuapframe1').attr('src', '/index/logoutuuap').on("load", function(){
            top.location.href='https://passport.baidu.com/?logout';
        });
    }
</script>

</div>

<!--mod-topbar-mobile0-->
<div class="mod-topbar-mobile0 ">
    <a class="btn-back" href="#"></a>
    <span class="tit0">城市课程表</span>

        <!--mod-login0-->
    <div class="mod-login0" onclick='showPassportLogin();'></div>
    <!--/mod-login0-->
    </div>
<!--/mod-topbar-modbile0-->

<!--layer-sideright0-->
<div class="layer-sideright0">
	<a class="btn-close" href="javascript:;">&times;</a>
	<span class="mod-help0"><a href="/user/kf" target="_blank"></a></span>
	<!--mod-scan1-->
	<div class="mod-scan1">
		<div class="mod-scan1-pic">
		    <span class="scan-pic0"><img src="https://ascdn.bdstatic.com/devplat/static/lib/img/pic-scan0_82a226d.jpg" width="92" height="133" alt="百度移动开放平台二维码" /></span>
		    <span class="scan-pic2"><img src="https://ascdn.bdstatic.com/devplat/static/lib/img/pic-scan2_09782d8.jpg" width="92" height="133" alt="百度移动开放平台二维码" /></span>
		</div>
	</div>
	
	<!--/mod-scan1-->
</div>
<!--/layer-sideright0-->
<div class="rbody">
    <!--mod-nav-main0-->
    <div class="mod-nav-main0">
        <span class="mod-nav-main0-bg"></span>
        <ul class="ul1">
            <li class="ul1-li ul1-li-on" data-type="0">
                <a href="/apps/">
                    <span class="bg"></span>
                    <span class="deco-line"></span>
                    <span class="txt">应用管理</span>
                </a>
                <ul class="ul2">
                    <span class="deco-arrow"></span>
                    <li class="ul2-li">
                        <a href="/apps/">应用管理</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/apps/claimlist">应用认领</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/chart/dailyIndex?layout=download">应用统计</a>
                    </li>
                </ul>
            </li>
            <li class="ul1-li" data-type="1">
                <a href="/task/applist">
                    <span class="bg"></span>
                    <span class="deco-line"></span>
                    <span class="txt">个性化运营</span>
                </a>
                <ul class="ul2">
                    <span class="deco-arrow"></span>
                    <li class="ul2-li">
                        <a href="/task/applist">应用秀</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/task/game_detail">游戏换肤</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/task/keywordindex">搜索词投放</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/appplus/appPlusRouter?action=home">应用+</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/task/abtestindex">A/B 测试</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/union/servicelist">发布优惠</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/task/putin">个性化投放</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/first/">首发合作</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/inapp/">应用内搜索</a>
                    </li>
                    <!--<li class="ul2-li">
                        <a href="/game?action=videomake">视频订制</a>
                    </li>-->
                </ul>
            </li>
            <li class="ul1-li" data-type="2">
                <a href="/spread/index/3">
                    <span class="bg"></span>
                    <span class="deco-line"></span>
                    <span class="txt">应用推广</span>
                </a>
                <ul class="ul2">
                    <span class="deco-arrow"></span>
                    <li class="ul2-li">
                        <a href="/spread/index/3">竞价推广</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/spread/index/4">搜索推广</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/task/agentlist">独家合作(免费)</a>
                    </li>
                    <li class="ul2-li">
                        <a href="http://app.baidu.com/game?action=appspread&m=cps">CPS推广</a>
                    </li>
                    <li class="ul2-li">
                        <a href="http://app.baidu.com/game?action=appspread&m=paysdk">手助支付</a>
                    </li>
                </ul>
            </li>
            <li class="ul1-li" data-type="3">
                <a href="/game?action=appsummary&m=list">
                    <span class="bg"></span>
                    <span class="deco-line"></span>
                    <span class="txt">应用联盟</span>
                </a>
                <ul class="ul2">
                    <span class="deco-arrow"></span>
                    <li class="ul2-li">
                        <a href="/game?action=appsummary&m=list">联运游戏</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/exg/getSummaryData">广告联盟</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/exg/applist">交叉换量</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/union/channelapi">商店联盟</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/exg/reward">打赏服务</a>
                    </li>
                </ul>
            </li>
            <li class="ul1-li" data-type="4">
                <a href="/task/grayPublishList">
                    <span class="bg"></span>
                    <span class="deco-line"></span>
                    <span class="txt">云能力</span>
                </a>
                <ul class="ul2">
                    <span class="deco-arrow"></span>
                    <li class="ul2-li">
                        <a href="/task/grayPublishList">灰度发布</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/apps/upauto">自动更新</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/jiagu/">应用加固</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/apm/">性能服务</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/mtc/">应用测试</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/index/yyintro">语音服务</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/value/sdkservice">SDK集成</a>
                    </li>
                    <li class="ul2-li">
                        <a href="/mota/">行业分析</a>
                    </li>
                    <li class="ul2-li">
                        <a href="https://console.bce.baidu.com/agent/#/agent/bind~token=a6acf3df89e8c6ccac0eae2b3822e4f385cf37a8188ee7beb3e78c8ef7b17bf9&enable_im=1">云服务</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <!--/mod-nav-main0-->
    <!--mnav-->
    <div class="mnav mnav-new" id="mnav">
        <span class="deco0"></span>
        <div class="mnav-in-ie8">
            <div class="mnav-in">
                <a class="mod-logo" href="/">
                    <span class="logo"></span>
                </a>
                <ul class="ul1 generalServer">
                    <!--应用管理-->
                    <div class="ul1-li" data-type="0">
                        <ul class="ul2">
                            <!--应用统计-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:void(0);" title="">
                                        <span class="icon icon-uniE709"></span>
                                        <span class="tit">应用统计</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/chart/dailyIndex?layout=download" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>下载数据</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/chart/dailyIndex?layout=usage" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>基础使用数据</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/chart/dailyIndex?layout=user" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>用户画像数据</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/应用统计-->
                        </ul>
                    </div>
                    <!--/应用管理-->
                    <!--个性化运营-->
                    <div class="ul1-li" data-type="1">
                        <ul class="ul2">
                            <!--官方认证-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="/task/authenticate" title=""><span class="icon icon0 icon-uniE700"></span><span class="tit">官方认证</span><span class="arrow1"></span></a></span>
                            </li> -->
                            <!--/官方认证-->
                            <!--应用+-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:;" title="">
                                        <span class="icon icon5 icon-uniE753"></span>
                                        <span class="tit">应用+</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/appplus/appPlusRouter?action=home" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>合作接入</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/cambrian/appContentShow?action=list" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>内容管理</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/应用+-->
                            <!--应用秀-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/task/applist" title="">
                                        <span class="icon icon0 icon-uniE700"></span>
                                        <span class="tit">应用秀</span>
                                        <span class="arrow1"></span>
                                        <sub>new</sub>
                                    </a>
                                </span>
                            </li>
                            <!--/应用秀-->
                            <!--游戏换肤-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/task/game_detail" title="">
                                        <span class="icon icon0 icon-uniE740"></span>
                                        <span class="tit">游戏换肤</span>
                                        <span class="arrow1"></span>
                                        <sub>new</sub>
                                    </a>
                                </span>
                            </li>
                            <!--/游戏换肤-->
                            <!--发布优惠-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/union/servicelist" title="">
                                        <span class="icon icon4 icon-uniE704"></span>
                                        <span class="tit">发布优惠</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/发布优惠-->
                            <!--搜索词投放-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/task/keywordindex" title="">
                                        <span class="icon icon3 icon-uniE703"></span>
                                        <span class="tit">搜索词投放</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/搜索词投放-->
                            <!--首发-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/first/" title="">
                                        <span class="icon icon8 icon-uniE708"></span>
                                        <span class="tit">首发合作</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/首发-->
                            <!--独家合作-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/task/agentlist" title="">
                                        <span class="icon icon23 icon-uniE723"></span>
                                        <span class="tit">独家合作(免费)</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/独家合作-->
                            <!--应用内搜索-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/inapp/" title="">
                                        <span class="icon icon19 icon-uniE719"></span>
                                        <span class="tit">应用内搜索</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <!-- <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/inapp/selfrecommend#/home" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>内容自荐</a>
                                        </span>
                                    </li>
                                </ul> -->
                            </li>
                            <!--/应用内搜索-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/inapp/selfrecommend#/home" title="">
                                        <span class="icon icon23 icon-uniE850"></span>
                                        <span class="tit">内容自荐</span>
                                        <sub>new</sub>
                                    </a>
                                </span>
                            </li>
                        </ul>
                    </div>
                    <!--/个性化运营-->
                    <!--应用推广-->
                    <div class="ul1-li" data-type="2">
                        <ul class="ul2">
                            <!--百通推广-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/spread/index/3" title="">
                                        <span class="icon icon17 icon-uniE717"></span>
                                        <span class="tit">百通推广</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/百通推广-->
                            <!--dsp推广-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/spread/index/5" title="">
                                        <span class="icon icon17 icon-uniE717"></span>
                                        <span class="tit">dsp推广</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/dsp推广-->
                            <!--信息流推广-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/spread/infoFlow" title="">
                                        <span class="icon icon17 icon-uniE717"></span>
                                        <span class="tit">信息流推广</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/信息流推广-->
                            <!--搜索推广-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/spread/index/4" title="">
                                        <span class="icon icon18 icon-uniE718"></span>
                                        <span class="tit">搜索推广</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/搜索推广-->
                            <!--商店联盟-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:;" title="">
                                        <span class="icon icon6 icon-uniE706"></span>
                                        <span class="tit">商店联盟</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/channelapi" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>渠道管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>概况数据</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/?detaile=1" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>明细数据</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/fininfo" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>财务信息</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/signed" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>合同签约</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/settle/" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>结算账单</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/union/settle/?orderDetaile=1" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>订单明细</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/商店联盟-->
                            <!--广告联盟-->
                                                        <!--/广告联盟-->
                        </ul>
                    </div>
                    <!--/应用推广-->
                    <!--应用联盟-->
                    <div class="ul1-li" data-type="3">
                        <ul class="ul2">
                            <!--联运游戏-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:;" title="">
                                        <span class="icon icon5 icon-uniE705"></span>
                                        <span class="tit">联运游戏</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=appsummary&m=list" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>游戏统计</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=summary" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>交易管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=account" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>财务管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=contract" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>合同管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=appvideoaction" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>视频运营</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=message" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>消息管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=migrate_list" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>三方转签</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/task/life_activity" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>游戏任务</a>
                                        </span>
                                    </li>

                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=activity" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>活动管理</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=evaluation" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>游戏评测</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/game?action=gifts&frompos=1000211" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>游戏礼包</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/联运游戏-->
                            <!--交叉换量--
                            <li class="ul2-li">
                                <span class="ul2-tit"><a href="javascript:;" title=""><span class="icon icon21 icon-uniE721"></span><span class="tit">交叉换量</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/exg/applist" title=""><span class="arrow1"></span><span class="icon"></span>换量推广</a></span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/exg/adtdata" title=""><span class="arrow1"></span><span class="icon"></span>推广效果</a></span>
                                    </li>
                                </ul>
                            </li>
                            <!--/交叉换量-->
                            <!--支付服务--
                            <li class="ul2-li">
                                <span class="ul2-tit"><a href="javascript:;" title=""><span class="icon icon38 icon-uniE738"></span><span class="tit">支付服务</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/game?action=appspread&m=paysdk" title=""><span class="arrow1"></span><span class="icon"></span>申请开通</a></span>
                                    </li>
                                    
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/game?action=payservice" title=""><span class="arrow1"></span><span class="icon"></span>账务管理</a></span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/game?action=hetong_pay_list" title=""><span class="arrow1"></span><span class="icon"></span>合同管理</a></span>
                                    </li>
                                    
                                </ul>
                            </li>
                            <!--/支付服务-->
                        </ul>
                    </div>
                    <!--/应用联盟-->
                    <!--云能力-->
                    <div class="ul1-li" data-type="4">
                        <ul class="ul2">
                            <!--灰度发布-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="/task/grayPublishList" title=""><span class="arrow0"></span><span class="arrow1"></span><span class="icon icon10 icon-uniE710"></span><span class="tit">灰度发布</span><sub>new</sub></a></span>
                            </li> -->
                            <!--/灰度发布-->
                            <!--自动更新-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/apps/upauto" title="">
                                        <span class="icon icon12 icon-uniE712"></span>
                                        <span class="tit">自动更新</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/自动更新-->
                            <!--应用加固-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/jiagu/" title="">
                                        <span class="icon icon11 icon-uniE711"></span>
                                        <span class="tit">安全加固</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/应用加固-->
                            <!--性能服务-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/apm/" title="">
                                        <span class="icon icon14 icon-uniE714"></span>
                                        <span class="tit">性能服务</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/性能服务-->
                            <!--应用测试-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:;" title="">
                                        <span class="icon icon15 icon-uniE715"></span>
                                        <span class="tit">应用测试</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mtc/" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>Native App 测试</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mtc/index/target/tasks" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>管理中心</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/应用测试-->
                            <!--语音服务-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="javascript:;" title=""><span class="icon icon16 icon-uniE716"></span><span class="tit">语音服务</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/index/yyintro" title=""><span class="arrow1"></span><span class="icon"></span>服务介绍</a></span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit"><a href="/yuyin/apps" title=""><span class="arrow1"></span><span class="icon"></span>合作管理</a></span>
                                    </li>
                                </ul>
                            </li> -->
                            <!--/语音服务-->
                            <!--SDK集成-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="/value/sdkservice" title=""><span class="icon icon22 icon-uniE722"></span><span class="tit">SDK集成</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                            </li> -->
                            <!--/SDK集成-->
                            <!--行业分析-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="javascript:;" title="">
                                        <span class="icon icon9 icon-uniE709"></span>
                                        <span class="tit">行业分析</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                                <ul class="ul3">
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mota/" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>行业概览</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mota/index.php/page/industry/market/index" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>市场趋势</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mota/index.php/page/industry/apprank/use" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>应用排行</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mota/index.php/page/industry/device/brand" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>移动设备</a>
                                        </span>
                                    </li>
                                    <li class="ul3-li">
                                        <span class="ul3-tit">
                                            <a href="/mota/index.php/page/industry/crowd/attr" title="">
                                                <span class="arrow1"></span>
                                                <span class="icon"></span>移动用户</a>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <!--/行业分析-->
                            <!--网盘服务-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/wangpan/apply" title="">
                                        <span class="icon icon12 icon-uniE852"></span>
                                        <span class="tit">网盘云服务</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/网盘服务-->
                        </ul>
                    </div>
                    <!--/云能力-->
                    <!--用户账号-->
                    <li class="ul1-li" data-type="5">
                        <ul class="ul2">
                            <!--账号信息-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/pass/" title="">
                                        <span class="icon icon22 icon-uniE722"></span>
                                        <span class="tit">账号信息</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/账号信息-->
                            <!--财务信息-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/exg/fininfo/menu" title="">
                                        <span class="icon icon23 icon-uniE723"></span>
                                        <span class="tit">财务信息</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/财务信息-->
                            <!--修改密码-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="//passport.baidu.com/v2/account/password" title="">
                                        <span class="icon icon24 icon-uniE724"></span>
                                        <span class="tit">修改密码</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/修改密码-->
                            <!--资质信息-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="/pass/qualify" title=""><span class="icon icon26 icon-uniE726"></span><span class="tit">资质信息</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                            </li> -->
                            <!--/资质信息-->
                            <!--积分商城-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/pass/mall" title="">
                                        <span class="icon icon1 icon-uniE701"></span>
                                        <span class="tit">积分商城</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/积分商城-->
                            <!--开发者认证-->
                            <!-- <li class="ul2-li">
                                <span class="ul2-tit"><a href="/pass/privilege" title=""><span class="icon icon31 icon-uniE731"></span><span class="tit">开发者认证</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                            </li> -->
                            <!--/开发者认证-->
                            <!--账号授权-->
                            <li class="ul2-li">
                                    <span class="ul2-tit"><a href="/user/dueros?action=list" title=""><span class="icon icon22 icon-uniE744"></span><span class="tit">账号授权</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                                </li>
                                <!--/账号授权-->
                            <!--应用授权-->
                            <li class="ul2-li">
                                <span class="ul2-tit"><a href="/pass/authorizationlist" title=""><span class="icon icon31 icon-uniE835"></span><span class="tit">应用授权</span><span class="arrow0"></span><span class="arrow1"></span></a></span>
                            </li>
                            <!--/应用授权-->
                        </ul>
                    </li>
                    <!--/用户账号-->
                    <!--通知和问题-->
                    <li class="ul1-li" data-type="6">
                        <ul class="ul2">
                            <!--通知中心-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/pass/msg" title="">
                                        <span class="icon icon36 icon-uniE736"></span>
                                        <span class="tit">通知中心</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/通知中心-->
                            <!--问题与反馈-->
                            <li class="ul2-li">
                                <span class="ul2-tit">
                                    <a href="/pass/faq" title="">
                                        <span class="icon icon37 icon-uniE737"></span>
                                        <span class="tit">问题与反馈</span>
                                        <span class="arrow0"></span>
                                        <span class="arrow1"></span>
                                    </a>
                                </span>
                            </li>
                            <!--/问题与反馈-->
                        </ul>
                    </li>
                    <!--/通知和问题-->
                </ul>


            </div>
        </div>
    </div>
    <!--/mnav-->
    <div class="hidebar"></div>
<script type="text/javascript">
    if (location.href.indexOf('/index.php') > 0) {
        location.href = '/';
    }
</script>
<!--
<div class="slide">
    <div class="brief">已累计为开发者上线：</div>
    inline[../../widget/number/rollnumber.html]
    <div class="join-warper">
        <div class="join-breathe-out"></div>
        <div class="join-breathe-in"></div>
        <a class="join" href="#0" data-href="/apps">加入</a>
    </div>
</div>
-->
<!--wrap-->
<div class="wrap">
    <input type="hidden" id="isIndex" name="isIndex" />
    <!--mod-tab0-->
    <div class="mod-tab0-box">
        <div class="mod-tab0 js-tab0">
            <!--gb-tab-pn-->
            <ul class="gb-tab-pn">
                
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/2305c738f7da6f08b43ca8ef90fd31d7.jpg)" data-key="audio" data-href="/impel/showBanner?mainkey=audio" href="javascript:;"  ></a></span>
                    </li>
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/8289f947f322fbf65b745a878670ecb8.jpg)" data-key="app_DBP" data-href="/impel/showBanner?mainkey=app_DBP" href="javascript:;"  ></a></span>
                    </li>
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/98e9cde60c803783f10abe03189b28eb.jpg)" data-key="appplus" data-href="/impel/showBanner?mainkey=appplus" href="javascript:;"  data-nologin-href="/impel/showBanner?mainkey=appplus"  ></a></span>
                    </li>
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/96f6721b441f3ad285b2cacfc3e921ff.jpeg)" data-key="today_recommend" data-href="/impel/showBanner?mainkey=today_recommend" href="javascript:;"  ></a></span>
                    </li>
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/1ff5a37d1bdc5d4a0b385a54b67ac3b2.jpg)" data-key="appshow_redirect" data-href="/impel/showBanner?mainkey=appshow_redirect" href="javascript:;"  ></a></span>
                    </li>
                                    <li class="tab-con">
                        <span class="pic"><a style="background-image:url(http://gdown.baidu.com/img/banners/64a42b053be55b79607514e764c1ad03.jpg)" data-key="appfirst" data-href="/impel/showBanner?mainkey=appfirst" href="javascript:;"  ></a></span>
                    </li>
                                <!--
                <li class="tab-con">
                    <span class="pic"><a class="nzdpd2015" href="/impel/nzdpd2015" target="_blank"></a></span>
                </li>-->
            </ul>
            <!--/gb-tab-pn--> 
            <!--gb-tab-->
            <div class="gb-tab"></div>
            <!--/gb-tab-->
            <a class="btn-prev" href="javascript:;">&lt;</a>
            <a class="btn-next" href="javascript:;">&gt;</a>
        </div>
    </div>
    <!--/mod-tab0-->
    <div class="mod-tab">
        <div class="notice-container">
            <a id="notice_toggle_left" href="javascript:;"><</a>

            <div class="notice-block">
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966900&idx=1&sn=b92196cde36fd22ec28c82180a24a4a4&chksm=8b85cce6bcf245f0ec45a62876b826eefd4bd02893431e424c20a3efbd47d1679a4d3518db60&token=276966281&lang=zh_CN#rd" title="" target="_blank"><i></i>2018.09.28&nbsp;&nbsp;&nbsp;关于百度移动开放平台国庆放假的通知</a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966891&idx=1&sn=f885081bbaa7e6d27a6203c9742d1ad5&chksm=8b85ccf9bcf245ef8e6ed910ec1f387666e9f526695185f8e3902b3e61460546724e4bebe00b&token=878060643&lang=zh_CN#rd" title="" target="_blank"><i></i>2018.08.31&nbsp;&nbsp;&nbsp;关于更新应用软件API等级的通知</a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966877&idx=1&sn=fa66ad9ed8b243c9a96f986959a48363&chksm=8b85cccfbcf245d9cc7277ff8bdad740f6afe5e2b5643edd6568b4384d1d3903d417f27dfa3d#rd" title="" target="_blank"><i></i>2018.02.28&nbsp;&nbsp;&nbsp;关于直播答题类应用自查通知</a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&amp;mid=2654966853&amp;idx=1&amp;sn=6e368b7e2951a4c398d2f03fdbd715df&amp;chksm=8b85ccd7bcf245c175e94ac73167a3a523335cca21db39a69f9ebae6e915721be77cc4af0b02#rd" title="" target="_blank"><i></i>2017.09.20&nbsp;&nbsp;&nbsp;关于平台名称变更的通知 </a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966850&idx=1&sn=6d377661e975849a3bfb7b7e1fffa876&chksm=8b85ccd0bcf245c6c7e2ffbb498eb9886cec2b527ba7159399a8e4339ca919ab823e0149e9ef#rd" title="" target="_blank"><i></i>2017.09.04&nbsp;&nbsp;&nbsp;关于AppX业务下线的公告</a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966844&idx=1&sn=82a8723c0d1aa977039a7bea213a30e9&chksm=8b85ccaebcf245b8587df27da71ba102b285564b18c9f4d5f07d2b16464a829ce8a968b6b279#rd" title="" target="_blank"><i></i>2017.07.31&nbsp;&nbsp;&nbsp;应用加固升级公告</a>
                </div>
                                <div class="notice">
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966792&idx=1&sn=113c1db4eac4b5a15aead7661bee3d02&chksm=8b85cc9abcf2458c1a630b00f06c1574e60ffb9be4805e56af7790846e9c2afebbc0d13ed78e#rd" title="" target="_blank"><i></i>2017.02.15&nbsp;&nbsp;&nbsp;关于移动游戏提交版号等资质的公告</a>
                </div>
                                <div class="notice">
                    <a href="https://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966834&idx=1&sn=8fe1e2cf7ecf2bcc7c0c4adefa9a3d94&chksm=8b85cca0bcf245b65390d515b8b825bbc73af1f07d297a66595ce7d1dec51050615a3f46d433#rd" title="" target="_blank"><i></i>2017.06.02&nbsp;&nbsp;&nbsp;关于清理直播类软件的公告</a>
                </div>
                                <div class="notice">
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=2654966794&idx=1&sn=381b46fbb487461142f49a1b3b628df5&chksm=8b85cc98bcf2458ec00299bd4b91cadbe0d697ff59d1e6452e7c47e3b0568feb63e7fdf4b669#rd" title="" target="_blank"><i></i>2017.02.21&nbsp;&nbsp;&nbsp;关于移动网络游戏实名制要求的公告</a>
                </div>
                                <div class="notice">
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=507483051&idx=1&sn=d91134c44c71a70d4326867e0760b7af&chksm=0b85cb393cf2422f23a11fe3a7d21f79a18caba984f5ebcb0ce0f6d7e94d5b916546f99d219b&mpshare=1&scene=1&srcid=1014iu698l8b045GoLww7Nvw#wechat_redirect" title="" target="_blank"><i></i>2016.10.14&nbsp;&nbsp;&nbsp;关于落实《移动游戏出版服务管理的通知》等相关工作的公告</a>
                </div>
                                <div class="notice">
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=507482982&idx=1&sn=e8cf51ca0c52c405f42368aca64e764e&scene=19#wechat_redirect" title="" target="_blank"><i></i>2016.08.04&nbsp;&nbsp;&nbsp;移动游戏出版资质(版号)办理指引</a>
                </div>
                                <div class="notice">
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA5NDQxNzQwNQ==&mid=507482793&idx=1&sn=8e23eb7c112340b1f66084e1246a20b2#rd" title="" target="_blank"><i></i>2016.05.25&nbsp;&nbsp;&nbsp;关于文网文和文化部备案的公告</a>
                </div>
                            </div>
            <a id="notice_toggle_right" href="javascript:;">></a>
        </div>

        <div class="tabs-container">

            <a data-href="/apps/center/1" href="javascript:;" class="tab">
                <span class="publish"></span>
                <span class="tab-text">发布应用</span>
            </a>

            <a data-href="/apps/" href="javascript:;" class="tab">
                <span class="apply"></span>
                <span class="tab-text">应用管理</span>
            </a>

            <a data-href="/chart/dailyIndex?layout=download" href="javascript:;" class="tab">
                <span class="data"></span>
                <span class="tab-text">应用统计</span>
            </a>

            <a data-href="/task/applist" href="javascript:;" class="tab">
                <span class="trend"></span>
                <span class="tab-text">运营推广</span>
            </a>

            <a data-href="/spread/index/3" href="javascript:;" class="tab">
                <span class="person"></span>
                <span class="tab-text">商业合作</span>
            </a>
            
        </div>

    </div>


    <div class="mod-spread">

        <div class="spread-title">百度系全流量推广</div>
        <div class="spread-subtitle online">形式丰富，用户认可，帮助您获得曝光分发双收</div>

        <div class="spread-tabs">
            <ul class="tabmenu">
                <li id="pro-1" class="active">
                    <label class="label-1" for="pro-1">应用+</label>
                    <div class="tab-content-1">
                        <div class="iphone-pic tab-pic-1"></div>
                        <div class="content">
                            <div class="title">应用+</div>
                            <div class="subtitle">致力于打造新的移动分发生态服务，借助百度的庞大流量和AI技术，通过内容与服务精准的连接开发者与用户，从而提升App下载量。</div>
                            <a data-href="/appplus/appPlusRouter?action=introduce" href="javascript:;" class="tab-btn btn" data-nologin-href="/appplus/appPlusRouter?action=introduce">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab1-icon1"></div>
                                <div class="icon-app bottom-18 tab1-icon2"></div>
                                <div class="icon-app bottom-18 tab1-icon3"></div>
                                <div class="icon-app bottom-18 tab1-icon4"></div>
                                <div class="icon-app tab1-icon5"></div>
                                <div class="icon-app tab1-icon6"></div>
                                <div class="icon-app tab1-icon7"></div>
                                <div class="icon-app tab1-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-2">
                    <label class="label-2" for="pro-2">应用秀</label>
                    <div class="tab-content-2">
                        <div class="iphone-pic tab-pic-2"></div>
                        <div class="content">
                            <div class="title">应用秀</div>
                            <div class="subtitle">整合应用内部信息，让用户在未下载应用时，就能查阅使用应用的内部服务，从而提升用户对应用的认知度，有效提高应用的下载量和转化率</div>
                            <a href="/impel/showBanner?mainkey=appshow&frompos=200083" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab2-icon1"></div>
                                <div class="icon-app bottom-18 tab2-icon2"></div>
                                <div class="icon-app bottom-18 tab2-icon3"></div>
                                <div class="icon-app bottom-18 tab2-icon4"></div>
                                <div class="icon-app tab2-icon5"></div>
                                <div class="icon-app tab2-icon6"></div>
                                <div class="icon-app tab2-icon7"></div>
                                <div class="icon-app tab2-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-3">
                    <label class="label-3" for="pro-3">游戏换肤</label>
                    <div class="tab-content-3">
                        <div class="iphone-pic tab-pic-3"></div>
                        <div class="content">
                            <div class="title">游戏换肤</div>
                            <div class="subtitle">游戏详情页肤色自定义，还可以添加背景图，展示酷炫游戏画面，让您的游戏更美更吸引人！</div>
                            <a data-href="/task/game_detail" href="javascript:;" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab3-icon1"></div>
                                <div class="icon-app bottom-18 tab3-icon2"></div>
                                <div class="icon-app bottom-18 tab3-icon3"></div>
                                <div class="icon-app bottom-18 tab3-icon4"></div>
                                <div class="icon-app tab3-icon5"></div>
                                <div class="icon-app tab3-icon6"></div>
                                <div class="icon-app tab3-icon7"></div>
                                <div class="icon-app tab3-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-4">
                    <label class="label-4" for="pro-4">搜索词投放</label>
                    <div class="tab-content-4">
                        <div class="iphone-pic tab-pic-4"></div>
                        <div class="content">
                            <div class="title">搜索词投放</div>
                            <div class="subtitle">开放百度手机助手的搜索能力给开发者进行运营，能够更加精准的获取新用户。开发者可以通过进行搜索关键词的配置，提高在搜索结果中的排名，提高下载量。</div>
                            <a href="/impel/showBanner?mainkey=introkeyword&frompos=200076" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab4-icon1"></div>
                                <div class="icon-app bottom-18 tab4-icon2"></div>
                                <div class="icon-app bottom-18 tab4-icon3"></div>
                                <div class="icon-app bottom-18 tab4-icon4"></div>
                                <div class="icon-app tab4-icon5"></div>
                                <div class="icon-app tab4-icon6"></div>
                                <div class="icon-app tab4-icon7"></div>
                                <div class="icon-app tab4-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-5">
                    <label class="label-5" for="pro-5">首发合作</label>
                    <div class="tab-content-5">
                        <div class="iphone-pic tab-pic-5"></div>
                        <div class="content">
                            <div class="title">首发合作</div>
                            <div class="subtitle">申请首发合作，享独一无二国内最大最优质的首发推荐位，一键同步三大分发平台（百度手机助手、91助手、安卓市场），即刻拥有过亿用户群！</div>
                            <a data-href="/first/" href="javascript:;" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab5-icon1"></div>
                                <div class="icon-app bottom-18 tab5-icon2"></div>
                                <div class="icon-app bottom-18 tab5-icon3"></div>
                                <div class="icon-app bottom-18 tab5-icon4"></div>
                                <div class="icon-app tab5-icon5"></div>
                                <div class="icon-app tab5-icon6"></div>
                                <div class="icon-app tab5-icon7"></div>
                                <div class="icon-app tab5-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-6">
                    <label class="label-6" for="pro-6">独家合作</label>
                    <div class="tab-content-6">
                        <div class="iphone-pic tab-pic-6"></div>
                        <div class="content">
                            <div class="title">独家合作</div>
                            <div class="subtitle">申请独家合作，即可获取免费流量推广服务，百度将为独家合作应用免费提供专属推广资源，提升曝光，帮助应用获取更多用户！</div>
                            <a href="/impel/showBanner?mainkey=introagent&frompos=200075" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab6-icon1"></div>
                                <div class="icon-app bottom-18 tab6-icon2"></div>
                                <div class="icon-app bottom-18 tab6-icon3"></div>
                                <div class="icon-app bottom-18 tab6-icon4"></div>
                                <div class="icon-app tab6-icon5"></div>
                                <div class="icon-app tab6-icon6"></div>
                                <div class="icon-app tab6-icon7"></div>
                                <div class="icon-app tab6-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="pro-7">
                    <label class="label-7" for="pro-7">竞价推广</label>
                    <div class="tab-content-7">
                        <div class="iphone-pic tab-pic-7"></div>
                        <div class="content">
                            <div class="title">竞价推广</div>
                            <div class="subtitle">整合百度系流量，覆盖pc端和移动端，对接百度亿级用户。使用百度大数据精准定位，信息准确触达高潜用户，高效获取新用户！</div>
                            <a data-href="/spread/index/3" href="javascript:;" class="tab-btn btn">立即使用</a>
                            <div class="case-title">合作案例：</div>
                            <div class="app">
                                <div class="icon-app bottom-18 tab7-icon1"></div>
                                <div class="icon-app bottom-18 tab7-icon2"></div>
                                <div class="icon-app bottom-18 tab7-icon3"></div>
                                <div class="icon-app bottom-18 tab7-icon4"></div>
                                <div class="icon-app tab7-icon5"></div>
                                <div class="icon-app tab7-icon6"></div>
                                <div class="icon-app tab7-icon7"></div>
                                <div class="icon-app tab7-icon8"></div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="mod-service">
        <div class="service-title">专业成熟的开发者服务</div>
        <div class="service-subtitle">专享定制，开发加速，为你提供一站式服务</div>

        <div class="service-content">
            <div class="service-sec">
                <div class="icon icon-service"></div>
                <div class="title">应用服务</div>
                <div class="tags">
                    <a href="https://mtj.baidu.com/web/sdk/index" target="_blank">移动统计</a>
                    <span class="boundary1"></span>
                    <a data-href="/apps/upauto?frompos=600129" href="javascript:;">自动更新</a>
                    <span class="boundary1"></span>
                    <a data-href="/jiagu/?frompos=800130" href="javascript:;">安全加固</a>
                </div>
                <div class="tags">
                    <a data-href="/apm/" href="javascript:;">性能服务</a>
                    <span class="boundary1"></span>
                    <a href="javascript:;" data-href="/mtc">应用测试</a>
                </div>
            </div>
            <div class="service-sec">
                <div class="icon icon-intelligent"></div>
                <div class="title">人工智能</div>
                <div class="tags">
                    <a href="http://ai.baidu.com/tech/speech/asr" target="_blank">语音识别</a>
                    <span class="boundary1"></span>
                    <a href="http://ai.baidu.com/tech/speech/tts" target="_blank">语音合成</a>
                </div>
                <div class="tags">
                    <a href="http://ai.baidu.com/tech/ocr" target="_blank">文字识别</a>
                    <span class="boundary1"></span>
                    <a href="http://ai.baidu.com/tech/face" target="_blank">人脸识别</a>
                </div>
            </div>
            <div class="service-sec">
                <div class="icon icon-analysis"></div>
                <div class="title">行业分析</div>
                <div class="tags">
                    <a data-href="/mota/" href="javascript:;">行业概览</a>
                    <span class="boundary1"></span>
                    <a data-href="/mota/index.php/page/industry/market/index" href="javascript:;">市场趋势</a>
                    <span class="boundary1"></span>
                    <a data-href="/mota/index.php/page/industry/apprank/use" href="javascript:;">应用排行</a>
                </div>
                <div class="tags">
                    <a data-href="/mota/index.php/page/industry/device/brand" href="javascript:;">移动设备</a>
                    <span class="boundary1"></span>
                    <a data-href="/mota/index.php/page/industry/crowd/attr" href="javascript:;">移动用户</a>
                </div>
            </div>
        </div>
    </div>

    <div class="mod-activity">
        <div class="activity-title">开发者活动</div>
        <div class="activity-subtitle">形式丰富，用户认可，帮助您获得曝光分发双丰收</div>

        <div class="activity-content">

                            <div class="activity-sec">
                    <div class="pic" style="background-image:url(http://gdown.baidu.com/img/banners/a460330a251c3f101d22f54750b6c170.jpg)"></div>
                    <div class="title">城市联盟 合作新生态</div>
                    <div class="content">以城市为单位，通过城市经理人为地区的开发者提供管家式服务。开发者可以通过绿色通道直接申请首发等合作，降低开发者没有首发权限找不到对接人的苦恼；同时城市联盟提供最新的产品合作对接服务，使得开发者可以在产品层面与百度手机助手进行更深层面合作</div>
                    <a class="activity-btn" href="http://app.baidu.com/index/urban_index" title="" target="_blank">立即访问</a>
                </div>
                            <div class="activity-sec">
                    <div class="pic" style="background-image:url(http://gdown.baidu.com/img/banners/f6d995d31c3d522f41f309fb34617d18.jpg)"></div>
                    <div class="title">金熊掌奖 向梦想致敬</div>
                    <div class="content">百度“金熊掌”致力挖掘处于创业初期的、有潜力的开发者团队，提供从渠道资源、市场传播和基础服务相结合的最顶级一站式服务体验，全力帮助创业者解决资金、渠道、宣传等各方面问题，平等成就每一位开发者</div>
                    <a class="activity-btn" href="http://app.baidu.com/index/actgold?frompos=300051" title="" target="_blank">立即访问</a>
                </div>
                            <div class="activity-sec">
                    <div class="pic" style="background-image:url(http://gdown.baidu.com/img/banners/83f8df75ea6c1d251f03c33fe0913b6d.jpg)"></div>
                    <div class="title">往期活动 周六九点档</div>
                    <div class="content">百度手机助手携手众多人气 APP，斥资上亿元打造的黄金品牌活动，直接锁定用户最活跃的时间段——每周六晚九点，帮助开发者提升品牌知名度和影响力，有效提升应用分发量及用户激活，打造“史上最具人气三小时”。</div>
                    <a class="activity-btn" href="http://app.baidu.com/index/act/2?frompos=300053" title="" target="_blank">立即访问</a>
                </div>
                    </div>
        
    </div>
</div>
<!--/wrap-->
<div class="footer">
    <div class="links-container">
        <div class="links">
            <div class="links-title">友情链接</div>

            <div class="links-content">
                <a href="https://www.baidu.com/" target="_blank">百度</a>
                <a href="http://dueros.baidu.com/" target="_blank">DuerOS</a>
                <a href="https://cloud.baidu.com/index.html?track=cp:npinzhuan|pf:pc|pp:left|ci:|pu:495" target="_blank">百度云</a>

            </div>
            <div class="links-content">
                <a href="http://ai.baidu.com/" target="_blank">百度AI开放平台</a>
                <a href="http://iv.baidu.com/" target="_blank">百度智能汽车</a>
                <a href="http://lvshi.baidu.com" target="_blank">百度律师</a>
                <a href="https://www.baidu.com/more/" target="_blank">百度其他产品</a>
            </div>
        </div>

        <div class="links">
            <div class="links-title">相关产品</div>

            <div class="links-content">
                <a href="http://shouji.baidu.com/appsearch" target="_blank">百度手机助手</a>
                <a href="http://www.hiapk.com/" target="_blank">安卓网</a>
                <a href="http://shouji.baidu.com/bdsuite?from=as" target="_blank">91手机助手</a>

            </div>
        </div>

        <div class="links">
            <div class="links-title">联系方式</div>

            <div class="links-content">
                <a href="mailto:ext_opengame-union@baidu.com">游戏联运咨询：ext_opengame-union@baidu.com</a>
                <a href="mailto:ext_app_support@baidu.com">其他问题反馈：ext_app_support@baidu.com</a>
                <a>微信公众号：baidudev2014</a>
                <a>开发者交流qq群：466610184</a>
            </div>
        </div>
        <div class="qr-code-container">
            <div class="qr-code"></div>
            <p>关注百度开发者公众号</p>
        </div>
    </div>

    <div class="declare">
        &copy;2017 Baidu <a href="https://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;<span>|</span>&nbsp;京ICP证030173号
    </div>

    <!-- <div class="declare">
        <a href="mailto:ext_opengame-union@baidu.com">游戏联运咨询：ext_opengame-union@baidu.com</a>&nbsp;&nbsp;
        <a href="mailto:ext_app_support@baidu.com">其他问题反馈：ext_app_support@baidu.com</a>&nbsp;&nbsp;
        联系微信：baidudev2014&nbsp;&nbsp;&nbsp;开发者交流qq群：466610184
    </div>
    <div class="declare">&copy;2017 Baidu <a href="https://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;<span>|</span>&nbsp;京ICP证030173号</div> -->
</div>
<iframe class="iframe-tongji" width="0" height="0" border="0"></iframe>
</body>
<script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/static/pkg/lib_7fbdf1d.js"></script><script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/widget/header/header_index_934347d.js"></script><script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/widget/header/header_autoheight_829967d.js"></script><script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/widget/header/header_wsideh_ddefc98.js"></script><script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/widget/header/header_manage_201607_8942729.js"></script><script type="text/javascript" src="https://ascdn.bdstatic.com/devplat/static/index/index_fd8a04b.js"></script>
<script type="text/javascript">
    // 线上才进行统计
    if(document.domain.toLowerCase() == "app.baidu.com") {
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fe2ee93d5023fa3ad0198e989e39b4a55' type='text/javascript'%3E%3C/script%3E"));
    }
</script>
</html>



<!--14927659620949115914101022-->
<script> var _trace_page_logid = 1492765962; </script><!--14927630700992500746101022-->
<script> var _trace_page_logid = 1492763070; </script>