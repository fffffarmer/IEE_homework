<!DOCTYPE html>
<!--STATUS OK-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="content-type" content="text/html;charset=gbk" />
<meta property="wb:webmaster" content="3aababe5ed22e23c" />
<meta name="referrer" content="always" />
<title>百度知道 - 全球最大中文互动问答平台</title>
<link rel="shortcut icon" href="//www.baidu.com/favicon.ico?t=20171027" type="image/x-icon" />
<link rel="icon" sizes="any" mask href="//www.baidu.com/img/baidu.svg" />

<script>
    window.alogObjectConfig = {
        product: '102',
        page: '102_4', 
        monkey_page: 'zhidao-home',
        speed_page: '4',
        speed: {
            sample: '1'
        },
        monkey: {
            sample: '0.5'
        },
        exception: { 
            sample: '0.5'
        },
        feature: {
            sample: '0.5'
        },
        cus: {
            sample: '0.5',
            custom_metrics: ['c_sbox', 'c_menu', 'c_top']
        },
        csp: {
            sample: '1',
            'default-src': [
                {match: '*bae.baidu.com', target: 'Accept,Warn'},
                {match: '*.baidu.com,*.bdstatic.com,*.bdimg.com,localhost,*.hao123.com,*.hao123img.com', target: 'Accept'},
                {match: /^(127|172|192|10)(\.\d+){3}$/, target: 'Accept'},
                {match: '*', target: 'Accept,Warn'}
            ]
        }
    };
 
    void function(a,b,c,d,e,f,g){a.alogObjectName=e,a[e]=a[e]||function(){(a[e].q=a[e].q||[]).push(arguments)},a[e].l=a[e].l||+new Date,d="https:"===a.location.protocol?"https://fex.bdstatic.com"+d:"http://fex.bdstatic.com"+d;var h=!0;if(a.alogObjectConfig&&a.alogObjectConfig.sample){var i=Math.random();a.alogObjectConfig.rand=i,i>a.alogObjectConfig.sample&&(h=!1)}h&&(f=b.createElement(c),f.async=!0,f.src=d+"?v="+~(new Date/864e5)+~(new Date/864e5),g=b.getElementsByTagName(c)[0],g.parentNode.insertBefore(f,g))}(window,document,"script","/hunter/alog/alog.min.js","alog"),void function(){function a(){}window.PDC={mark:function(a,b){alog("speed.set",a,b||+new Date),alog.fire&&alog.fire("mark")},init:function(a){alog("speed.set","options",a)},view_start:a,tti:a,page_ready:a}}();
    void function(n){var o=!1;n.onerror=function(n,e,t,c){var i=!0;return!e&&/^script error/i.test(n)&&(o?i=!1:o=!0),i&&alog("exception.send","exception",{msg:n,js:e,ln:t,col:c}),!1},alog("exception.on","catch",function(n){alog("exception.send","exception",{msg:n.msg,js:n.path,ln:n.ln,method:n.method,flag:"catch"})})}(window);
</script>

<script>
	!function(document, window){
		var log = {
			list: [],
			host: 'https://' + location.host + '/api/httpscheck',
			log: function(param) {
				var a = [];
		    	for(var k in param) {
		    		a.push(k + '=' + param[k]);
		    	}
		    	var msg = a.join('&');
		    	if(~this.list.indexOf(msg)){
		    		return;
		    	}
		    	this.list.push(msg);
		  		var img = new Image();
		    	var key = '_ik_log_' + (Math.random()*2147483648 ^ 0).toString(36);
		    	window[key] = img;
		    		img.onload = img.onerror = img.onabort = function() {
		        		img.onload = img.onerror = img.onabort = null;
		        		window[key] = null;
			    		img = null;
		    	};
		  		img.src = this.host + '?' + msg;
			}
		};

		function HTTPSWarningLog(){
			this.selector = [
				'link',
				'script',
				'img',
				'embed',
				'iframe'
			];
			this.warningCounter = 0;
			this.init();
		};

		HTTPSWarningLog.prototype = {
			init: function(){
				this.fetch();
			},

			fetch: function(){
				for(var tags = this.selector, i =0, len = tags.length; i < len;i++) {
					this.getTag(tags[i]);
				}
			},

			getTag: function(tag) {
				var domList = document.getElementsByTagName(tag);
				if(!domList.length) {
					return;
				}
				for(var i = 0,len = domList.length;i<len;i++) {
					var el = domList[i];
					var url = el.getAttribute(el.tagName==='LINK' ? 'href' : 'src');
                    if(el.getAttribute('rel') === 'canonical') {
                        continue;
                    }
					if(url && 'https:' === location.protocol && !url.indexOf('http:')){
						this.sendLog(el, el.tagName.toLowerCase(),url);
						this.warningCounter++;
					}
				}
			},
			
			sendLog: function(el, type, url){
				log.log({
					url: location.href,
					wtype: type,
					wurl: url
				});
			}
		};

		function domReady(fn){
		    if(document.addEventListener) {
		        document.addEventListener('DOMContentLoaded', function() {
		            document.removeEventListener('DOMContentLoaded',arguments.callee, false);
		            fn();
		        }, false);
		    }else if(document.attachEvent) {
		        document.attachEvent('onreadystatechange', function() {
		            if(document.readyState == 'complete') {
		                document.detachEvent('onreadystatechange', arguments.callee);
		                fn();
		            }
		        });
		    }
		};

		domReady(function(){
			new HTTPSWarningLog();
			for(var i=1; i<6; i++) {
				!function(i){
					setTimeout(function(){
						new HTTPSWarningLog();
					}, i*i*i*1000);
				}(i);
			}
		});
	}(document, window);
</script>

<meta name="baidu-site-verification" content="tfD6Ctznzp" />
<meta name="description" content="百度知道是由全球最大的中文搜索引擎百度自主研发、基于搜索的互动式知识问答分享平台。用户可以根据自身的需求，有针对性地提出问题；同时，这些答案又将作为搜索结果，满足有相同或类似问题的用户需求。" />

<script type="text/javascript">
			!function(){var n={},t={};n.context=function(n,e){var i=arguments.length;if(i>1)t[n]=e;else if(1==i){if("object"!=typeof n)return t[n];for(var o in n)n.hasOwnProperty(o)&&(t[o]=n[o])}},"F"in window||(window.F=n)}();;
			
            
																																							
			F.context('user', {"isLogin":"","isRealName":"","stoken":"","name":"","imId":"","id":"","euid":"","wealth":"","gradeIndex":"","isMavin":""});
			F.context('user')['internalAdmin'] = null;

							F.context('defaultQuery', '{"title":"","value":""}');
									
			            F.context('isQuality', false);
            F.context('now', 1539181740);
		</script>
<script>F.context('sysTaskAutoInit', 1);</script>


<!--[if lte IE 8]>
<script>
                (function(){
                    var e="abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,figure,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,time,video".split(","),
                    i=e.length;
                    while(i--){document.createElement(e[i])}
                 })();
            </script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/pkg/common.613a3e7.css" /><link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/home/pkg/module.6d2f2dd.css" /><link rel="stylesheet" type="text/css" href="https://iknowpc.bdimg.com/static/common/widget/header-metis/header.4b73688.css" /></head>

<script> alog('speed.set', 'ht', +new Date()); </script>

<body class="layout-center home-search zhidao-index">

<div id="userbar" class="userbar userbar-renew" data="">
<ul class="aside-list">
<li>
<a href="http://www.baidu.com/" class="toindex">百度首页</a>
</li>
<li><a rel="nofollow" alog-alias="usrbar-login" href="javascript:;" id="userbar-login" log="type:2026,pname:account,mod:login,action:show,pos:pop">登录</a></li>
<li><a rel="nofollow" alog-alias="usrbar-reg" id="userbar-reg" href="https://passport.baidu.com/v2/?reg&tpl=ik&color=green&u=" target="_blank">注册</a></li>
<li class="shop-entrance">
<a href="/shop" title="知道商城" log="type:2026,pos:top-right,target:shop-entrance">商城<i class="i-house" style="display: none;"></i></a>
<span class="lucky-try"></span>
</li>
</ul>
</div>


<div class="head-wrap">
<hr class="divider">
<header id="header" class="container">

<div id="search-box" class="search-box-new line">
<ul class="channel grid">
<li><a log="sc_pos:c_baidu" rel="nofollow" href="http://www.baidu.com/">网页</a></li>
<li><a log="sc_pos:c_news" rel="nofollow" href="http://news.baidu.com/">新闻</a></li>
<li><a log="sc_pos:c_tieba" rel="nofollow" href="http://tieba.baidu.com/">贴吧</a></li><li><strong>知道</strong></li><li><a log="sc_pos:c_mp3" rel="nofollow" href="http://music.baidu.com/">音乐</a></li><li><a log="sc_pos:c_pic" rel="nofollow" href="http://image.baidu.com/">图片</a></li>
<li><a log="sc_pos:c_video" rel="nofollow" href="http://v.baidu.com/">视频</a></li><li><a log="sc_pos:c_map" rel="nofollow" href="http://map.baidu.com/">地图</a></li><li><a log="sc_pos:c_doc" rel="nofollow" href="http://wenku.baidu.com/">文库</a></li>
</ul>
<div class="search-block clearfix">
<div class="search-cont clearfix">
<a class="logo" href="/" title="百度知道"></a>
<form action="/search" name="search-form" method="get" id="search-form-new" class="search-form">
<input class="hdi" id="kw" maxlength="256" tabindex="1" size="46" name="word" value="" autocomplete="off" placeholder="" />
<button alog-action="g-search-anwser" type="submit" id="search-btn" hidefocus="true"  tabindex="2" class="btn-global">搜索答案</button>
<a href="#" alog-action="g-i-ask" class="i-ask-link" id="ask-btn-new">我要提问</a>
</form>
</div>
</div>
</div>
<script>
                    // 搜索框可用时间打点
                    alog && alog('speed.set', 'c_sbox', +new Date); alog.fire && alog.fire("mark");
                </script>

</header>
</div>

<div class="nav-menu-container" id="j-nav-menu-container">
<div class="nav-show-control">
<div class="nav-menu-layout">
<div class="nav-menu line">
<div class="nav-menu-content container">
<div class="content-box">
<div class="menu-item menu-item-index">
<a class="menu-title current" href="/">
首页</a>
</div>
<div class="menu-item-box">
<div class="menu-item menu-item-cat">
<a class="menu-title " href="/list?fr=daohang" target="_blank">
问题</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?fr=daohang" target="_blank" target="_blank">
全部问题</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=101&fr=daohang" target="_blank" target="_blank">
经济金融</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=102&fr=daohang" target="_blank" target="_blank">
企业管理</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=103&fr=daohang" target="_blank" target="_blank">
法律法规</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=104&fr=daohang" target="_blank" target="_blank">
社会民生</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=105&fr=daohang" target="_blank" target="_blank">
科学教育</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=106&fr=daohang" target="_blank" target="_blank">
健康生活</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=107&fr=daohang" target="_blank" target="_blank">
体育运动</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=108&fr=daohang" target="_blank" target="_blank">
文化艺术</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=109&fr=daohang" target="_blank" target="_blank">
电子数码</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=110&fr=daohang" target="_blank" target="_blank">
电脑网络</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=111&fr=daohang" target="_blank" target="_blank">
娱乐休闲</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=113&fr=daohang" target="_blank" target="_blank">
行政地区</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=114&fr=daohang" target="_blank" target="_blank">
心理分析</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/list?cid=115&fr=daohang" target="_blank" target="_blank">
医疗卫生</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-lanmu">
<a class="menu-title" href="javascript:;">
精选</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item column-sub-item" href="/special/column?fr=daohang" target="_blank">
知道专栏</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/daily?fr=daohang" target="_blank">
知道日报</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/bigdata/view" target="_blank">
知道大数据</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/culture/index?fr=daohang" target="_blank">
知道非遗</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-user">
<a class="menu-title" href="javascript:;">
用户<div class="menu-title-icon">
<i class="iknow-icons">&#xe715;</i>
</div>
</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-itemline-wp">
<a class="menu-sub-item metis-sub-item" href="/home/partnerhome?fr=daohang" target="_blank">
知道合伙人<div class="menu-title-icon">
<i class="iknow-icons">&#xe715;</i>
</div>
</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/uteam?fr=daohang" target="_blank">
芝麻团</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/user/admin?fr=daohang" target="_blank">
芝麻将</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/daily/authorcenter?fr=daohang" target="_blank">
日报作者</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/misc/nowshowstar?fr=daohang" target="_blank">
知道之星</a>
</li>
<div class="menu-item-user-list">机构合作<div class="line-bar"></div></div>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/opendev?fr=daohang" target="_blank">
开放平台</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/special/view/cooperation?fr=daohang" target="_blank">
品牌合作</a>
</li>
<div class="menu-item-user-list">知道福利<div class="line-bar"></div></div>
<li class="menu-sub-item-wp">
<a class="menu-sub-item" href="/shop?fr=daohang" target="_blank">
财富商城</a>
</li>
</ul>
</div>
</div>
<div class="menu-item menu-item-expert">
<a class="menu-title" href="javascript:;">
特色</a>
<div class="menu-content">
<ul class="menu-sub-list">
<li class="menu-sub-item-wp">
<a class="menu-sub-item menu-sub-item-expert" href="http://jingyan.baidu.com/" target="_blank">
<span class="expert-icon expert-icon-jy"></span>
<span>经验</span>
</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item menu-sub-item-expert" href="https://baobao.baidu.com" target="_blank">
<span class="expert-icon expert-icon-baby"></span>
<span>宝宝知道</span>
</a>
</li>
<li class="menu-sub-item-wp">
<a class="menu-sub-item menu-sub-item-expert" href="https://www.zybang.com" target="_blank">
<span class="expert-icon expert-icon-zuoye"></span>
<span>作业帮</span>
</a>
</li>
</ul>
</div>
</div>
</div>
<div class="menu-right-section">
<ul class="menu-right-list">
<li class="menu-right-list-item zhidao-app">
<a href="/activity/simpleindexact?tplName=nareplace&type=pc" class="menu-right-list-link" target="_blank">
<span class="item-icon">
</span>
<span class="item-name">
手机版</span>
</a>
<span class="right-list-item-devide">
</span>
</li>
<li class="menu-right-list-item user-center">
<a href="/ihome" class="menu-right-list-link" target="_blank">
<span class="item-icon">
</span>
<span class="item-name">
我的知道</span>
</a>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
        // 导航可用时间
        alog && alog('speed.set', 'c_menu', +new Date); alog.fire && alog.fire("mark");
    </script>

<div id="body" class="container">

<div class="banner-wp" style="background-color:#d8cdcc;">
<div class="banner container" data-href="http://zhidao.baidu.com/daily/view?id=142592">
<img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao%2F2018%2F1010%2Ftop.png" class="banner-bg-img">
<div class="banner-left-mask">
</div>
<div class="banner-right-mask">
</div>
<p class="iknow-daily-date">
知道日报&nbsp;10月10日</p>
<p class="banner-daily-info">
<span class="banner-title">
朝鲜人为什么不用汉字了？
</span>
<span class="banner-author">
来自：地球知识局
</span>
</p>
<div class="iknow-daily-collection line">
<ul class="daily-colletion-list line">
<li class="daily-colletion-item line daily-colletion-item-0">
<a class="colletion-item-link" href="http://zhidao.baidu.com/daily/view?id=142849" target="_blank" log="page:home,pos:daily,area:img,index:0">
<img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2018/1010/s1.png" class="colletion-item-pic">
</a>
<span class="item-title-layout">
<span class="colletion-item-title">
<a class="text-value" href="http://zhidao.baidu.com/daily/view?id=142849" target="_blank" log="page:home,pos:daily,area:title,index:0">辟谣这件事有多重要？</a>
</span>
</span>
</li>
<li class="daily-colletion-item line daily-colletion-item-1">
<a class="colletion-item-link" href="http://zhidao.baidu.com/daily/view?id=142898" target="_blank" log="page:home,pos:daily,area:img,index:1">
<img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2018/1010/s2.png" class="colletion-item-pic">
</a>
<span class="item-title-layout">
<span class="colletion-item-title">
<a class="text-value" href="http://zhidao.baidu.com/daily/view?id=142898" target="_blank" log="page:home,pos:daily,area:title,index:1">还不了解自己，却已要做出人生的选择？</a>
</span>
</span>
</li>
<li class="daily-colletion-item line daily-colletion-item-2">
<a class="colletion-item-link" href="http://zhidao.baidu.com/daily/view?id=142741" target="_blank" log="page:home,pos:daily,area:img,index:2">
<img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/zhidaoribao/2018/1010/s3.png" class="colletion-item-pic">
</a>
<span class="item-title-layout">
<span class="colletion-item-title">
<a class="text-value" href="http://zhidao.baidu.com/daily/view?id=142741" target="_blank" log="page:home,pos:daily,area:title,index:2">洗澡先洗头，可能会丧命？</a>
</span>
</span>
</li>
</ul>
<a class="more-daily" href="http://zhidao.baidu.com/daily" target="_blank" title="进入日报首页" log="page:home,pos:more-daily">
</a>
</div>
<div class="slogan-widget">
<div class="slogan-wp">
<h2 class="slogan-title">
<span class="title-content">百度知道</span>
<a href="http://help.baidu.com/question?prod_id=9&class=320" class="iknow-need-know" target="_blank" title="知道须知"></a>
</h2>
<div class="slogan-devide-line">
</div>
<div class="slogan-content">
<div class="not-login-slogan">
<div class="middle-content line">
<p class="slogan-text">
总有一个人知道<br>你问题的答案</p>
<div class="not-login-slogan-bg">
</div>
</div>
<div class="finish-count">
<p class="finish-count-text">解决</p>
<div class="finish-count-num line">
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-comma">
,</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-comma">
,</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
<div class="count-num-item">
<span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span><span class="num-item-scroll">0</span><span class="num-item-scroll">1</span><span class="num-item-scroll">2</span><span class="num-item-scroll">3</span><span class="num-item-scroll">4</span><span class="num-item-scroll">5</span><span class="num-item-scroll">6</span><span class="num-item-scroll">7</span><span class="num-item-scroll">8</span><span class="num-item-scroll">9</span>
</div>
</div>
<p class="finish-count-text">个问题</p>
</div>
<p class="iknow-need-know">
<a href="http://help.baidu.com/question?prod_en=zhidao&class=%C8%EB%C3%C5&id=1000774#知道协议" target="_blank" class="iknow-need-know-link">
知道须知</a>
</p>
<div class="answer-question-section line">
<a href="/new" target="_blank" class="not-login-button-item question-button">
<span class="item-logo question-button-logo"></span>
<span class="item-title">我要提问</span>
</a>
<a href="/browse" target="_blank" class="not-login-button-item answer-button">
<span class="item-logo answer-button-logo"></span>
<span class="item-title">我来回答</span>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
    // dp打点，顶部大头图可用时间
    alog && alog('speed.set', 'c_top', +new Date); alog.fire && alog.fire("mark");
</script>
<style type="text/css">
	.banner-left-mask {
		background: -moz-linear-gradient(left,  rgba(216,205,204,1) 0%, rgba(216,205,204,0) 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(216,205,204,1)), color-stop(100%,rgba(216,205,204,0))); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(left,  rgba(216,205,204,1) 0%,rgba(216,205,204,0) 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(left,  rgba(216,205,204,1) 0%,rgba(216,205,204,0) 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(left,  rgba(216,205,204,1) 0%,rgba(216,205,204,0) 100%); /* IE10+ */
		background: linear-gradient(to right,  rgba(216,205,204,1) 0%,rgba(216,205,204,0) 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d8cdcc', endColorstr='#00d8cdcc',GradientType=1 ); /* IE6-9 */
	}
	.banner-right-mask {
		background: -moz-linear-gradient(left,  rgba(216,205,204,0) 0%, rgba(216,205,204,1) 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(216,205,204,0)), color-stop(100%,rgba(216,205,204,1))); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(left,  rgba(216,205,204,0) 0%,rgba(216,205,204,1) 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(left,  rgba(216,205,204,0) 0%,rgba(216,205,204,1) 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(left,  rgba(216,205,204,0) 0%,rgba(216,205,204,1) 100%); /* IE10+ */
		background: linear-gradient(to right,  rgba(216,205,204,0) 0%,rgba(216,205,204,1) 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00d8cdcc', endColorstr='#d8cdcc',GradientType=1 ); /* IE6-9 */
	}
</style>
<div class="new-three-parts-layout-wp">
<div class="new-three-parts-layout line container">
<div class="hotspot-container">
<div class="hotspot">
<div class="hotspot-tit">
<img src="https://gss0.bdstatic.com/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50/shangcheng%2Fzhuanlantoutu.png" alt="">
</div>
<div class="hotspot-pic">
<div class="hotspot-pic-img">
<a href="https://zhidao.baidu.com/special/view?id=dcc05a24626975510200&entry=home_new_content" target="_blank" log="page:home,pos:hotspot,area:imgTit" title="《肖申克的救赎》能够成为经典背后的原因？"><img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/pai-pc%2FSYW%2Fxiaoshengke.JPG" alt=""></a>
</div>
<div class="hotspot-text">
<a href="https://zhidao.baidu.com/special/view?id=dcc05a24626975510200&entry=home_new_content" target="_blank" log="page:home,pos:hotspot,area:img">《肖申克的救赎》能够成为经典背后的原因？</a>
</div>
</div>
<ul class="hotspot-list">
<li class="hotspot-list-item">
<i class="hotspot-disc"></i>
<a target="_blank" class="hotspot-link" href="https://zhidao.baidu.com/special/view?id=dbc05a24626975510200&entry=home_new_content" log="page:home,pos:hotspot,area:listTit,index:1" title="零基础的人如何自学日语？">零基础的人如何自学日语？</a>
</li>
<li class="hotspot-list-item">
<i class="hotspot-disc"></i>
<a target="_blank" class="hotspot-link" href="https://zhidao.baidu.com/special/view?id=dac05a24626975510200&entry=home_new_content" log="page:home,pos:hotspot,area:listTit,index:2" title="张韶涵还能再爆火一次么？">张韶涵还能再爆火一次么？</a>
</li>
<li class="hotspot-list-item">
<i class="hotspot-disc"></i>
<a target="_blank" class="hotspot-link" href="https://zhidao.baidu.com/special/view?id=d9c05a24626975510200&entry=home_new_content" log="page:home,pos:hotspot,area:listTit,index:3" title="植物奶油和动物奶油的区别是？">植物奶油和动物奶油的区别是？</a>
</li>
</ul>
</div>
</div>
<div class="center-container">
<div class="selected">
<div class="selected-title"><img src="https://iknowpc.bdimg.com/static/home/widget/selected/img/hot-title.036161d.jpg" alt=""></div>
<dl class="selected-top">
<dt class="selected-pic f-18">
<a href="https://zhidao.baidu.com/question/1500483605243013339.html?entry=home_new_content" target="_blank" log="page:home,pos:selected,area:img"><img src="https://gss0.bdstatic.com/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50/redian/1010picture.jpg" alt=""></a>
</dt>
<dd class="selected-con">
<div class="selected-tit f-18">
<a target="_blank" href="https://zhidao.baidu.com/question/1500483605243013339.html?entry=home_new_content" log="page:home,pos:selected,area:imgtitle" title="#卖萌斗图大赛#晒一晒你觉得最萌的表情包">#卖萌斗图大赛#晒一晒你觉得最萌的表情包</a>
</div>
<p class="selected-text">
今天卖萌日，我只买最萌的~快来晒一晒你觉得最萌的表情包，有萌萌哒度熊拿哦
</p>
</dd>
</dl>
<ul class="selected-list">
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/1952072092388486948.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:1" title="今天世界精神卫生日，哪些事让你无比焦虑？">今天世界精神卫生日，哪些事让你无比焦虑？</a>
</li>
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/1952520542140019268.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:2" title="虎牙莉哥账号被封怎么回事？">虎牙莉哥账号被封怎么回事？</a>
</li>
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/397356597984262805.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:3" title="恶心食物也有博物馆，你有哪些讨厌的食物？">恶心食物也有博物馆，你有哪些讨厌的食物？</a>
</li>
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/1772177861410682700.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:4" title="支付宝的中国锦鲤是什么？">支付宝的中国锦鲤是什么？</a>
</li>
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/461292522277627445.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:5" title="“傅恒”被嘲没文化，明星需要有文化吗？">“傅恒”被嘲没文化，明星需要有文化吗？</a>
</li>
<li class="selected-list-item">
<i class="selected-disc"></i>
<a target="_blank" class="selected-link" href="https://zhidao.baidu.com/question/1244483853935135019.html?entry=home_new_content" log="page:home,pos:selected,area:listtitle,index:6" title="2018诺贝尔经济学奖获得者是谁？">2018诺贝尔经济学奖获得者是谁？</a>
</li>
</ul>
</div>
</div>
<div class="announcement-container">
<div class="announcement">
<h3 class="three-parts-layout-title">公告</h3>
<div class="three-parts-layout-content announcement-content line">
<ul class="announcement-list">
<li class="announcement-list-item">
<i class="announcement-disc"></i>
<a target="_blank" class="announcement-link"  href="https://zhidao.baidu.com/activity/university" title="请收下今年最全的大学评价！" log="page:home,area:announcement,index:0">请收下今年最全的大学评价！</a>
</li>
<li class="announcement-list-item">
<i class="announcement-disc"></i>
<a target="_blank" class="announcement-link"  href="http://help.baidu.com/question?prod_id=9&class=320" title="帮助手册：如何使用知道" log="page:home,area:announcement,index:1">帮助手册：如何使用知道</a>
</li>
<li class="announcement-list-item">
<i class="announcement-disc"></i>
<a target="_blank" class="announcement-link"  href="https://zhidao.baidu.com/special/columndetail?id=07005a24706961410000" title="关于身份证办理的那些事 " log="page:home,area:announcement,index:2">关于身份证办理的那些事 </a>
</li>
</ul>
</div>
</div>
<div class="shop">
<h3 class="three-parts-layout-title">活动专区</h3>
<div class="shop-content line">
<a href="https://zhidao.baidu.com/shop/lottery" target="_blank" log="page:home,area:shop,area:img"><img src="https://gss0.bdstatic.com/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50/shangcheng%2Fchoujiang-shouye-280*150.png" alt=""></a>
</div>
</div></div>
</div>
</div>
<script>
	void function(e,t){for(var n=t.getElementsByTagName("img"),a=+new Date,i=[],o=function(){this.removeEventListener&&this.removeEventListener("load",o,!1),i.push({img:this,time:+new Date})},s=0;s< n.length;s++)!function(){var e=n[s];e.addEventListener?!e.complete&&e.addEventListener("load",o,!1):e.attachEvent&&e.attachEvent("onreadystatechange",function(){"complete"==e.readyState&&o.call(e,o)})}();alog("speed.set",{fsItems:i,fs:a})}(window,document);
</script><div class="push-and-product-wp">
<div class="push-and-product line container">
<div class="push-question-container">
<div class="unlogin-push">
<div class="push-title-container line">
<h3 class="push-title">大家都在问</h3>
<p class="using-user-count">
<span class="user-count-num">81935</span>名用户正在答题</p>
<a href="http://zhidao.baidu.com/browse/" class="more-question-link" target="_blank">更多</a>
</div>
<div class="daily-question">
<div class="daily-question-tit">
每日一题<a href="javascript:;" class="refresh-btn"></a>
</div>
<div class="daily-question-ask">
</div>
</div>
<script type="text/template" id="j-daily-question">
	<a href="/question/${data.qid}.html?push=asking&entry=qb_home_new" target="_blank" log="page:home,pos:daily_qustion">
		$${data.title}
	</a>
	<div class="daily-wealth">
		<span class="wealth-disc"></span>${data.score}
	</div>
	<div class="daily-question-btn">
		<a href="/question/${data.qid}.html?push=asking&entry=qb_home_new" target="_blank" log="page:home,pos:daily_qustion">立即抢答</a>
	</div>
</script>
<div class="unlogin-push-content">
<ul class="unlogin-push-qustion-list">
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
2 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="河南工业大学晚上宿舍几点关门？" href="/question/693896563734718124.html?push=asking&entry=qb_home_new" target="_blank">
河南工业大学晚上宿舍几点关门？
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
3 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link"  href="/question/878397811555951132.html?push=asking&entry=qb_home_new" target="_blank">
谁懂高压柜有红包
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
3 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="第一次给女朋友买什么礼物好" href="/question/2058136637295751387.html?push=asking&entry=qb_home_new" target="_blank">
第一次给女朋友买什么礼物好
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
4 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="有5000多，要购买什么品牌的笔记本（游戏本）最好？" href="/question/1436355680755579499.html?push=asking&entry=qb_home_new" target="_blank">
有5000多，要购买什么品牌的笔记本（游戏本）最好？
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
5 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<span class="i-wealth question-score">10</span>
<a class="question-link" title="一个稿件12000字，小红第一天录入了这份稿件的1/6，照这样计算，小红几天可以把这份稿件录完？" href="/question/2058136509805785827.html?push=asking&entry=qb_home_new" target="_blank">
一个稿件12000字，小红第一天录入了这份稿件的1/6，...
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
7 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="我的前任和我分手后谈过很多次恋爱，听说他要订婚，最后还是分手了，然后又谈了一个，我和他五六年没有" href="/question/652908156618881285.html?push=asking&entry=qb_home_new" target="_blank">
我的前任和我分手后谈过很多次恋爱，听说他要订婚，...
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
8 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link"  href="/question/1436355552496036339.html?push=asking&entry=qb_home_new" target="_blank">
2018年执业药师考试答案?
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
9 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="我信用卡差了7万多，没逾期，没钱还，然后我老公用公积金贷款买房行吗，他征信没问题" href="/question/1900113430643599500.html?push=asking&entry=qb_home_new" target="_blank">
我信用卡差了7万多，没逾期，没钱还，然后我老公用公...
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
9 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link"  href="/question/2208072036453490228.html?push=asking&entry=qb_home_new" target="_blank">
怎样学好高中地理？高四了
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
9 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="微信如何找回自己删掉的好友" href="/question/2058136381674548907.html?push=asking&entry=qb_home_new" target="_blank">
微信如何找回自己删掉的好友
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
9 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="我家儿子在电视上玩酷开网络科技有限公司出的奥特曼归来时拿手机用微信扫了电视上的二维码付了一千元" href="/question/693896307408328244.html?push=asking&entry=qb_home_new" target="_blank">
我家儿子在电视上玩酷开网络科技有限公司出的奥特曼...
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
10 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="贷款审批通过了，可以刷10万信用卡吗？" href="/question/2208072036004098188.html?push=asking&entry=qb_home_new" target="_blank">
贷款审批通过了，可以刷10万信用卡吗？
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
10 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="薛之谦说，做人一定要开心，你不会死，就没有什么可以难过的，遇到挫折也要开心，慢慢来，每天把手头的事" href="/question/2058136317801402147.html?push=asking&entry=qb_home_new" target="_blank">
薛之谦说，做人一定要开心，你不会死，就没有什么可...
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<span class="i-wealth question-score">20</span>
<a class="question-link" title="如果我把你惹到暴怒，而你又知道我的致命弱点，你会干什么？" href="/question/1436355424685292139.html?push=asking&entry=qb_home_new" target="_blank">
如果我把你惹到暴怒，而你又知道我的致命弱点，你会...
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="关于x的二次方程（1－2m）x&#178;－2√m+1 x＝1 有两个实数根求m的取值范围（m+1）在根号里" href="/question/878397491549437852.html?push=asking&entry=qb_home_new" target="_blank">
关于x的二次方程（1－2m）x&#178;－2√m+1 x＝1 有两...
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="男朋友因为工作上出了问题，" href="/question/652908028423993925.html?push=asking&entry=qb_home_new" target="_blank">
男朋友因为工作上出了问题，
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link"  href="/question/878397491484373772.html?push=asking&entry=qb_home_new" target="_blank">
打算买老款朗逸
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link" title="磊科 NW336无线USB联通网卡驱动下载后怎么安装" href="/question/693896243342751764.html?push=asking&entry=qb_home_new" target="_blank">
磊科 NW336无线USB联通网卡驱动下载后怎么安装
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<a class="question-link"  href="/question/693896243342609084.html?push=asking&entry=qb_home_new" target="_blank">
买朗逸哪款车型性价比高
</a>
<a href="http://zhidao.baidu.com/s/2011wapadv/index.html?fr=index&tab=1" class="i-from-wap" title="来自手机知道"></a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
<li class="qustion-item line">
<div class="time-line-bg"></div>
<p class="create-time">
11 分钟前
</p>
<div class="question-body line">
<div class="question-body-content">
<span class="i-wealth question-score">20</span>
<a class="question-link"  href="/question/693896243278527164.html?push=asking&entry=qb_home_new" target="_blank">
大四上学期都干些什么？
</a>
</div>
<div class="bottom-line">
</div>
</div>
</li>
</ul></div>
</div>
</div>
<div class="product-container">
<div class="product-show">
<div class="product-layout line">
<div class="product-collection-item" data-index="0">
<div class="product-item line product-zhidaoapp" data-href="http://zhidao.baidu.com/zt/ikapp/?from=new_home">
<div class="left-info">
<p class="product-title">
百度知道</p>
<p class="product-sub-title">
最大中文问答社区</p>
<p class="product-type">
<span class="type-item apple">
</span>
<span class="product-divide-line"></span>
<span class="type-item android">
</span>
</p>
</div>
<div class="right-info">
<div class="product-icon"></div>
<div class="product-icon-qr"></div>
</div>
</div>
</div>
<div class="product-collection-item" data-index="1">
<div class="product-item line product-baobaozhidao" data-href="http://baobao.baidu.com?from=new_home">
<div class="left-info">
<p class="product-title">
宝宝知道</p>
<p class="product-sub-title">
宝宝问题，妈妈知道</p>
<p class="product-type">
<span class="type-item apple">
</span>
<span class="product-divide-line"></span>
<span class="type-item android">
</span>
</p>
</div>
<div class="right-info">
<div class="product-icon"></div>
<div class="product-icon-qr"></div>
</div>
</div>
</div>
<div class="product-collection-item" data-index="2">
<div class="product-item line product-specialworld" data-href="http://zhidao.baidu.com/special/home">
<div class="left-info">
<p class="product-title">
知道多世界</p>
<p class="product-sub-title">
聚集一个主题<br>
融合多元知识</p>
</div>
<div class="right-info">
<div class="product-icon"></div>
<div class="product-icon-qr"></div>
</div>
</div>
</div>
<div class="product-collection-item" data-index="3">
<div class="product-item line product-zuoyebang" data-href="https://www.zybang.com?from=new_home">
<div class="left-info">
<p class="product-title">
作业帮</p>
<p class="product-sub-title">
千万学生都在用</p>
<p class="product-type">
<span class="type-item apple">
</span>
<span class="product-divide-line"></span>
<span class="type-item android">
</span>
</p>
</div>
<div class="right-info">
<div class="product-icon"></div>
<div class="product-icon-qr"></div>
</div>
</div>
</div>
</div>
<div class="product-show-tab">
<span class="show-tab-item show-tab-item-current" data-index="0"></span>
<span class="show-tab-item" data-index="1"></span>
<span class="show-tab-item" data-index="2"></span>
<span class="show-tab-item" data-index="3"></span>
</div>
</div>
</div>
</div>
</div><div class="wgt-zd-user" id="wgt-zd-user">
<div class="container line">
<div class="wgt-zhima grid">
<h2>知道用户</h2>
<div class="info line">
<div class="card user" data-type='user'>
<div class="zhima-star">
</div>
<div class="inner">
<div class="up">
<div class="n-section animate-text">
<div class="innerBox animate-text">
<p class="title">芝麻</p>
<p class="desc">在百度知道中所有贡献知识的用户</p>
</div>
</div><a class="portrait animate" rel="nofollow" href="http://zhidao.baidu.com/s/star/index.html" target="_blank">
<img class="animate user-avatar" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/36d3e58da2e58fac383433323937363538052a.jpg" />
<div class="cover animate">
<img class="animate" src="https://iknowpc.bdimg.com/static/home/widget/zd-user/zhima/img/up-large.018226b.png" />
</div>
</a>
<a class="name" rel="nofollow" href="http://zhidao.baidu.com/s/star/index.html" target="_blank">卢召843297658</a>
<div class="h-section">
<p class="help">Ta帮助的人<span class="">1,218,270</span></p>
<p class="field">擅长<span>百度</span><span>网络运营</span><span>电子商务</span></p>
</div>
</div>
<div class="bottom">
<p class="info ">
已有<span style="color:#ee5e0f;">10,755,991</span>个芝麻</p>
<div class="people">
<div class="innderBox line">
<div class="portrait selected" data-uname="卢召843297658" title="卢召843297658" data-helpnum="1,218,270" data-keyword="百度,网络运营,电子商务" data-index="0" data-encodeUid="36d34069236f25705e79052a">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/36d3e58da2e58fac383433323937363538052a.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="沙漠也长草" title="沙漠也长草" data-helpnum="32,695,334" data-keyword="身份证,时政,法律" data-index="1" data-encodeUid="3a3d4069236f25705e793911">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/3a3de6b299e6bca0e4b99fe995bfe88d893911.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="kook636" title="kook636" data-helpnum="98,131,757" data-keyword="耳机,化妆,护肤" data-index="2" data-encodeUid="b5754069236f25705e79020a">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/b5756b6f6f6b363336020a.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="妙酒" title="妙酒" data-helpnum="971,652,648" data-keyword="理工学科,公交车,烹饪" data-index="3" data-encodeUid="1f434069236f25705e799d01">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/1f43e5a699e985929d01.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="晓寒秋枫" title="晓寒秋枫" data-helpnum="249,102,566" data-keyword="文化艺术,电影" data-index="4" data-encodeUid="68694069236f25705e798409">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/6869e69993e5af92e7a78be69eab8409.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="宇宙外的三道题" title="宇宙外的三道题" data-helpnum="41,774,397" data-keyword="健身,宗教,减肥" data-index="5" data-encodeUid="24b84069236f25705e797e44">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/24b8e5ae87e5ae99e5a496e79a84e4b889e98193e9a2987e44.jpg" />
<div class="cover"></div>
</div>
</div>
</div>
<div class="button-layout">
<a class="button" target="_blank" href="/browse">我要答题</a>
</div>
</div>
</div>
</div>
<div class="card team" data-type='team'>
<div class="inner">
<div class="up">
<div class="n-section animate-text">
<div class="innerBox animate-text">
<p class="title">芝麻团</p>
<p class="desc">由有共同专长、共同兴趣的芝麻组成的团队</p>
</div>
</div>
<a class="portrait animate" rel="nofollow" href="/uteam/view?teamId=36134" target="_blank" log="page:home,pos:zhimateam,area:portrait">
<img class="animate user-avatar" src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D221%2C221%3B/sign=78cc52f5a6345982c5dfed903ec51d9f/c995d143ad4bd1139ce171b351afa40f4bfb0507.jpg" />
<div class="cover animate">
<img class="animate" src="https://iknowpc.bdimg.com/static/home/widget/zd-user/zhima/img/team.34d6e07.png" />
</div>
</a>
<a class="name" rel="nofollow" href="/uteam/view?teamId=36134" target="_blank" log="page:home,pos:zhimateam,area:name">数学辅导团</a>
<div class="h-section">
<p class="help">团队采纳数<span class="">2,705,776</span></p>
<p class="field">擅长<span>数学</span><span>教育</span><span>地理</span></p>
</div>
</div>
<div class="bottom">
<p class="info ">
已有<span style="color:#ee5e0f;">11,309</span>个芝麻团</p>
<div class="people">
<div class="innderBox line">
<div class="portrait selected" data-uname="数学辅导团" title="数学辅导团" data-helpnum="2,705,776" data-keyword="数学,教育,地理" data-team-id="36134">
<img class="user-avatar-small" src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D221%2C221%3B/sign=78cc52f5a6345982c5dfed903ec51d9f/c995d143ad4bd1139ce171b351afa40f4bfb0507.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="体育大百科" title="体育大百科" data-helpnum="244,754" data-keyword="NBA,篮球,足球" data-team-id="66199">
<img class="user-avatar-small" src="https://gss0.baidu.com/9vo3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D450%2C600/sign=754bdb4e33a85edffad9f6277c642515/359b033b5bb5c9eadcb4b1fdd239b6003af3b36d.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="马鸣风萧萧" title="马鸣风萧萧" data-helpnum="1,201,404" data-keyword="历史,文学,古诗词" data-team-id="53035">
<img class="user-avatar-small" src="https://gss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D450%2C600/sign=f9723b538fd4b31cf0699cbfb2e60b49/c9fcc3cec3fdfc0321dac3a8d03f8794a4c2267b.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="星之浩可" title="星之浩可" data-helpnum="2,048,937" data-keyword="美食,电影,歌词" data-team-id="73950">
<img class="user-avatar-small" src="https://gss0.baidu.com/7LsWdDW5_xN3otqbppnN2DJv/album/pic/item/d8f9d72a6059252d5d0ee09f349b033b5bb5b914.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="百度知道顾问团" title="百度知道顾问团" data-helpnum="823,419" data-keyword="北京,地区,上海" data-team-id="39998">
<img class="user-avatar-small" src="https://gss0.baidu.com/7LsWdDW5_xN3otqbppnN2DJv/xiexiaofu945/pic/item/818e56a0de79ad9b1f17a2ff.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="萤火之光" title="萤火之光" data-helpnum="463,027" data-keyword="家庭关系,感情,爱情" data-team-id="82529">
<img class="user-avatar-small" src="https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/album/w%3D1600%3Bq%3D90/sign=73d0643403e93901560289384bdc6f96/f636afc379310a55bc1002e0b54543a9822610e9.jpg" />
<div class="cover"></div>
</div>
</div>
</div>
<div class="button-layout">
<a class="button" target="_blank" href="/uteam/class" log="page:home,pos:zhimateam,area:button">加入团队</a>
</div>
</div>
</div>
</div>
<div class="card admin" data-type='admin'>
<div class="inner">
<div class="up">
<div class="n-section animate-text">
<div class="innerBox animate-text">
<p class="title">芝麻将</p>
<p class="desc">由热心用户组成，官方直接领导的平台管理团队</p>
</div>
</div>
<a class="portrait animate" rel="nofollow" href="/usercenter?uid=28df4069236f25705e79a800" target="_blank">
<img class="animate user-avatar" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/28df6368656e6762616f776169a800.jpg" />
<div class="cover animate">
<img class="animate" src="https://iknowpc.bdimg.com/static/home/widget/zd-user/zhima/img/uadmin.ff903fd.png" />
</div>
</a>
<a class="name" rel="nofollow" href="/usercenter?uid=28df4069236f25705e79a800" target="_blank">chengbaowai</a>
<div class="h-section">
<p class="help">推荐答案数<span class="">7,152</span></p>
<p class="field">擅长<span>生活</span><span>裤子</span><span>服饰</span></p>
</div>
</div>
<div class="bottom">
<p class="info ">
已有<span style="color:#ee5e0f;">7,814</span>个芝麻将</p>
<div class="people">
<div class="innderBox line">
<div class="portrait selected" data-uname="chengbaowai" title="chengbaowai" data-helpnum="7,152" data-keyword="生活,裤子,服饰" data-encodeUid="28df4069236f25705e79a800">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/28df6368656e6762616f776169a800.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="爱笑的图图姐" title="爱笑的图图姐" data-helpnum="19,762" data-keyword="vivo,OPPO,软件" data-encodeUid="d7784069236f25705e79f976">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/d778b0aed0a6b5c4cdbccdbcbde3f976.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="qianyuntea" title="qianyuntea" data-helpnum="569,033" data-keyword="学习,软件,显卡" data-encodeUid="46984069236f25705e799504">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/46987169616e79756e7465619504.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="男儿踏浪" title="男儿踏浪" data-helpnum="1,010,640" data-keyword="生活技巧,生活常识,美食" data-encodeUid="0ab24069236f25705e793605">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/0ab2c4d0b6f9cca4c0cb3605.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="罪不过妖娆" title="罪不过妖娆" data-helpnum="882,362" data-keyword="五金,产业信息,法律" data-encodeUid="588d4069236f25705e792431">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/588dd7efb2bbb9fdd1fde6ac2431.jpg" />
<div class="cover"></div>
</div>
<div class="portrait" data-uname="amidaya" title="amidaya" data-helpnum="7,845" data-keyword="军事,法律,家庭关系" data-encodeUid="12a64069236f25705e795000">
<img class="user-avatar-small" src="https://gss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portrait/item/12a6616d69646179615000.jpg" />
<div class="cover"></div>
</div>
</div>
</div>
<div class="button-layout">
<a class="button" target="_blank" href="http://zhidao.baidu.com/uadmin/apply" log="page:home,pos:zhimaadmin,area:button">申请芝麻将</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="grid-r">
<div class="wgt-promotions" id="wgt-promotions">
<div class="promotions-block" id="imgs-block">
</div>
<div id="site-navigator-back">
</div>
<div id="site-navigator">
</div>
</div>
<div class="wgt-rank">
<div class="head line">
<div class="tab grid-r">
<a rel="nofollow" href="/misc/rank?type=0" class="select" target="_blank">周采纳</a>
<span class="split">|</span>
<a rel="nofollow" href="/misc/rank?type=1" class="not-selected-total" target="_blank">周积分</a>
</div>
排行榜</div>
<div class="tabCnt">
<div class="rank-block week">
<dl>
<dt class="rank rank0 line">
<div class="grid-r">
<span class="ansNum ">2106</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">1</span>
<a rel="nofollow" href="/usercenter?uid=ce524069236f25705e79684d" target="_blank">啊往事知多少</a>
</dt>
<dt class="rank rank1 line">
<div class="grid-r">
<span class="ansNum ">1974</span>
<span class="trend-box"><span class="trend down"></span></span>
</div>
<span class="sort ">2</span>
<a rel="nofollow" href="/usercenter?uid=a7704069236f25705e7951ba" target="_blank">百元大侠</a>
</dt>
<dt class="rank rank2 line">
<div class="grid-r">
<span class="ansNum ">1283</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">3</span>
<a rel="nofollow" href="/usercenter?uid=f8c74069236f25705e79cd33" target="_blank">卖身去打酱油</a>
</dt>
<dt class="rank rank3 line">
<div class="grid-r">
<span class="ansNum ">1178</span>
<span class="trend-box"><span class="trend down"></span></span>
</div>
<span class="sort ">4</span>
<a rel="nofollow" href="/usercenter?uid=72734069236f25705e790ecb" target="_blank">雪泪悔痕2046</a>
</dt>
<dt class="rank rank4 line">
<div class="grid-r">
<span class="ansNum ">1155</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">5</span>
<a rel="nofollow" href="/usercenter?uid=af384069236f25705e79ffa4" target="_blank">買可愛的人</a>
</dt>
<dt class="rank rank5 line">
<div class="grid-r">
<span class="ansNum ">1079</span>
<span class="trend-box"><span class="trend down"></span></span>
</div>
<span class="sort ">6</span>
<a rel="nofollow" href="/usercenter?uid=c04f4069236f25705e793d03" target="_blank">hbqthgwf</a>
</dt>
<dt class="rank rank6 line">
<div class="grid-r">
<span class="ansNum ">1075</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">7</span>
<a rel="nofollow" href="/usercenter?uid=82dd4069236f25705e798d16" target="_blank">繁华有一梦</a>
</dt>
<dt class="rank rank7 line">
<div class="grid-r">
<span class="ansNum ">1061</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">8</span>
<a rel="nofollow" href="/usercenter?uid=28934069236f25705e793aa2" target="_blank">祈福天谴</a>
</dt>
</dl>
</div>
<div class="rank-block total">
<dl>
<dt class="rank rank0 line">
<div class="grid-r">
<span class="ansNum ">35899</span>
<span class="trend-box"><span class="trend down"></span></span>
</div>
<span class="sort ">1</span>
<a rel="nofollow" href="/usercenter?uid=a7704069236f25705e7951ba" target="_blank">百元大侠</a>
</dt>
<dt class="rank rank1 line">
<div class="grid-r">
<span class="ansNum ">34040</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">2</span>
<a rel="nofollow" href="/usercenter?uid=ce524069236f25705e79684d" target="_blank">啊往事知多少</a>
</dt>
<dt class="rank rank2 line">
<div class="grid-r">
<span class="ansNum ">23011</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">3</span>
<a rel="nofollow" href="/usercenter?uid=2e6d4069236f25705e799494" target="_blank">szh887</a>
</dt>
<dt class="rank rank3 line">
<div class="grid-r">
<span class="ansNum ">20795</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">4</span>
<a rel="nofollow" href="/usercenter?uid=f8c74069236f25705e79cd33" target="_blank">卖身去打酱油</a>
</dt>
<dt class="rank rank4 line">
<div class="grid-r">
<span class="ansNum ">19705</span>
<span class="trend-box"><span class="trend down"></span></span>
</div>
<span class="sort ">5</span>
<a rel="nofollow" href="/usercenter?uid=c04f4069236f25705e793d03" target="_blank">hbqthgwf</a>
</dt>
<dt class="rank rank5 line">
<div class="grid-r">
<span class="ansNum ">19045</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">6</span>
<a rel="nofollow" href="/usercenter?uid=82dd4069236f25705e798d16" target="_blank">繁华有一梦</a>
</dt>
<dt class="rank rank6 line">
<div class="grid-r">
<span class="ansNum ">18170</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">7</span>
<a rel="nofollow" href="/usercenter?uid=6cc14069236f25705e7920b0" target="_blank">射手数码大神</a>
</dt>
<dt class="rank rank7 line">
<div class="grid-r">
<span class="ansNum ">18138</span>
<span class="trend-box"><span class="trend up"></span></span>
</div>
<span class="sort ">8</span>
<a rel="nofollow" href="/usercenter?uid=bbd04069236f25705e791a3a" target="_blank">阿元585</a>
</dt>
</dl>
</div>
</div>
</div>
</div>
</div>
</div><div class="wgt-pgc container line" id="wgt-pgc">
<div class="wgt-mavin grid">
<div class="head line">
<div class="head-r grid-r">
<span class="number" id="mavin-refresh">
<i class="animate hide">&nbsp;&nbsp;&nbsp;</i>
<i class="static">&nbsp;&nbsp;&nbsp;</i>
换一换</span>
<span class="home-split"></span>
<a href="/home/partnerhome" target="_blank">更多</a></div><span class="title">知道合伙人</span>
<span class="number"><em>13</em>个领域</span>
<span class="number"><em>11,114</em>个行家</span>
</div>
<div class="list">
<script id="t:mavin-tpl" type="text/html">
			<#for ( var i = 0; i < list.length; i++ ) {#>
                <div class="mavin-item<#if(i == list.length-1){#> last<#}#>">
                	<div class="ask">
                		<a href="/question/<#=list[i].qid#>.html" target="_blank"><#=list[i].title#></a>
                	</div>
                	<a class="info" href="/hangjia/profile/<#=list[i].uname#>" target="_blank">
                		<div class="info-inner">
	                		<div class="portrait">
	                			<img src="<#-__2ssl__(list[i].picUrl)#>" />
	                			<div class="cover"></div>
	                		</div>
	                		<p class="name"><#=list[i].name#></p>
		                	<p class="field">擅长领域：<#=list[i].field#></p>
		                </div>
                	</a>
                </div>
            <#}#>
		</script>
</div>
</div>
<style type="text/css">
    .mainQues .videoPic{
        background-image: url(https://gss0.baidu.com/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50/shipin%2Fshoujichongdian.png);
    }
    .questions .videoPic1{
    	background-image: url(https://gss0.baidu.com/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50/shipin%2Fzhibi.png);
    }
    .questions .videoPic2{
    	background-image: url(https://gss0.baidu.com/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50/shipin%2Fshicai.png);
    }
</style>
<div class="wgt-videoQuesAsk grid">
<div class="head line">
<span class="title">视频专区</span>
</div>
<div class="list">
<div class="videoQuesAsk-left">
<div class="askContainer">
<div class="mainQues">
<a href="javascript:void(0)" log="page:home,pos:videoQues,area:bigPicTit,index:1" data-url="http://zhidao.baidu.com/feed/video/detail?vid=49005a246b6f6c500000">
<div class="videoPic"></div>
<div class="bg"></div>
<div class="askTitle">
<span class="title">手机充电有哪些常见误区？</span>
<span class="time">03:21</span>
<span class="detail">在日常生活中我们不难发现，手机在用了一段时间后，电池就会变得，，，，非常不耐用。</span>
<img src="https://iknowpc.bdimg.com/static/home/widget/pgc/videoQuesAsk/img/videoBtn.ad24c99.png" class="btn">
</div>
</a>
</div>
<div class="question">
<a href="javascript:void(0)" log="page:home,pos:videoQues,area:textTit,index:2" data-url="http://zhidao.baidu.com/feed/video/detail?vid=e0025a246b6f6c500000" class="title">如何使用公积金？</a>
<span class="time">01:00</span>
</div>
<div class="question">
<a href="javascript:void(0)" log="page:home,pos:videoQues,area:textTit,index:3" data-url="http://zhidao.baidu.com/feed/video/detail?vid=e5025a246b6f6c500000" class="title">异地恋我们应该怎么谈？</a>
<span class="time">01:00</span>
</div>
</div>
</div>
<div class="videoQuesAsk-right">
<div class="questions">
<a href="javascript:void(0)" log="page:home,pos:videoQues,area:smallPicTit,index:4" data-url="http://zhidao.baidu.com/feed/video/detail?vid=84035a246b6f6c500000">
<div class="videoPic1"></div>
<div class="bg"></div>
<img src="https://iknowpc.bdimg.com/static/home/widget/pgc/videoQuesAsk/img/videoBtn.ad24c99.png" class="btn">
</a>
</div>
<div class="small-title">
<span class="title">为啥北方人爱用纸币，南方人爱用硬币？</span>
<span class="time">03:01</span>
</div>
<div class="questions">
<a href="javascript:void(0)" log="page:home,pos:videoQues,area:smallPicTit,index:5" data-url="http://zhidao.baidu.com/feed/video/detail?vid=2e015a246b6f6c500000">
<div class="videoPic2"></div>
<div class="bg"></div>
<img src="https://iknowpc.bdimg.com/static/home/widget/pgc/videoQuesAsk/img/videoBtn.ad24c99.png" class="btn">
</a>
</div>
<div class="small-title">
<span class="title">中国人怎么什么都吃？</span>
<span class="time">02:28</span>
</div>
</div>
</div>
</div>
</div>
<div class="wgt-class container">
<div class="class-box wgt-carousel-wrap">
<script id="t:class-tpl" type="text/html">
			<#for ( var i = 0; i < list.length; i++ ) {#>
                <div class="class-item <#if( i == list.length-1 ){#> last<#}else{#> line-right<#}#>">
                	<div class="title line">
                		<a href="/list?cid=<#=list[i].id#>" target="_blank"><img src="<#-__2ssl__(list[i].src)#>" class="grid" /></a>
                		<a class="txt-show" href="/list?cid=<#=list[i].id#>" target="_blank"><#=list[i].name#></a>
                	</div>
                	<div class="list line">
	                	<#for( var x = 0; x < list[i].fields.length; x++ ){#>
	                		<a href="/list?cid=<#=list[i].fields[x].id#>" target="_blank"><span><#=list[i].fields[x].name#></span></a>
						<#}#>
                	</div>
                </div>
            <#}#>
		</script>
</div>
</div>
<div class="wgt-ads container line" id="wgt-ads">
<div style="height: 90px; width: 729px; overflow:hidden;margin-top: 20px;float: left;">
<script src="//dup.baidustatic.com/js/ds.js"></script>
<script>
    (function() {
        var s = "_" + Math.random().toString(36).slice(2);
        document.write('<div id="' + s + '"></div>');
        (window.slotbydup=window.slotbydup || []).push({
            id: '2575373',
            container: s,
            size: '728,90',
            display: 'inlay-fix'
        });
    })();
</script>
</div>
</div>

</div>


<div class="wgt-footer-new">
<div class="footer-wp">
<ul class="footer-list clearfix">
<li class="footer-list-item footer-list-guide">
<div class="footer-title"><span class="icon-guide"></span>新手帮助</div>
<ul class="footer-link clearfix">
<li><a href="http://help.baidu.com/question?prod_en=zhidao&class=320&id=1525" target="_blank">如何答题</a></li>
<li><a href="http://help.baidu.com/question?prod_id=9&class=320&id=1526" target="_blank">获取采纳</a></li>
<li><a href="http://help.baidu.com/question?prod_id=9&class=337&id=1513" target="_blank">使用财富值</a></li>
</ul>
</li>
<li class="footer-list-item footer-list-intro">
<div class="footer-title"><span class="icon-intro"></span>玩法介绍</div>
<ul class="footer-link clearfix">
<li><a href="/shop" target="_blank">知道商城</a></li>
<li><a href="http://zhidao.baidu.com/pcs/zhimatuan/index.html" target="_blank">知道团队</a></li>
<li><a href="/home/partnerhome" target="_blank">合伙人认证</a></li>
<li><a href="http://zhidao.baidu.com/s/hi-quality/index.html" target="_blank">高质量问答</a></li>
</ul>
</li>
<li class="footer-list-item footer-list-sug">
<div class="user-tip" id="js-footer-user-tip" style="display: none;">
<p class="title">您的帐号状态正常</p>
<p class="desc">感谢您对我们的支持</p>
</div>
<div class="footer-title"><span class="icon-sug"></span>投诉建议</div>
<ul class="footer-link clearfix">
<li><a href="javascript:;" log="module:common,action:click,area:footer_feedback" target="_blank" id="footer-feedback">意见反馈</a></li>
<li><a href="/misc/appeal" log="module:common,action:click,area:footer_appeal" target="_blank" id="js-footer-appeal">账号申诉</a></li>
<li><a href="http://ikefu.baidu.com/web/zhishisousuo#" log="module:common,action:click,area:footer_consult" target="_blank">智能咨询</a></li>
</ul>
</li>
</ul>
</div>
<div class="footer-new">
<p class="jt1128">
京ICP证030173号-1&nbsp;&nbsp;&nbsp;京网文【2013】0934-983号&nbsp;&nbsp;&nbsp;&nbsp;        &copy;2018Baidu&nbsp;&nbsp;<a rel="nofollow" href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="http://help.baidu.com/question?prod_id=9&class=325&id=2760" target="_blank">知道协议</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="/special/view/cooperation" target="_blank">百度知道品牌合作</a>
</p>
</div>
</div>





<script>
    void function(a,b,c,d,e,f){function g(b){a.attachEvent?a.attachEvent("onload",b,!1):a.addEventListener&&a.addEventListener("load",b)}function h(a,c,d){d=d||15;var e=new Date;e.setTime((new Date).getTime()+1e3*d),b.cookie=a+"="+escape(c)+";path=/;expires="+e.toGMTString()}function i(a){var c=b.cookie.match(new RegExp("(^| )"+a+"=([^;]*)(;|$)"));return null!=c?unescape(c[2]):null}function j(){var a=i("PMS_JT");if(a){h("PMS_JT","",-1);try{a=a.match(/{["']s["']:(\d+),["']r["']:["']([\s\S]+)["']}/),a=a&&a[1]&&a[2]?{s:parseInt(a[1]),r:a[2]}:{}}catch(c){a={}}a.r&&b.referrer.replace(/#.*/,"")!=a.r||alog("speed.set","wt",a.s)}}if(a.alogObjectConfig){var k=a.alogObjectConfig.sample,l=a.alogObjectConfig.rand;d="https:"===a.location.protocol?"https://fex.bdstatic.com"+d:"http://fex.bdstatic.com"+d,k&&l&&l>k||(g(function(){alog("speed.set","lt",+new Date),e=b.createElement(c),e.async=!0,e.src=d+"?v="+~(new Date/864e5)+~(new Date/864e5),f=b.getElementsByTagName(c)[0],f.parentNode.insertBefore(e,f)}),j())}}(window,document,"script","/hunter/alog/dp.min.js");
    </script>

<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "https://hm.baidu.com/hm.js?6859ce5aaf00fb00387e6434e4fcc925";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
			</script>

</body><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/lib/mod.75d1f98.js"></script><script type="text/javascript">(window.__IKNOW_GLOBAL__ || window).require.resourceMap({"res":{"common:widget\/lib\/jquery\/jquery.origin.js":{"pkg":"common:p3"},"common:widget\/js\/util\/https\/https.js":{"pkg":"common:p6"},"common:widget\/bottom-ask\/bottom-ask.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/util\/log\/log.js"]},"common:widget\/css\/fonts\/iconfont.min.js":{"pkg":"common:p0"},"common:widget\/footer-new\/footer-new.js":{"pkg":"common:p0","deps":["common:widget\/lib\/jquery\/jquery.js","common:widget\/js\/util\/event\/event.js"]},"common:widget\/footer\/footer.js":{"pkg":"common:p0"},"common:widget\/header-metis\/header.js":{"pkg":"common:p0","deps":["common:widget\/lib\/jquery\/jquery.js","common:widget\/js\/ui\/dialog\/dialog.js","common:widget\/js\/util\/template\/template.js","common:widget\/js\/ui\/scrollbar-new\/scrollbar-new.js","common:widget\/js\/util\/store\/store.js"]},"common:widget\/menu\/menu.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/log\/log.js"]},"common:widget\/search-box-new\/search-box-new.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/ui\/suggestion-new\/suggestion-new.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/util\/form\/form.js","common:widget\/js\/util\/log\/log.js","common:widget\/js\/ui\/dialog\/dialog.js","common:widget\/lib\/jquery.placeholder\/jquery.placeholder.js"]},"common:widget\/userbar-renew\/userbar-renew.js":{"pkg":"common:p0","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/js\/util\/event\/event.js","common:widget\/js\/logic\/login\/login.js","common:widget\/js\/util\/log\/log.js","common:widget\/js\/util\/store\/store.js"]},"home:widget\/daily-question\/daily-question.js":{"pkg":"home:p1","deps":["common:widget\/js\/util\/tangram\/tangram.js","common:widget\/lib\/juicer\/juicer.js","common:widget\/js\/util\/log\/log.js"]}},"pkg":{"common:p0":{"url":"https:\/\/iknowpc.bdimg.com\/static\/common\/pkg\/more.99de797.js","has":["common:widget\/bottom-ask\/bottom-ask.js","common:widget\/css\/fonts\/iconfont.min.js","common:widget\/footer-new\/footer-new.js","common:widget\/footer\/footer.js","common:widget\/header-metis\/header.js","common:widget\/menu\/menu.js","common:widget\/search-box-new\/search-box-new.js","common:widget\/userbar-renew\/userbar-renew.js"]}}});</script><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/lib.33719ed.js"></script><script type="text/javascript" src="https://iknowpc.bdimg.com/static/common/pkg/commonjs.8339909.js"></script><script type="text/javascript" src="https://iknowpc.bdimg.com/static/home/pkg/module.5a7b443.js"></script><script type="text/javascript">
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/userbar-renew/userbar-renew']);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/search-box-new/search-box-new']);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['common:widget/menu/menu'], function(menu){
    	menu.init();
    });
    // 导航menu可用时间打点
    alog && alog('speed.set', 'c_menu', +new Date); alog.fire && alog.fire("mark");
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    F.context('signInTime',{
        year: '2018',
        month: '10',
        day: '10'
    });
    F.context('realTimeData',{"finishCount":"536461135","onlineUserCount":"81935","onlineDoctorCount":"17928","zhimaCount":"10755991","partnerCount":"33211","teamCount":"11309","uadminCount":"7814","mavinCount":"11114"});

	require.async(['home:widget/slogan/slogan'],function(slogan){
		slogan.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	F.context('cmsInfo',{"announcement":{"notice":[{"title":"\u8bf7\u6536\u4e0b\u4eca\u5e74\u6700\u5168\u7684\u5927\u5b66\u8bc4\u4ef7\uff01","url":"https:\/\/zhidao.baidu.com\/activity\/university","isNew":"0","isRecommend":"0"},{"title":"\u5e2e\u52a9\u624b\u518c\uff1a\u5982\u4f55\u4f7f\u7528\u77e5\u9053","url":"http:\/\/help.baidu.com\/question?prod_id=9&class=320","isNew":"0","isRecommend":"0"},{"title":"\u5173\u4e8e\u8eab\u4efd\u8bc1\u529e\u7406\u7684\u90a3\u4e9b\u4e8b ","url":"https:\/\/zhidao.baidu.com\/special\/columndetail?id=07005a24706961410000","isNew":"0","isRecommend":""}]},"banner":{"bannerList":[{"title":"\u671d\u9c9c\u4eba\u4e3a\u4ec0\u4e48\u4e0d\u7528\u6c49\u5b57\u4e86\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1010%2Ftop.png","bgColor1":"d8cdcc","bgColor2":"216,205,204","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142592","author":"\u5730\u7403\u77e5\u8bc6\u5c40","month":"10","day":"10"},{"title":"\u8d2b\u6c11\u7a9f\u5c0f\u516c\u4e3b\uff1a\u72ec\u7acb\u53c8\u9a84\u50b2\uff0c\u7cbe\u81f4\u4e14\u8d2b\u7a77","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1009%2Ftop.png","bgColor1":"becce7","bgColor2":"190,204,231","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142409","author":"KnowYourself","month":"10","day":"09"},{"title":"\u5fb7\u56fd\u3001\u7f8e\u56fd\u3001\u65e5\u672c\u7684\u5047\u671f\u771f\u7684\u6bd4\u4e2d\u56fd\u957f\u4e48\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1008%2Ftop.png","bgColor1":"c6b7a5","bgColor2":"198,183,165","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142596","author":"\u5730\u7403\u77e5\u8bc6\u5c40","month":"10","day":"08"},{"title":"\u4e00\u5206\u949f\u5403\u900f\u4e2d\u56fd\u91d1\u878d\u673a\u6784\u4f53\u7cfb","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1007%2Ftop.png","bgColor1":"030304","bgColor2":"3,3,4","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=139821","author":"\u56fe\u89e3\u91d1\u878d","month":"10","day":"07"},{"title":"\u4e3a\u4ec0\u4e48\u90fd\u6015\u4eba\u6c11\u5e01\"\u78347\"\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1006%2Ftop.png","bgColor1":"A8C1AB","bgColor2":"168,193,171","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=141632","author":"\u56fe\u89e3\u91d1\u878d","month":"10","day":"06"},{"title":"\u4e70\u4e1c\u897f\u80fd\u51cf\u538b\uff0c\u4f46\u4e0d\u8981\u6210\u4e3a\u201c\u5f3a\u8feb\u6027\u8d2d\u7269\u8005\u201d","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1005%2Ftop.png","bgColor1":"d0cec2","bgColor2":"208,206,194","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142465","author":"KnowYourself","month":"10","day":"05"},{"title":"\u4e3a\u4ec0\u4e48\u4e2d\u56fd\u57ce\u5e02\u90fd\u60f3\u8981\u4e00\u5ea7\u8d85\u5927\u673a\u573a\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1004%2Ftop.png","bgColor1":"8b7e7e","bgColor2":"139,126,126","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142339","author":"\u5730\u7403\u77e5\u8bc6\u5c40","month":"10","day":"04"},{"title":"\u65e5\u672c\u4eba\u53c8\u5f97\u8bfa\u5956\u4e86\uff0c\u5947\u602a\u5417\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1003%2Ftop.png","bgColor1":"8a724e","bgColor2":"138,114,78","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142444","author":"\u4e2d\u56fd\u79d1\u666e\u535a\u89c8","month":"10","day":"03"},{"title":"\u7172\u8033\u673a\u5230\u5e95\u6709\u6ca1\u6709\u7528\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1002%2Ftop.png","bgColor1":"b8bcc2","bgColor2":"184,188,194","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142300","author":"\u516c\u8def\u5546\u5e97","month":"10","day":"02"},{"title":"\u72d7\u6bd4\u72ee\u5b50\u5927\uff0c\u718a\u8d5b\u4e24\u5c42\u697c\uff0c\u767e\u4e07\u5e74\u524d\u770b\u5730\u7403\u2014\u2014\u53ef\u6015\uff01","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao%2F2018%2F1001%2Ftop.png","bgColor1":"f7f7f9","bgColor2":"247,247,249","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=140886","author":"\u5730\u7403\u77e5\u8bc6\u5c40","month":"10","day":"01"}],"bannerDailyList":[{"title":"\u8f9f\u8c23\u8fd9\u4ef6\u4e8b\u6709\u591a\u91cd\u8981\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1010\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142849","author":"","month":"10","day":"10"},{"title":"\u8fd8\u4e0d\u4e86\u89e3\u81ea\u5df1\uff0c\u5374\u5df2\u8981\u505a\u51fa\u4eba\u751f\u7684\u9009\u62e9\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1010\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142898","author":"","month":"10","day":"10"},{"title":"\u6d17\u6fa1\u5148\u6d17\u5934\uff0c\u53ef\u80fd\u4f1a\u4e27\u547d\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1010\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142741","author":"","month":"10","day":"10"},{"title":"\u4e00\u4e07\u4e2a\u5973\u5b69\u5728\u8fd9\u91cc\uff0c\u7b49\u5f85\u53bb\u5750\u7262\u7684\u7537\u53cb\u5f52\u6765","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1009\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142301","author":"","month":"10","day":"09"},{"title":"\u8bf7\u95ee\u653e\u751f\u77ff\u6cc9\u6c34\u53c8\u662f\u4ec0\u4e48\u9a9a\u64cd\u4f5c","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1009\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142228","author":"","month":"10","day":"09"},{"title":"\u690d\u7269\u88ab\u9a8230\u5929\u4f1a\u67af\u6b7b\uff1f\u8fd8\u6709\u89c6\u9891\u6709\u771f\u76f8\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1009\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142731","author":"","month":"10","day":"09"},{"title":"\u51e0\u5343\u5e74\u524d\u7684\u53e4\u4ee3\u5546\u4e1a\u5c31\u6ca1\u6709\u5e7f\u544a\u5417\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1008\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142576","author":"","month":"10","day":"08"},{"title":"\u659c\u6760\u4eba\u751f\uff1a\u5f88\u591a\u4eba\u90fd\u9009\u62e9\u66f4\u591a\uff0c\u4e00\u5c0f\u90e8\u5206\u4eba\u80fd\u627f\u62c5\u66f4\u591a","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1008\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142468","author":"","month":"10","day":"08"},{"title":"\u82f1\u56fd\u4eba\u5728\u4e91\u5357\u5c45\u7136\u7559\u4e0b\u4e86\u8fd9\u4e9b\uff0c\u8c01\u4e5f\u60f3\u4e0d\u5230","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1008\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142639","author":"","month":"10","day":"08"},{"title":"\u4e0a\u6d77\u7684\u516c\u5171\u4ea4\u901a\u89c4\u5212\u5f97\u5230\u5e95\u6709\u591a\u5751\u7239\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1007\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=139244","author":"","month":"10","day":"07"},{"title":"\u91d1\u94b1\u5230\u5e95\u5bf9\u6211\u4eec\u505a\u4e86\u4e9b\u4ec0\u4e48\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1007\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142469","author":"","month":"10","day":"07"},{"title":"\u571f\u8457\u4eba\u7b2c\u4e00\u6b21\u662f\u600e\u4e48\u5230\u6fb3\u5927\u5229\u4e9a\u7684\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1007\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142238","author":"","month":"10","day":"07"},{"title":"\u8fd8\u6709\u7231\u60c5\u5417\uff1f\u5c0f\u5b69\u5b50\u624d\u8bf4\u559c\u6b22\uff0c\u6210\u5e74\u4eba\u53ea\u8bb2\u5206\u5bf8","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1006\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142402","author":"","month":"10","day":"06"},{"title":"\u80d6\u662f\u56e0\u4e3a\u5403\u5f97\u591a\uff0c\u5403\u5f97\u591a\u662f\u56e0\u4e3a\u80d6?","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1006\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142417","author":"","month":"10","day":"06"},{"title":"\u5b9a\u5411\u8fdb\u5316\u51ed\u4ec0\u4e48\u62ff\u4e0b2018\u5e74\u8bfa\u8d1d\u5c14\u5316\u5b66\u5956\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1006\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142552","author":"","month":"10","day":"06"},{"title":"\u539f\u6765\u5148\u77e5\u7684\u540e\u4ee3\u624d\u662f\u6700\u7126\u8651\u7684\u963f\u62c9\u4f2f\u4eba","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1005\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=139566","author":"","month":"10","day":"05"},{"title":"\u79ef\u6781\u5e9f\u4eba\uff1a\u603b\u89c9\u5f97\u7406\u8bba\u4e0a\u7684\u81ea\u5df1\u66f4\u5389\u5bb3","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1005\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142412","author":"","month":"10","day":"05"},{"title":"\u7f8e\u56fd\u7684\u9ed1\u4eba\u4e3a\u4ec0\u4e48\u4e0d\u9ed1\u5462\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1005\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142083","author":"","month":"10","day":"05"},{"title":"\u4e0a\u6d77\u6bd4\u5176\u4ed6\u4e16\u754c\u6027\u57ce\u5e02\u5dee\u5728\u4ec0\u4e48\u5730\u65b9\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1004\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=141740","author":"","month":"10","day":"04"},{"title":"\u8fd9\u4e9b\u6f5c\u4f0f\u7684\u6d88\u8d39\u8d37\uff0c\u6b63\u5728\u6084\u6084\u8ba9\u4f60\u80cc\u4e0a\u503a\u52a1\uff01","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1004\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=141750","author":"","month":"10","day":"04"},{"title":"\u54ee\u5598\u4e0d\u80fd\u6cbb\u6108\uff0c\u5374\u53ef\u4ee5\u63a7\u5236","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1004\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=139139","author":"","month":"10","day":"04"},{"title":"\u764c\u75c7\u80fd\u6cbb\u4e86\uff0c\u521a\u83b7\u8bfa\u8d1d\u5c14\u5956\u7684\"\u764c\u75c7\u514d\u75ab\u7597\u6cd5\"\u662f\u5565\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1003\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142475","author":"","month":"10","day":"03"},{"title":"\u4ec0\u4e48\uff01\uff1f\u7f8e\u5143\u53c8\u52a0\u606f\u4e86\uff01\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1003\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=141671","author":"","month":"10","day":"03"},{"title":"\u4e0d\u600e\u4e48\u6e05\u771f\u768440\u4e07\u5929\u4ef7\u83dc\u5355","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1003\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142274","author":"","month":"10","day":"03"},{"title":"2\u5143\u4e00\u888b\u548c10\u5143\u4e00\u888b\u7684\u76d0\u5230\u5e95\u5dee\u5728\u54ea\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1002\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142426","author":"","month":"10","day":"02"},{"title":"\u53f2\u4e0a\u6700\u540e\u4e00\u4e2a\u6a2a\u8de8\u6b27\u4e9a\u975e\u7684\u5927\u5e1d\u56fd\u662f\u5982\u4f55\u5d29\u6e83\u7684\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1002\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=142183","author":"","month":"10","day":"02"},{"title":"\u201c\u5b50\u5f39\u8f6c\u5f2f\u201d\u771f\u7684\u5f88\u79bb\u8c31\u5417\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1002\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"https:\/\/zhidao.baidu.com\/daily\/view?id=141465","author":"","month":"10","day":"02"},{"title":"\u4e2d\u56fd\u7684\u201ceasy girl\u201d\u5f88\u591a\u5417\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1001\/s1.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142275","author":"","month":"10","day":"01"},{"title":"\u5f53\u6211\u4eec\u5f00\u59cb\u6000\u5ff5\u624b\u673a\u77ed\u4fe1\u65f6\u4ee3","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1001\/s2.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=142226","author":"","month":"10","day":"01"},{"title":"\u79bb\u5cb8\u4eba\u6c11\u5e01vs\u5728\u5cb8\u4eba\u6c11\u5e01\uff0c\u90fd\u662f\u5565\u610f\u601d\uff1f","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/zhidaoribao\/2018\/1001\/s3.png","bgColor1":"","bgColor2":"","linkUrl":"http:\/\/zhidao.baidu.com\/daily\/view?id=141659","author":"","month":"10","day":"01"}]},"bottomAd":{"img":"","url":""},"bottomPromo":{"data":{"url":"http:\/\/zhidao.baidu.com\/s\/mingfeizhuan\/index.html","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/sula201601\/nvyimingfei28090.png"}},"dashuju":{"dashuju":[{"url":"http:\/\/zhidao.baidu.com\/bigdata\/view","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/jiedushouye340x170er.jpg","title":"\u6212\u6bd2\u5eb7\u590d10\u5927\u70ed\u641c\u95ee\u9898","hTitle":"\u77e5\u9053\u5927\u6570\u636e"}]},"defaultQuery":{"title":"","value":""},"doctor":{"famous":{"url":"http:\/\/muzhi.baidu.com\/home\/3d69c551bfb6d2edcf02d7fb","picUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/zhidao\/pic\/item\/d833c895d143ad4b1b98685785025aafa50f06f6.png","name":"\u5f20\u5149\u660e","desc":"\u4e2d\u56fd\u533b\u79d1\u5927\u5b66\u822a\u7a7a\u603b\u533b\u9662  \u526f\u4e3b\u4efb\u533b\u5e08","qid":"http:\/\/muzhi.baidu.com\/activity\/index?activity_id=27","ask":"\u96be\u6cbb\u6027\u766b\u75eb\u7684\u5916\u79d1\u6cbb\u7597","answer":"\u672c\u671f\u4e49\u8bca\uff0c\u822a\u7a7a\u603b\u533b\u9662\u766b\u75eb\u79d1\u4e3b\u4efb\u3001\u795e\u7ecf\u5916\u79d1\u526f\u4e3b\u4efb\u533b\u5e08\u5f20\u5149\u660e\u5728\u7ebf\u56de\u590d\u5927\u5bb6\u5173\u4e8e\u766b\u75eb\u624b\u672f\u6cbb\u7597\u65b9\u9762\u7684\u7591\u95ee...","open":"http:\/\/muzhi.baidu.com\/activity\/index?activity_id=27"},"hot":{"url":"http:\/\/muzhi.baidu.com\/doctor\/home\/3ea5148909b56f52e61bbadb","picUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/zhidao\/pic\/item\/c8ea15ce36d3d53944335f633987e950352ab000.jpg","name":"\u9648\u660e\u5b8f","cname":"\u5185\u79d1","field":"\u533b\u5e08","hospital":"\u798f\u5efa\u533b\u79d1\u5927\u5b66\u9644\u5c5e\u534f\u548c\u533b\u9662","uid":"16730399","others":[{"url":"http:\/\/muzhi.baidu.com\/doctor\/home\/48a42057d17fc4ad24250491","name":"\u6768\u534e\u6e05","cname":"\u5317\u4eac\u5eb7\u590d\u533b\u9662"},{"url":"http:\/\/muzhi.baidu.com\/doctor\/home\/046a7b3e929bf4ebc27fa9b2","name":"\u66f9\u4f9d\u7fa4","cname":"\u4e0a\u6d77\u957f\u6d77\u533b\u9662"},{"url":"http:\/\/muzhi.baidu.com\/doctor\/home\/ae97a64627b11ba8fd461dbb","name":"\u5218\u98de\u9e4f","cname":"\u5357\u4eac\u5e02\u6df3\u5316\u533b\u9662"},{"url":"http:\/\/muzhi.baidu.com\/doctor\/home\/4853e1e52026334909f7269d","name":"\u5218\u5ca9","cname":"\u519b\u4e8b\u533b\u5b66\u79d1\u5b66\u9662\u9644\u5c5e307\u533b\u9662"}],"goodNum":"9059","replyNum":"9535","helpNum":"3863428"}},"domReady":{"domReady":[]},"enterprise":{"logoHeading":{"name":"\u8054\u60f3\u4f01\u4e1a\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/lenovo","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/a686c917afb39297c83d6d48.jpg","content":"\u5168\u7403\u9886\u5148pc\u4f01\u4e1a\uff0c\u4eab\u8a89\u5168\u7403\u7684Think\u53caIdea\u54c1\u724c\u3002"},"logoWall":[{"name":"\u5c0f\u7c73\u4f01\u4e1a\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/xiaomi","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/728da97725914685b151b946.jpg","content":""},{"name":"\u4e09\u661f\u6570\u5b57\u670d\u52a1\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/samsung","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/c75c103809dfea58b311c722.jpg","content":""},{"name":"\u5b89\u5fbd\u7535\u4fe1\u4f01\u4e1a\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/ah189","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/024f78f0879c3f717831aa39.jpg","content":""},{"name":"\u82f1\u7279\u5c14\u670d\u52a1\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/intel","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/zhidao\/pic\/item\/42a98226cffc1e17c7f70b924890f603728de9cd.jpg","content":""},{"name":"\u8054\u901a\u4f01\u4e1a\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/chinaunicom","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/a2cc7cd9fe97115a38012f5e.jpg","content":""},{"name":"\u62db\u5546\u94f6\u884c\u4f01\u4e1a\u77e5\u9053\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/cmbchina","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/f2deb48fbaaff228f11f36a5.jpg","content":""},{"name":"OPPO\u4f01\u4e1a\u77e5\u9053\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/oppo","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/ac6eddc4bd5e745538db4947.jpg","content":""},{"name":"\u91d1\u5c71\u7f51\u7edc\u4f01\u4e1a\u5e73\u53f0","url":"http:\/\/zhidao.baidu.com\/c\/ijinshan","imgUrl":"https:\/\/gss0.baidu.com\/7LsWdDW5_xN3otqbppnN2DJv\/openiknow\/pic\/item\/f91986181cc5361c4bedbc0c.jpg","content":""}]},"mavin":{"list":[{"title":"1\u5146\u7b49\u4e8e\u591a\u5c11\u4eba\u6c11\u5e01","qid":"982826089674414659","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/sjz.png","name":"sjz625626","field":"\u94f6\u884c","uname":"sjz625626"},{"title":"\u5916\u9762\u4fee\u8def.\u6270\u6c11.\u80fd\u6295\u8bc9\u5417\uff1f","qid":"396401924467043005","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/1.png","name":"\u90ed\u864e","field":"\u6cd5\u5f8b","uname":"\u90ed\u864e\u5f8b\u5e08"},{"title":"\u4e70\u7eb8\u9ec4\u91d1\u771f\u7684\u8d5a\u94b1\u5417\uff1f","qid":"2207573519719006468","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/2.png","name":"\u5c0f\u72fc\u590f\u559c\u4fca","field":"\u9ec4\u91d1","uname":"\u5c0f\u72fc\u590f\u559c\u4fca"},{"title":"\u6211\u4eec\u56fd\u5bb6\u6709\u54ea\u4e9b\u6709\u65e5\u8bed\u6216\u5fb7\u8bed\u4e13\u4e1a\u7684\u91cd\u70b9\u5927\u5b66\uff1f","qid":"434951595532437684","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/4.png","name":"\u7f2a\u8001\u5e08\u5999\u7b14\u751f\u82b1","field":"\u5347\u5b66\u5165\u5b66","uname":"\u7f2a\u8001\u5e08\u5999\u7b14\u751f\u82b1"},{"title":"\u7f51\u4e0a\u4e70\u7684\u706b\u8f66\u7968\u9000\u7968\u540e\uff0c\u94b1\u4ec0\u4e48\u65f6\u95f4\u8fd4\u56de\u652f\u4ed8\u5b9d","qid":"1496074284674140859","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/5.png","name":"\u6881\u5c0f\u6d9b2016","field":"\u4ea4\u901a","uname":"\u6881\u5c0f\u6d9b2016"},{"title":"\u79bb\u804c\u9700\u8981\u6ce8\u610f\u4ec0\u4e48\uff1f","qid":"1689677107963609588","picUrl":"https:\/\/gss0.baidu.com\/94o3dSag_xI4khGko9WTAnF6hhy\/zhidao\/wh%3D450%2C600\/sign=679638e3cb3d70cf4cafa209cdecfd36\/adaf2edda3cc7cd995b85e033b01213fb90e9156.jpg","name":"\u621a\u5bb6\u4eba","field":"\u5211\u4e8b\u6848\u4ef6","uname":"\u621a\u5bb6\u4eba"},{"title":"\u8dd1\u6b65\u7684\u6b63\u786e\u65b9\u6cd5\uff1f","qid":"1756848299838886148","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/8.png","name":"jiyitaiji","field":"\u6b66\u672f","uname":"jiyitaiji"},{"title":"\u8d22\u52a1\u5ba1\u8ba1\u62a5\u544a\u6307\u7684\u662f\u4ec0\u4e48\uff1f","qid":"1543357056713003667","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/10.png","name":"mokai1981","field":"\u8d22\u52a1","uname":"mokai1981"},{"title":"\u4ec0\u4e48\u662f\u793e\u4f1a\u7f51\u7edc\u5206\u6790\u6cd5?","qid":"1818455684768288988","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/9.png","name":"\u4e8e\u901a\u6d77","field":"\u4e92\u8054\u7f51","uname":"\u8be0\u91ca\u4e28\u706c\u90a3\u4efd\u7231"},{"title":"\u5916\u4f01\u5f00\u9664\u804c\u5de5\u5e94\u8be5\u8d54\u4ed8\u51e0\u4e2a\u6708\u7684\u5de5\u8d44\uff1f","qid":"390880516460427445","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/111.png","name":"\u4e13\u4e1a\u4ef2\u88c1\u5458","field":"\u52b3\u52a8\u4eba\u4e8b","uname":"\u4e13\u4e1a\u4ef2\u88c1\u5458"},{"title":"\u6c7d\u8f66\u88ab\u76d7\u4fdd\u9669\u8d54\u591a\u5c11\uff1f","qid":"1639130482196899620","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/heyangyang.png","name":"\u4fdd\u9669\u8d3a\u6d0b\u6d0b","field":"\u4fdd\u9669","uname":"\u4fdd\u9669\u8d3a\u6d0b\u6d0b"},{"title":"\u623f\u4ea7\u5951\u7a0e\u600e\u6837\u8ba1\u7b97\uff1f","qid":"1530819788","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/HUBAOCHAO.png","name":"\u80e1\u4fdd\u671d","field":"\u8d22\u52a1","uname":"\u4ef0\u671b\u5929\u7a7a2018"}]},"promotion":{"promotion":[{"imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/sula05\/huishibaobaoshouyebanner.jpg?t=1421596270","url":"http:\/\/zhidao.baidu.com\/s\/wyeth.html","title":""},{"imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/sula05\/jiushouyebanneryaoyan.jpg?t=1421596270","url":"http:\/\/zhidao.baidu.com\/s\/bigdata\/index.html","title":""},{"imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/sula05\/yingerchuangsouyelunbo.jpg?t=1421596270","url":"http:\/\/zhidao.baidu.com\/baobao","title":""}]},"promotions":{"promotions":[{"imgUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/xuefulan\/%E6%96%B0%E7%89%88280-120.png","url":"https:\/\/zhidao.baidu.com\/kit\/topic?name=xuefulan01","title":"\u70ed\u70b9"},{"imgUrl":"http:\/\/iknow-base.cdn.bcebos.com\/%E6%88%BF%E4%BA%A7%E4%B8%93%E9%A2%98-%E6%90%9C%E7%8B%90%E7%84%A6%E7%82%B9%2FPC%2F%E7%89%A9%E6%96%99280-120.png","url":"https:\/\/zhidao.baidu.com\/activity\/commonone?name=fangChan","title":"9.26"}]},"recommend":{"group":[{"heading":{"qid":"0","rid":"0","title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u4e3a\u4f55\u8bfa\u4f0a\u5c14\u62ff\u4e0d\u5230\u91d1\u7403\u5956\uff1f","content":"\u95e8\u5c06\u83b7\u5f97\u91d1\u7403\u5956\u662f\u975e\u5e38\u56f0\u96be\u7684\uff0c\u5bf9\u4e8e\u4e00\u4e2a\u95e8\u5c06\u6765\u8bf4\uff0c\u9700\u8981\u51fa\u8272\u7684\u53d1\u6325\u548c\u7279\u5b9a\u7684\u6761\u4ef6\u624d\u80fd\u5b8c\u6210\u8d85\u8d8a\u3002\u6bd4\u5982\u7387\u961f\u4e16\u754c\u676f\u593a\u51a0\uff0c\u800c\u6bcf\u573a\u6dd8\u6c70\u8d5b\u90fd\u662f\u70b9\u7403\u51b3\u80dc\uff0c\u6bcf\u6b21\u90fd\u80fd\u6251\u51fa\u70b9\u7403\u3002","replyer":"\u300a\u6613\u767e\u79d1\u300b","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3591","imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/zhidaoribao2014\/2015year\/0120\/jctj.jpg?t=1539131389","imgLink":"http:\/\/zhidao.baidu.com\/daily\/view?id=3582","imgTitle":"\u60f3\u8981\u592a\u7a7a\u65c5\u6e38\uff1f\u6709\u94b1\u4e5f\u4e0d\u80fd\u4efb\u6027\uff01"},"question":[{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u4e3a\u4ec0\u4e48\u201c\u5e74\u8f7b\u4eba\u4e0d\u8981\u8001\u71ac\u591c\u201d\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3594"},{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u9605\u8bfb\uff1a\u4f60\u5728\u9676\u9189\uff0c\u5927\u8111\u5728\u201c\u53d7\u7f6a\u201d\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3589"},{"title":"\u3010\u771f\u76f8\u95ee\u7b54\u673a\u3011\u9c7c\u5403\u4e1c\u897f\u4e0d\u77e5\u9053\u9971\u5417\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/liuyan"}]},{"heading":{"qid":"0","rid":"0","title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u9ed1\u5ba2\u653b\u51fb\u516c\u5171WiFi\u6709\u54ea\u4e9b\u201c\u9634\u62db\u201d\uff1f","content":"\u9ed1\u5ba2\u653b\u51fb\u516c\u5171WiFi\uff0c\u6700\u5e38\u89c1\u7684\u4e09\u5927\u201c\u9634\u62db\u201d\u662f\uff1a\u57df\u540d\u52ab\u6301\uff1b\u9493\u9c7cWiFi\uff1bARP\uff08\u5730\u5740\u89e3\u6790\u534f\u8bae\uff09\u6b3a\u9a97\u3002","replyer":"\u4e2d\u56fd\u79d1\u6280\u7f51","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3583","imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/zhidaoribao2014\/ads\/20150119huishi.jpg?t=1539131389","imgLink":"http:\/\/zhidao.baidu.com\/s\/wyeth.html","imgTitle":"\u5b9d\u5b9d\u8425\u517b\u77e5\u591a\u5c11\uff1f"},"question":[{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u5851\u6599\u888b\u88c5\u98df\u54c1\u6709\u4ec0\u4e48\u5371\u5bb3\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3577"},{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u4e73\u817a\u764c\u79bb\u6211\u4eec\u6709\u591a\u8fdc\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3586"},{"title":"\u3010\u771f\u76f8\u95ee\u7b54\u673a\u3011\u5b58\u5728\u201c\u592b\u59bb\u76f8\u201d\u5417\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/liuyan"}]},{"heading":{"qid":"0","rid":"0","title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u836f\u7269\u201c\u7981\u5fcc\u201d\u4f60\u4e86\u89e3\u591a\u5c11\uff1f","content":"\u628a\u201c\u7528\u836f\u671f\u95f4\u4e0d\u80fd\u559d\u897f\u67da\u6c41\u201d\u5199\u8fdb\u8bf4\u660e\u4e66\u6ce8\u610f\u4e8b\u9879\u751a\u81f3\u662f\u7981\u5fcc\u7684\u836f\u7269\u4e0d\u5728\u5c11\u6570\uff0c\u770b\u5230\u8fd9\u4e00\u6761\uff0c\u5f88\u591a\u4eba\u53ef\u80fd\u4f1a\u89c9\u5f97\u201c\u5403\u836f\u548c\u559d\u897f\u67da\u6c41\u6709\u4ec0\u4e48\u5173\u7cfb\u201d\u3002\u8fd9\u79cd\u60f3\u6cd5\u6070\u6070\u5341\u5206\u5371\u9669\u3002","replyer":"\u9646\u8fdc\u7199","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3580","imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/zhidaoribao2014\/2015year\/0118\/jctj.jpg?t=1539131389","imgLink":"http:\/\/zhidao.baidu.com\/daily\/view?id=3581","imgTitle":"\u72d9\u51fb\u624b\uff0c\u770b\u4e0d\u89c1\u7684\u9b54\u9b3c\uff1f"},"question":[{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u5468\u516c\u4e0d\u59d3\u5468\uff0c\u59d3\u4ec0\u4e48\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3579"},{"title":"\u3010\u77e5\u9053\u65e5\u62a5\u3011\u5982\u4f55\u624d\u80fd\u71ac\u591c\u4e0d\u4f24\u8eab\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=3572"},{"title":"\u3010\u771f\u76f8\u95ee\u7b54\u673a\u3011\u5b58\u5728\u201c\u592b\u59bb\u76f8\u201d\u5417\uff1f","replyer":"","url":"http:\/\/zhidao.baidu.com\/liuyan"}]}]},"recommendTopic":{"hotTopic":{"imgUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/sula01\/zhuantizhishijihe.jpg?t=1413256908","title":"\u90a3\u4e9b\u548c\u8eab\u4f53\u6709\u5173\u7684\u77e5\u8bc6","url":"http:\/\/zhidao.baidu.com\/daily","question":[{"title":"\u6211\u4eec\u7684\u8eab\u4f53\u9700\u8981\u53d8\u201c\u78b1\u201d\u5417\uff1f","answer":"\u4f53\u5185\u7684pH\u503c\u57287.35\uff5e7.45\uff0c\u9178\u78b1\u5e73\u8861\u6700\u91cd\u8981\u3002","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=2710"},{"title":"\u662f\u4e0d\u662f\u957f\u5f97\u8d8a\u6f02\u4eae\u5c31\u8d8a\u5065\u5eb7?","answer":"\u7814\u7a76\u4eba\u5458\u8868\u793a\uff0c\u7814\u7a76\u7ed3\u679c\u652f\u6301\u5916\u8c8c\u662f\u5065\u5eb7\u57fa\u56e0\u7684\u6807\u5fd7\u3002","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=686"},{"title":"\u8fdb\u5316\u4f1a\u5e26\u6765\u8eab\u4f53\u75bc\u75db\u5417\uff1f","answer":"\u79d1\u5b66\u5bb6\u7814\u7a76\u53d1\u73b0\uff0c\u4eba\u7c7b\u76ee\u524d\u7ecf\u53d7\u7684\u5f88\u591a\u75bc\u75db\u90fd\u6e90\u4e8e\u8fdb\u5316\u3002","url":"http:\/\/zhidao.baidu.com\/daily\/view?id=2899"}]},"interest":[{"title":"\u9e21\u86cb\u6e05&\u70eb\u4f24","questionTitle":"\u9e21\u86cb\u6e05\u80fd\u6cbb\u7597\u70eb\u4f24\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-03-04\/1395436373.html","answer":"\u7528\u9e21\u86cb\u6e05\u5904\u7406\u70eb\u4f24\u5e76\u975e\u660e\u667a\u4e4b\u4e3e\uff0c\u6709\u611f\u67d3\u6c99\u95e8\u6c0f\u83cc\u7684\u98ce\u9669\uff0c\u4e00\u822c\u7684\u5bb6\u5ead\u70eb\u4f24\uff0c\u6839\u636e\u7a0b\u5ea6\u4e0d\u540c\u6709\u76f8\u5e94\u7684\u5904\u7406\u63aa\u65bd\uff0c\u4e25\u91cd\u65f6\u52a1\u5fc5\u53ca\u65f6\u6c42\u52a9\u4e8e\u4e13\u4e1a\u7684\u533b\u7597\u673a\u6784\u3002"},{"title":"\u6392\u961f&\u79d1\u5b66","questionTitle":"\u6392\u961f\u4e5f\u80fd\u5f88\u5feb\u4e50\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-03-04\/1396602766.html","answer":"1. \u65e0\u6240\u4e8b\u4e8b\u7684\u7b49\u5f85\u6bd4\u6709\u4e8b\u53ef\u5e72\u7684\u7b49\u5f85\u611f\u89c9\u8981\u957f\uff1b2. \u7b49\u5f85\u670d\u52a1\u7684\u65f6\u95f4\u6bd4\u63a5\u53d7\u670d\u52a1\u7684\u65f6\u95f4\u957f\uff1b3. \u7126\u8651\u4f7f\u7b49\u5f85\u770b\u8d77\u6765\u6bd4\u5b9e\u9645\u65f6\u95f4\u66f4\u957f\uff1b4. \u4e0d\u786e\u5b9a\u7ed3\u679c\uff08\u662f\u5426\u4e70\u5230\u7968\uff09\u7684\u7b49\u5f85\u6bd4\u660e\u786e\u7684\u7b49\u5f85\u65f6\u95f4\u66f4\u957f\u2026\u2026"},{"title":"\u5973\u6027&\u5fc3\u7406\u6d4b\u8bd5","questionTitle":"\u4e3a\u4ec0\u4e48\u5973\u6027\u504f\u7231\u5fc3\u7406\u6d4b\u8bd5\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-03-08\/1402870573.html","answer":"\u6697\u604b\u4e2d\u7684\u59d1\u5a18\u65e5\u5e38\u4e24\u4ef6\u5927\u4e8b\uff0c\u4e00\u662f\u5404\u79cd\u6e20\u9053\u5173\u6ce8\u4ed6\u7684\u52a8\u6001\uff0c\u4e8c\u662f\u505a\u5fc3\u7406\u6d4b\u8bd5\uff1b\u70ed\u604b\u4e2d\u7684\u59d1\u5a18\u65e5\u5e38\u4e24\u4ef6\u5927\u4e8b\uff0c\u4e00\u662f\u7c98\u7740\u7537\u670b\u53cb\uff0c\u4e8c\u662f\u505a\u5fc3\u7406\u6d4b\u8bd5\uff1b\u5931\u604b\u4e2d\u7684\u59d1\u5a18\u65e5\u5e38\u4e24\u4ef6\u5927\u4e8b\uff0c\u4e00\u662f\u901a\u8fc7\u5404\u79cd\u6d3b\u52a8\u7597\u4f24\uff0c\u4e8c\u662f\u505a\u5fc3\u7406\u6d4b\u8bd5\u2026\u2026\u5443\uff0c\u4e3a\u4ec0\u4e48\u5973\u751f\u7279\u522b\u7231\u5fc3\u7406\u6d4b\u8bd5\uff1f"},{"title":"\u65c5\u884c&\u517b\u751f","questionTitle":"\u7ed9\u65c5\u884c\u8005\u7684\u517b\u751f\u5fe0\u544a","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-03-01\/1401896642.html#pn=4","answer":"\u9664\u4e86\u5de5\u4f5c\u65c5\u884c\uff0c\u770b\u671b\u7236\u6bcd\u3001\u4eb2\u670b\u76f8\u4f1a\u3001\u4f11\u95f2\u5ea6\u5047\uff0c\u4e5f\u90fd\u96be\u514d\u5728\u5916\u5954\u6ce2\u52b3\u987f\u3002\u5230\u8fd9\u65f6\u8282\uff0c\u8fd8\u6709\u65f6\u95f4\u8fd0\u52a8\u5065\u8eab\u5417\uff1f\u8fd8\u6709\u673a\u4f1a\u6309\u65f6\u5403\u7761\u5417\uff1f\u5f88\u591a\u4eba\u53ea\u597d\u82e6\u7b11\u7740\u6447\u6447\u5934\u3002\u5176\u5b9e\uff0c\u53ea\u8981\u81ea\u5df1\u6709\u5fc3\uff0c\u65e0\u8bba\u4ec0\u4e48\u60c5\u51b5\uff0c\u90fd\u80fd\u60f3\u51fa\u529e\u6cd5\uff0c\u5173\u7231\u81ea\u5df1\u7684\u5065\u5eb7\u3002"},{"title":"\u9632\u6050&\u653b\u7565","questionTitle":"\u9632\u6050\u9632\u66b4\u5168\u653b\u7565","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-03-02\/1398508453.html","answer":"\u9047\u5230\u6050\u6016\u66b4\u529b\u4e8b\u4ef6\uff0c\u5982\u4f55\u81ea\u6551\u4e0e\u4e92\u6551\uff1f\u5982\u4f55\u8bc6\u522b\u6050\u6016\u88ad\u51fb\u8ff9\u8c61\uff1f\u5982\u4f55\u89c4\u907f\u67aa\u51fb\u3001\u7206\u70b8\u3001\u7eb5\u706b\u7b49\u6050\u6016\u66b4\u529b\u4e8b\u4ef6\uff1f\u4e3a\u6606\u660e\u9ed8\u54c0\u7948\u798f\u7684\u540c\u65f6\uff0c\u5e0c\u671b\u5927\u5bb6\u80fd\u591f\u5b66\u4e60\uff0c\u4f46\u6c38\u8fdc\u4e0d\u9700\u8981\u7528\u4e0a\uff01"},{"title":"\u5927\u4fbf&\u5065\u5eb7","questionTitle":"\u770b\u5927\u4fbf\uff0c\u8bc6\u5065\u5eb7","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-02-21\/1400273634.html","answer":"\u5927\u4fbf\u662f\u4e00\u4e2a\u975e\u5e38\u597d\u7684\u8eab\u4f53\u5065\u5eb7\u72b6\u51b5\u68c0\u67e5\u7684\u76f4\u89c2\u6307\u6807\u3002\u56de\u5934\u770b\u4e0a\u4e00\u773c\uff0c\u4e5f\u8bb8\u5c31\u80fd\u544a\u8bc9\u4f60\u662f\u5426\u6709\u75be\u75c5\uff0c\u4e5f\u53ef\u80fd\u5c31\u8ba9\u4f60\u53ca\u65e9\u5c31\u533b\uff0c\u9632\u60a3\u4e8e\u672a\u7136\u3002"},{"title":"\u7518\u8349\u7247&\u9e26\u7247","questionTitle":"\u4e3a\u4f55\u5e26\u7518\u8349\u7247\u65e0\u6cd5\u5165\u5883\u7f8e\u56fd\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-02-20\/1394679266.html","answer":"\u6700\u8fd1\uff0c\u4ece\u6d59\u6c5f\u8d74\u7f8e\u529e\u4e8b\u7684\u5434\u5148\u751f\u548c\u5176\u5973\u513f\u9047\u5230\u4e86\u4e00\u4ef6\u9ebb\u70e6\u4e8b\u3002\u5728\u4ed6\u4eec\u5165\u5883\u7f8e\u56fd\u65f6\uff0c\u88ab\u67e5\u51fa\u643a\u5e26\u670916\u74f6\u5171\u8ba1\u7ea61600\u7c92\u7684\u590d\u65b9\u7518\u8349\u7247\u3002\u7f8e\u56fd\u8b66\u65b9\u968f\u540e\u4ee5\u643a\u5e26\u542b\u6bd2\u8fdd\u7981\u54c1\u672a\u7533\u62a5\u5165\u5883\u4e3a\u7406\u7531\uff0c\u5c06\u5176\u9063\u8fd4\u56de\u56fd\uff0c\u5e76\u5224\u5176\u672a\u6765\u4e94\u5e74\u5185\u4e0d\u5f97\u5165\u5883\u3002"},{"title":"\u96fe\u973e&\u53e3\u7f69","questionTitle":"\u5e94\u5bf9\u96fe\u973e\uff0c\u53e3\u7f69\u600e\u4e48\u9009\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-12-13\/1395922999.html","answer":"\u6700\u8fd1\u5168\u56fd\u5404\u5730\u53c8\u5728\u4e0a\u6f14\u96fe\u973e\u56f4\u57ce\u7684\u620f\u7801\u3002\u5982\u4f55\u5728\u4e91\u70df\u96fe\u7ed5\u4e2d\u4fdd\u62a4\u81ea\u5df1\uff1f\u666e\u901a\u7eb1\u5e03\u53e3\u7f69\u6216\u8005\u533b\u7528\u624b\u672f\u53e3\u7f69\u80fd\u62b5\u6321PM2.5\u5417\uff1f\u4ec0\u4e48\u662fN95\u53e3\u7f69\uff1f"},{"title":"\u6027\u90fd&\u4e1c\u839e","questionTitle":"\u4e1c\u839e\u600e\u4e48\u4e86\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/982243983357389379.html?quesup2&oldq=1","answer":"\u4ece2\u67089\u65e5\u8d77\uff0c\u4e1c\u839e\u767b\u4e0a\u4e86\u5404\u5927\u5a92\u4f53\u5934\u6761\u3002\u4e1c\u839e\u4e0b\u4e86\u573a\u4e0d\u5c0f\u7684\u96e8\u3001\u4e1c\u839e\u4fdd\u536b\u6218\u3001\u4e1c\u839e\u633a\u4f4f\u7b49\u8bdd\u9898\u72c2\u626b\u4e92\u8054\u7f51\uff0c\u201c\u4e1c\u839e\u67e5\u5c01\u6d89\u9ec4\u5a31\u4e50\u573a\u6240\u201d\u76f4\u98da\u767e\u5ea6\u70ed\u70b9\u641c\u7d22\u6392\u884c\u699c\u524d\u4e09\uff0c\u4e1c\u839e\u5230\u5e95\u600e\u4e48\u4e86\uff1f"},{"title":"\u8d5b\u767e\u5473&\u978b\u5e95","questionTitle":"\u8d5b\u767e\u5473\u91cc\u6709\u978b\u5e95\u662f\u600e\u4e48\u56de\u4e8b\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-02-10\/1400715076.html?autorefresh=1391997750416","answer":"\u6700\u8fd1\u6709\u65b0\u95fb\u62a5\u9053\uff0cSubway\u5728\u5317\u7f8e\u51fa\u552e\u7684\u98df\u7269\u4e2d\u6709\u79cd\u53ebAzodiacarbonamide\u7684\u5316\u5b66\u5236\u54c1\uff0c\u4e5f\u88ab\u7528\u4e8e\u745c\u4f3d\u57ab\u548c\u978b\u5e95\uff0c\u5728\u6b27\u76df\u3001\u6fb3\u5927\u5229\u4e9a\u7b49\u5730\u88ab\u660e\u4ee4\u7981\u6b62\u7528\u4e8e\u98df\u7269\u3002"},{"title":"\u9ebb\u8fa3\u70eb&\u5065\u5eb7","questionTitle":"\u600e\u4e48\u5403\u9ebb\u8fa3\u70eb\u624d\u5065\u5eb7\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-01-20\/1397111972.html","answer":"\u5f88\u591a\u4eba\u8ba4\u4e3a\u9ebb\u8fa3\u70eb\u662f\u4e00\u79cd\u4e0d\u5065\u5eb7\u7684\u98df\u7269\uff0c\u5b9e\u9645\u4e0a\uff0c\u5982\u679c\u80fd\u591f\u5728\u98df\u54c1\u5b89\u5168\u65b9\u9762\u628a\u597d\u5173\uff0c\u5e76\u8fdb\u884c\u5408\u7406\u7684\u642d\u914d\uff0c\u9ebb\u8fa3\u70eb\u8bf4\u5f97\u4e0a\u662f\u4e00\u79cd\u76f8\u5f53\u4e0d\u9519\u7684\u5feb\u9910\u98df\u54c1\uff0c\u6bd4\u714e\u70b8\u98df\u54c1\u8981\u5065\u5eb7\u5f97\u591a\uff0c\u4e5f\u73af\u4fdd\u5f97\u591a\u3002"},{"title":"\u597d\u7537\u4eba&\u574f\u7537\u4eba","questionTitle":"\u4e3a\u4ec0\u4e48\u7537\u4eba\u4e0d\u574f\uff0c\u5973\u4eba\u4e0d\u7231\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-01-19\/1392523837.html","answer":"\u4e0d\u5c11\u4eba\u90fd\u6709\u7740\u8fd9\u4e48\u4e00\u79cd\u5370\u8c61\uff1a\u201c\u597d\u7537\u4eba\u201d\u867d\u7136\u4eba\u54c1\u5f88\u597d\uff0c\u5bf9\u7231\u4eba\u5fe0\u8bda\uff0c\u4f46\u6027\u683c\u61a8\u5b9e\u6728\u8bb7\uff0c\u4e0d\u5584\u8a00\u8f9e\uff0c\u201c\u60c5\u5546\u201d\u592a\u4f4e\uff0c\u6240\u4ee5\u4e0d\u53d7\u5973\u6027\u6b22\u8fce\u3002\u800c\u201c\u574f\u7537\u4eba\u201d\u6027\u683c\u6d3b\u6cfc\u3001\u80fd\u8bf4\u4f1a\u9053\uff0c\u201c\u60c5\u5546\u201d\u5f88\u9ad8\u3002"},{"title":"\u6b4c\u624b&\u5531\u529f","questionTitle":"\u4e3a\u4f55\u5927\u9646\u6b4c\u624b\u5531\u529f\u4e0d\u5982\u6e2f\u53f0\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2014-01-21\/1390721322.html","answer":"\u867d\u7136\u300a\u6211\u662f\u6b4c\u624b\u300b\u6709\u5927\u91cf\u7684\u540e\u671f\u6280\u672f\u5904\u7406\uff0c\u4f46\u5e76\u4e0d\u59a8\u788d\u573a\u5916\u89c2\u4f17\u6bd4\u8f83\u4ed6\u4eec\u7684\u5531\u529f\u3002\u672c\u5b63\u300a\u6211\u662f\u6b4c\u624b\u300b\u64ad\u51fa\u4e86\u4e09\u573a\uff0c\u5df2\u80fd\u5927\u81f4\u4f53\u73b0\u6b4c\u624b\u4eec\u7684\u5531\u529f\u6c34\u51c6\u3002"},{"title":"\u8def\u706f\u6746&\u62a5\u8b66","questionTitle":"\u201c\u8def\u706f\u6746\u5b9a\u4f4d\u62a5\u8b66\u201d\u9760\u8c31\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1732146661299396787.html","answer":"\u4e0d\u5c11\u5a92\u4f53\u5728\u5404\u5730\u4e5f\u8fdb\u884c\u4e86\u6c42\u8bc1\uff1a\u8def\u706f\u6746\u6709\u5b9a\u4f4d\u529f\u80fd\u5417\uff1f\u6709\uff0c\u4f46\u5927\u90e8\u5206\u57ce\u5e02\u53ea\u662f\u5185\u90e8\u517b\u62a4\u4eba\u5458\u5728\u7528\u3002\u76ee\u524d\uff0c\u6709\u5c11\u91cf\u57ce\u5e02\u5229\u7528\u8def\u706f\u6746\u7f16\u53f7\u5b9e\u73b0\u201c\u5b9a\u4f4d\u201d\u62a5\u8b66\u3002"},{"title":"\u7a7f\u8863&\u642d\u914d","questionTitle":"\u4e0d\u53ef\u4e0d\u77e5\u7684\u7a7f\u8863\u642d\u914d\u5b66\u95ee","url":"http:\/\/zhidao.baidu.com\/question\/325390876.html","answer":"1.\u7ea2\u8272\u914d\u767d\u8272\u3001\u9ed1\u8272\u3001\u84dd\u7070\u8272\u3001\u7c73\u8272\u3001\u7070\u8272\uff1b2.\u5496\u5561\u8272\u914d\u7c73\u8272\u3001\u9e45\u9ec4\u3001\u7816\u7ea2\u3001\u84dd\u7eff\u8272\u3001\u9ed1\u8272\uff1b3.\u9ec4\u8272\u914d\u7d2b\u8272\u3001\u84dd\u8272\u3001\u767d\u8272\u3001\u5496\u5561\u8272\u3001\u9ed1\u8272\u2026\u2026"},{"title":"\u9178\u5976&\u725b\u5976","questionTitle":"\u9178\u5976\u80fd\u4ee3\u66ff\u725b\u5976\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-12-27\/1395780156.html","answer":"\u6211\u4eec\u5148\u6765\u770b\u770b\u725b\u5976\u91cc\u90fd\u6709\u4ec0\u4e48\u3002\u5c31\u50cf\u725b\u5976\u7684\u5305\u88c5\u76d2\u4e0a\u6807\u8bc6\u7684\u90a3\u6837\uff0c\u4e0d\u7ba1\u662f\u5df4\u6c0f\u5976\u8fd8\u662f\u5e38\u6e29UHT\u5976\uff0c\u901a\u5e38100\u514b\u5168\u8102\u725b\u5976\u4e2d\uff0c\u542b\u6709\u5927\u7ea63%\u7684\u86cb\u767d\u8d28\uff0c3.5%\u5de6\u53f3\u7684\u8102\u80aa\uff0c\u4ee5\u53ca5%\u5de6\u53f3\u7684\u78b3\u6c34\u5316\u5408\u7269\u3002\u9664\u6b64\u4e4b\u5916\uff0c100\u514b\u7684\u725b\u5976\u4e2d\u8fd8\u542b\u6709110\u6beb\u514b\u7684\u9499\u8d28\u3002\u82e5\u662f\u4f4e\u8102\u6216\u8005\u8131\u8102\u725b\u5976\uff0c\u5176\u4e2d\u7684\u8102\u80aa\u542b\u91cf\u5219\u4f1a\u66f4\u4f4e\u4e00\u4e9b\u3002"},{"title":"\u96fe\u973e&\u5403\u9752\u83dc","questionTitle":"\u5403\u9752\u83dc\u53ef\u4ee5\u9632\u96fe\u973e\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/2051946864787345667.html","answer":"\u6709\u7231\u59d0\u59d0@\u58a8\u4e00\u53ea \u5e0c\u671b\u8d81\u5c0f\u59b9\u59b9\u5bb3\u6015\u96fe\u973e\u4e2d\u6bd2\u54c4\u5979\u5403\u9752\u83dc\uff0c\u6c42\u5927\u5bb6\u5728\u767e\u5ea6\u77e5\u9053\u5e2e\u56de\u7b54\u5403\u9752\u83dc\u53ef\u9632\u96fe\u973e\u3002\u5403\u9752\u83dc\u771f\u7684\u53ef\u4ee5\u9632\u96fe\u973e\u5417\uff1f"},{"title":"\u65b9\u4fbf\u9762&\u53d1\u660e","questionTitle":"\u65b9\u4fbf\u9762\u662f\u8c01\u53d1\u660e\u7684\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/20232642.html","answer":"\u5b89\u85e4\u767e\u798f\u53d1\u660e\u4e16\u754c\u4e0a\u7b2c\u4e00\u5305\u65b9\u4fbf\u9762\u2014\u2014\"\u9e21\u8089\u62c9\u9762\"\u662f\u57281958\u5e74\uff0c\u5f53\u65f6\u4ed6\u5df248\u5c81\uff0c\u800c\u5f00\u53d1\u65b9\u4fbf\u9762\u7684\u7075\u611f\u5219\u65e9\u57281945\u5e74\u5c31\u5df2\u840c\u751f\u3002"},{"title":"\u5154\u5b50&\u841d\u535c","questionTitle":"\u5154\u5b50\u5176\u5b9e\u4e0d\u7231\u5403\u841d\u535c","url":"http:\/\/zhidao.baidu.com\/link?url=OEC3mlLqV8Gb4wF8HDmPZlf5yO0fpZt5Kk_HXFkFN_jFrtqh_KWi4eLhRYcyf_WBgUUbxPzzH7BPiNJvR3a5-_","answer":"\u5154\u5b50\u4e3b\u7cae\u662f\u7267\u8349\uff0c\u914d\u4ee5\u9002\u91cf\u5154\u7cae\u5582\u517b\u3002\u6c34\u679c\u852c\u83dc\u53ea\u80fd\u5f53\u96f6\u98df\u5582\uff0c\u800c\u4e14\u8981\u4fdd\u8bc1\u5e72\u51c0\u65e0\u519c\u836f\u8868\u9762\u65e0\u6c34\u5206\uff0c\u8fd8\u4e0d\u80fd\u542b\u6c34\u592a\u591a\uff0c\u6c34\u5206\u592a\u591a\u7684\u83dc\u53f6\u9700\u8981\u6652\u852b\u4e00\u70b9\u518d\u5582\u3002"},{"title":"\u559d\u9152&\u6000\u5b55","questionTitle":"\u559d\u9152\u5bf9\u6000\u5b55\u7684\u5f71\u54cd\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/91236623.html","answer":"\u2460\u6000\u5b55\u524d6\u4e2a\u6708\uff0c\u81f3\u5c113\u4e2a\u6708\u5e94\u6212\u70df\u6212\u9152\uff1b\u2461\u5982\u679c\u5b55\u524d\u4e08\u592b\u5076\u5c14\u559d\u9152\uff0c\u867d\u7136\u53ef\u80fd\u5f71\u54cd\u4e0d\u5927\uff0c\u4f46\u8981\u53ca\u65f6\u6ce8\u610f\u5b55\u68c0\uff1b\u2462\u5b55\u5987\u5fc5\u987b\u6212\u9152\uff0c\u5bf9\u80ce\u513f\u5065\u5eb7\u5f71\u54cd\u8f83\u5927\u3002"},{"title":"UGG&\u5ff5\u6cd5","questionTitle":"UGG\u662f\u4ec0\u4e48\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/127727988.html?qbl=relate_question_0","answer":"\u6700\u521d\u540d\u5b57\u7684\u6765\u7531\u53ebugly boots\uff08\u610f\u601d\u662f\u4e11\u964b\u7684\u978b\u5b50\uff09\u3002\u540e\u6765\u6fb3\u6d32\u4eba\u6635\u79f0\u5b83\u4e3augg\uff0c\u4e5f\u5c31\u662f\u76f4\u76ae\u6bdb\u4e00\u4f53\u7684\u5706\u5934\u9774\u5b50\u3002"},{"title":"\u9e9d\u9999&\u6d41\u4ea7","questionTitle":"\u9999\u6c34\u4e2d\u7684\u9e9d\u9999\u53ef\u81f4\u6d41\u4ea7\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-26\/1391781653.html","answer":"\u76ee\u524d\u5728\u5404\u7c7b\u5316\u5986\u54c1\u3001\u9999\u6c34\u4e2d\u4f7f\u7528\u7684\u57fa\u672c\u90fd\u662f\u4eba\u9020\u9e9d\u9999\u4e86\u3002\u5728\u4eba\u9020\u9e9d\u9999\u88ab\u5e7f\u6cdb\u4f7f\u7528\u7684\u51e0\u5341\u5e74\u91cc\uff0c\u4eba\u4eec\u4e0d\u65ad\u76d1\u6d4b\u8bc4\u4f30\u7740\u4eba\u9020\u9e9d\u9999\u7684\u5b89\u5168\u6027\uff0c\u5e76\u6839\u636e\u8bc4\u4f30\u7ed3\u679c\u6539\u8fdb\u5de5\u827a\uff0c\u8bc4\u4f30\u4e2d\u6ca1\u6709\u53d1\u73b0\u9e9d\u9999\u6709\u5f71\u54cd\u598a\u5a20\u7684\u4f5c\u7528\uff0c\u4e5f\u6ca1\u6709\u9e9d\u9999\u9020\u6210\u6d41\u4ea7\u7684\u62a5\u544a\u3002"},{"title":"\u52a0\u6e7f\u5668&\u5065\u5eb7","questionTitle":"\u51ac\u5b63\u4f7f\u7528\u52a0\u6e7f\u5668\u8981\u6ce8\u610f\u4ec0\u4e48\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-29\/1385795924.html","answer":"\u5317\u65b9\u7684\u51ac\u5929\u4e00\u5411\u5e72\u71e5\uff0c\u4f9b\u6696\u4ee5\u540e\u53d8\u5f97\u66f4\u52a0\u5e72\u71e5\uff0c\u4e8e\u662f\u5f88\u591a\u4eba\u53c8\u796d\u51fa\u4e86\u51ac\u5b63\u4fdd\u6e7f\u5fc5\u5907\u5355\u54c1\u4e4b\u2014\u2014\u52a0\u6e7f\u5668\uff01"},{"title":"\u56fd\u5bb6&\u56fd\u82b1","questionTitle":"\u4e16\u754c\u5404\u56fd\u7684\u56fd\u82b1\u662f\u4ec0\u4e48\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/13969657.html","answer":"\u4e2d\u56fd-\u7261\u4e39\uff1b\u4fc4\u7f57\u65af-\u5411\u65e5\u8475\uff1b\u82f1\u56fd\u3001\u7f8e\u56fd-\u73ab\u7470\uff1b\u610f\u5927\u5229-\u96cf\u83ca\uff1b\u6fb3\u5927\u5229\u4e9a-\u91d1\u5408\u6b22\uff1b\u897f\u73ed\u7259-\u77f3\u69b4\uff1b\u65b0\u52a0\u5761-\u4e07\u4ee3\u5170\uff1b\u57c3\u53ca\u3001\u6cf0\u56fd-\u7761\u83b2\uff1b\u97e9\u56fd-\u6728\u69ff\u82b1\uff1b\u65e5\u672c-\u6a31\u82b1\uff1b\u9a6c\u6765\u897f\u4e9a\u3001\u6590\u6d4e-\u6276\u6851"},{"title":"\u7a0b\u5e8f\u5458&\u9888\u690e","questionTitle":"\u7a0b\u5e8f\u5458\uff0c\u5982\u4f55\u62ef\u6551\u4f60\u7684\u9888\u690e\uff1f","url":"http:\/\/t.cn\/8kAgje7","answer":"\u63a8\u8350\u8fd0\u52a8\uff1a\u2460\u5de6\u53f3\u8f6c\u5934 \u2461\u5411\u4e0a\u62ac\u5934 \u2462\u5de6\u53f3\u6b6a\u5934 \u2463\u65cb\u8f6c\u80a9\u90e8 \u2464\u6e38\u6cf3 \u2465\u653e\u98ce\u7b5d\u3002\u9888\u690e\u75c5\u81ea\u6d4b\uff1a\u2460\u5bb9\u6613\u53d1\u751f\u843d\u6795 \u2461\u5de6\u53f3\u8f6c\u5934\u65e0\u6cd5\u770b\u5230\u80a9\u8180 \u2462\u5411\u4e0a\u62ac\u5934\u65e0\u6cd5\u770b\u5230\u5929\u82b1\u677f \u2463\u8f6c\u5934\u9888\u90e8\u4f1a\u201c\u5580\u62c9\u5580\u62c9\u201d\u54cd \u2464\u80a9\u9888\u75bc"},{"title":"\u53e4\u4ee3&\u540d\u5e16","questionTitle":"\u4e2d\u56fd\u53e4\u4ee3\u5341\u5927\u4f20\u4e16\u540d\u5e16\u6709\u54ea\u4e9b\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/10262563.html","answer":"\u2460\u738b\u7fb2\u4e4b\u5bb6\u65cf\u300a\u4e09\u5e0c\u5b9d\u5e16\u300b \u2461\u738b\u7fb2\u4e4b\u300a\u5170\u4ead\u5e8f\u300b \u2462\u989c\u771f\u537f\u300a\u796d\u4f84\u6587\u7a3f\u300b \u2463\u82cf\u8f7c\u300a\u9ec4\u5dde\u5bd2\u98df\u5e16\u300b \u2464\u6b27\u9633\u8be2\u300a\u4ef2\u5c3c\u68a6\u5960\u5e16\u300b \u2465\u6000\u7d20\u300a\u81ea\u53d9\u5e16\u300b \u2466\u7c73\u82be\u300a\u8700\u7d20\u5e16\u300b \u2467\u8d75\u4f76\u300a\u8349\u4e66\u5343\u5b57\u6587\u300b \u2468\u8d75\u5b5f\u982b\u6977\u4e66\u300a\u524d\u540e\u8d64\u58c1\u8d4b\u300b \u2469\u795d\u5141\u660e\u300a\u8349\u4e66\u8bd7\u5e16\u300b"},{"title":"\u677f\u84dd\u6839&\u9632\u6d41\u611f","questionTitle":"\u677f\u84dd\u6839\u80fd\u6e05\u70ed\u89e3\u6bd2\u3001\u9632\u6d41\u611f\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-10-16\/1388250661.html","answer":"\u677f\u84dd\u6839\u4f5c\u4e3a\u4e07\u80fd\u795e\u836f\uff0c\u88ab\u8d4b\u4e88\u6e05\u70ed\u89e3\u6bd2\u3001\u9632\u6b62\u6d41\u611f\u7684\u529f\u6548\u3002\u4f46\u5bf9\u4e8e\u677f\u84dd\u6839\u7684\u836f\u7528\u4ef7\u503c\u4e00\u76f4\u5b58\u5728\u4e24\u6d3e\u622a\u7136\u4e0d\u540c\u7684\u58f0\u97f3\uff0c"},{"title":"\u6d77\u5e26&\u767d\u7c89","questionTitle":"\u6d77\u5e26\u4e0a\u7684\u767d\u7c89\u662f\u4ec0\u4e48\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/29898787.html","answer":"\u5e72\u6d77\u5e26\u8868\u9762\u4f1a\u6709\u4e00\u5c42\u767d\u7c89\uff0c\u5165\u6c34\u540e\u4f1a\u5f62\u6210\u4e00\u5c42\u7c98\u6db2\uff0c\u5f88\u591a\u4eba\u4f1a\u5f88\u8d39\u529b\u5730\u5c06\u5176\u6d17\u6389\u3002\u5176\u5b9e\u8fd9\u662f\u4e00\u79cd\u8d35\u91cd\u7684\u836f\u7528\u7269\u8d28\u201c\u7518\u9732\u9187\u201d\uff0c\u5177\u6709\u964d\u538b\u3001\u5229\u5c3f\u548c\u6d88\u80bf\u7684\u4f5c\u7528\u3002"},{"title":"\u5927\u6d77&\u84dd\u8272","questionTitle":"\u4e3a\u4ec0\u4e48\u5927\u6d77\u662f\u84dd\u8272\u7684\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/216750752.html","answer":"\u4eba\u4eec\u5e38\u559c\u6b22\u7528\u84dd\u8272\u6765\u5f62\u5bb9\u6d77\u6d0b\u3002\u5176\u5b9e\u6d77\u6c34\u7684\u989c\u8272\uff0c\u4ece\u6df1\u84dd\u5230\u78a7\u7eff\uff0c\u4ece\u5fae\u9ec4\u5230\u68d5\u7ea2\uff0c\u751a\u81f3\u8fd8\u6709\u767d\u8272\u7684\uff0c\u9ed1\u8272\u7684\uff0c\u5e76\u975e\u53ea\u662f\u84dd\u8272\u3002\u5176\u5b9e\uff0c\u6d77\u6c34\u548c\u666e\u901a\u6c34\u4e00\u6837\uff0c\u90fd\u662f\u65e0\u8272\u900f\u660e\u7684\uff0c\u6d77\u6d0b\u8272\u5f69\u662f\u7531\u6d77\u6c34\u7684\u5149\u5b66\u6027\u8d28\u548c\u6d77\u6c34\u4e2d\u6240\u542b\u7684\u60ac\u6d6e\u7269\u8d28\u3001\u6d77\u6c34\u7684\u6df1\u5ea6\u3001\u4e91\u5c42\u7684\u7279\u70b9\u53ca\u5176\u4ed6\u56e0\u7d20\u51b3\u5b9a\u7684\u2026\u2026"},{"title":"\u5403\u836f&\u65f6\u95f4","questionTitle":"\u996d\u524d\u5403\u836f\u597d\u8fd8\u662f\u996d\u540e\u5403\u836f\u597d\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/6544973.html","answer":"\u836f\u7269\u7684\u5e94\u7528\u5fc5\u987b\u4e0e\u4eba\u7684\u996e\u98df\u76f8\u9002\u5e94\uff0c\u624d\u80fd\u66f4\u597d\u5730\u53d1\u6325\u4f5c\u7528\u30021\uff0e\u7a7a\u8179\uff1a\u9a71\u80a0\u866b\u836f\u5982\u9a71\u86d4\u7075\u3001\u69df\u6994\u3001\u76d0\u7c7b\u6cfb\u836f\u7b49\u30022\uff0e\u996d\u524d\uff1a\u5bf9\u6d88\u5316\u7cfb\u7edf\u523a\u6fc0\u4e0d\u5927\u7684\u80a0\u9053\u6297\u611f\u67d3\u836f\u5b9c\u5728\u996d\u524d\u670d\u3002"},{"title":"\u7c73\u8001\u9f20&\u6765\u5386","questionTitle":"\u7c73\u8001\u9f20\u662f\u600e\u4e48\u8bde\u751f\u7684\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/344098527.html","answer":"\u6709\u4e00\u5929\uff0c\u5f53\u6c83\u5c14\u7279\u00b7\u8fea\u65af\u5c3c\u8f9b\u82e6\u4f0f\u6848\u753b\u753b\u7684\u65f6\u5019\uff0c\u6709\u4e00\u53ea\u5c0f\u8001\u9f20\u745f\u745f\u7f29\u7f29\u5730\u722c\u5230\u684c\u5b50\u4e0a\u5077\u98df\u9762\u5305\u5c51\u3002\u5f53\u5c0f\u8001\u9f20\u53d1\u73b0\u6c83\u5c14\u7279\u00b7\u8fea\u65af\u5c3c\u6ca1\u6709\u8d76\u5b83\u8d70\u6216\u7f6e\u5b83\u4e8e\u6b7b\u5730\uff0c\u5c31\u5927\u80c6\u5730\u4e0e\u4ed6\u9017\u4e50\uff0c\u751a\u81f3\u6dd8\u6c14\u5730\u722c\u4e0a\u4ed6\u7684\u4e66\u684c\uff0c\u4eff\u4f5b\u5728\u770b\u4ed6\u753b\u753b\u4f3c\u7684\u3002 "},{"title":"\u98de\u673a&\u7caa\u4fbf\u5904\u7406","questionTitle":"\u98de\u673a\u4e0a\u7684\u7caa\u4fbf\u5982\u4f55\u5904\u7406\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/84881113.html","answer":"\u5927\u578b\u6c11\u822a\u98de\u673a\u7684\u6807\u51c6\u536b\u751f\u95f4\u5185\uff0c\u65c5\u5ba2\u201c\u65b9\u4fbf\u201d\u540e\uff0c\u6309\u4e0b\u6309\u94ae\uff0c\u9a6c\u6876\u58c1\u5c31\u4f1a\u6d41\u51fa\u5c11\u91cf\u7684\u6e05\u6c34\uff0c\u6709\u7684\u8fd8\u52a0\u5165\u5316\u7caa\u5242\uff0c\u8d77\u7a00\u91ca\u548c\u51b2\u5237\u4f5c\u7528\uff0c\u540c\u65f6\u5de8\u5927\u7684\u771f\u7a7a\u5438\u529b\u5c06\u7caa\u4fbf\u62bd\u5438\u8fdb\u98de\u673a\u643a\u5e26\u7684\u4e24\u5c42\u7ed3\u6784\u7684\u201c\u7caa\u7f50\u201d\u4e2d\uff0c\u5230\u8fbe\u5730\u9762\u540e\uff0c\u518d\u7531\u4e13\u7528\u7684\u7caa\u4fbf\u6536\u7eb3\u8f66\u8f86\u5c06\u7caa\u4fbf\u96c6\u4e2d\u6536\u7eb3\u3001\u5904\u7406\u3002 "},{"title":"\u836f\u54c1&\u771f\u5047","questionTitle":"\u5982\u4f55\u8fa8\u522b\u836f\u54c1\u7684\u771f\u5047\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-09\/1387257338.html","answer":"\u662f\u4e0d\u662f\u836f\u54c1\uff1f\u662f\u897f\u836f\u8fd8\u662f\u4e2d\u836f\uff1f\u662f\u4fdd\u5065\u54c1\u8fd8\u662f\u98df\u54c1\uff1f\u662f\u771f\u3001\u662f\u52a3\u3001\u662f\u5047\uff1f\u53ef\u4ee5\u5148\u4ece\u5916\u5305\u88c5\u4e0a\u7684\u6279\u51c6\u6587\u53f7\u548c\u6807\u8bc6\u53bb\u8bc6\u522b\u771f\u5047\uff0c\u5176\u6b21\u662f\u767b\u9646\u56fd\u5bb6\u836f\u76d1\u5c40\u7f51\u7ad9\uff0c\u6570\u636e\u67e5\u8be2\u3002"},{"title":"\u8170\u7a9d&\u597d\u8eab\u6750","questionTitle":"\u8eab\u6750\u597d\u7684\u4eba\u624d\u4f1a\u6709\u8170\u7a9d\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-10\/1387513611.html","answer":"\u89e3\u5256\u5b66\u8bfe\u672c\u4ee5\u53ca\u5b66\u672f\u8d44\u6599\u4e2d\uff0c\u5e76\u6ca1\u6709\u201c\u8170\u7a9d\u201d\u8fd9\u4e2a\u8bcd\uff0c\u53ef\u89c1\u201c\u8170\u7a9d\u201d\u5e76\u975e\u5b66\u540d\uff0c\u4e5f\u6ca1\u6709\u592a\u5927\u7684\u533b\u5b66\u610f\u4e49\u3002\u751a\u81f3\uff0c\u201c\u8170\u7a9d\u201d\u5728\u4e2d\u6587\u4e16\u754c\u4e5f\u4e0d\u662f\u4e00\u4e2a\u6709\u5386\u53f2\u7684\u4fd7\u540d\u3002"},{"title":"\u6d77\u9c9c&\u5bc4\u751f\u866b","questionTitle":"\u7231\u5403\u751f\u6d77\u9c9c\uff1f\u5c0f\u5fc3\u5bc4\u751f\u866b","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-10\/1384596323.html","answer":"\u5728\u6211\u56fd\u548c\u65e5\u672c\uff0c\u5f88\u591a\u4eba\u90fd\u559c\u6b22\u751f\u731b\u6d77\u9c9c\uff0c\u5176\u7ed3\u679c\u5c31\u662f\u8bb8\u591a\u4eba\u56e0\u6b64\u60a3\u4e0a\u5bc4\u751f\u866b\u75c5\u3002\u56e0\u4e3a\u5bf9\u4e8e\u6c34\u4ea7\u54c1\u6765\u8bf4\uff0c\u50cf\u798f\u5bff\u87ba\u3001\u867e\u3001\u87f9\u7b49\uff0c\u5927\u591a\u6570\u662f\u5bc4\u751f\u866b\u6216\u75c5\u83cc\u7684\u5bbf\u4e3b\uff0c\u672a\u5f7b\u5e95\u52a0\u70ed\u6216\u8005\u708a\u5177\u3001\u5bb9\u5668\u751f\u719f\u4e0d\u5206\uff0c\u8fd9\u6837\u7684\u996e\u98df\u65b9\u6cd5\u5f88\u5bb9\u6613\u98df\u5165\u5bc4\u751f\u866b\u3002"},{"title":"\u732e\u8840&\u5065\u5eb7","questionTitle":"\u732e\u8840\u90a3\u70b9\u4e8b\uff0c\u4f60\u4e86\u89e3\u591a\u5c11\uff1f","url":"http:\/\/zhidao.baidu.com\/s\/daily\/2013-11-11\/1384701205.html","answer":"\u901a\u5e38\u4e00\u6b21\u732e\u8840200\u6beb\u5347\uff0c200\u6beb\u5347\u53730.2\u5347\uff0c\u800c\u6210\u5e74\u4eba\u7684\u8840\u6db2\u603b\u91cf\u7ea6\u4e3a4.2~4.8\u5347\uff0c\u732e\u8840\u91cf\u4ec5\u5360\u5168\u8eab\u8840\u6db2\u76845%\u5de6\u53f3\uff0c\u5bf9\u5065\u5eb7\u4eba\u6765\u8bf4\u4e0d\u662f\u4e2a\u5927\u6570\u76ee\uff0c\u4e0d\u4f1a\u5bf9\u8eab\u4f53\u9020\u6210\u4ec0\u4e48\u4f24\u5bb3\u3002"},{"title":"\u4ed9\u4eba\u638c&\u5438\u6536\u8f90\u5c04","questionTitle":"\u4ed9\u4eba\u638c\u53ef\u4ee5\u5438\u8f90\u5c04\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/345434404.html","answer":"\u7814\u7a76\u690d\u7269\u7684\u56ed\u827a\u4e13\u5bb6\u8868\u793a\uff0c\u672a\u66fe\u6709\u4efb\u4f55\u7814\u7a76\u5b9e\u9a8c\u62a5\u544a\u53ef\u8bc1\u660e\uff0c\u4ed9\u4eba\u638c\u5438\u6536\u8f90\u5c04\u7684\u80fd\u529b\u6bd4\u5176\u5b83\u7269\u79cd\u4f18\u5f02\u3002\u4efb\u4f55\u52a8\u690d\u7269\u53ca\u4eba\u4f53\uff0c\u90fd\u6709\u5438\u6536\u8f90\u5c04\u7684\u81ea\u7136\u80fd\u529b\uff0c\u4f46\u76ee\u524d\u5e76\u6ca1\u6709\u4efb\u4f55\u7814\u7a76\u8bc1\u660e\uff0c\u67d0\u4e00\u7269\u79cd\u5438\u6536\u8f90\u5c04\u7684\u80fd\u529b\u7279\u522b\u5f3a\u3002"},{"title":"\u732b\u7684\u773c\u775b&\u53d1\u5149","questionTitle":"\u732b\u7684\u773c\u775b\u4e3a\u4ec0\u4e48\u5728\u665a\u4e0a\u4f1a\u53d1\u5149\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/104723894.html","answer":"\u732b\u7684\u773c\u775b\u53d1\u5149\u662f\u56e0\u4e3a\u5b83\u80fd\u53cd\u5c04\u5149\u7ebf\u3002\u732b\u7684\u773c\u775b\u91cc\u6709\u4e00\u79cd\u8c61\u955c\u5b50\u4e00\u6837\u7684\u7279\u6b8a\u8986\u76d6\u5c42\uff0c\u5b83\u4f7f\u5f97\u732b\u5728\u9ed1\u6697\u4e2d\u80fd\u770b\u6e05\u4e1c\u897f\u3002\u8fd9\u79cd\u95ea\u5149\u7269\u8d28\u80fd\u53cd\u5c04\u51fa\u8c61\u624b\u7535\u7b52\u7684\u5149\u6216\u8c61\u6c7d\u8f66\u524d\u706f\u7684\u5149\uff0c\u4ece\u800c\u4f7f\u732b\u7684\u773c\u775b\u95ea\u95ea\u53d1\u5149\u3002 "},{"title":"\u98df\u54c1&\u6027\u65e9\u719f","questionTitle":"\u6709\u4e9b\u98df\u54c1\u4e3a\u4ec0\u4e48\u4f1a\u5bfc\u81f4\u6027\u65e9\u719f\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1429962897088255619.html","answer":"\u6027\u65e9\u719f\u662f\u513f\u7ae5\u6210\u957f\u53d1\u80b2\u5f02\u5e38\u5f15\u8d77\u7684\u4e00\u79cd\u75be\u75c5\uff0c\u5176\u53d1\u75c5\u7387\u4e3a0.6%\uff0c\u5973\u5b69\u53d1\u75c5\u9ad8\u4e8e\u7537\u5b69\u3002\u8fd1\u5e74\u6765\u7684\u7edf\u8ba1\u6570\u636e\u663e\u793a\uff0c\u6027\u65e9\u719f\u7684\u53d1\u75c5\u7387\u6b63\u5728\u9010\u5e74\u5347\u9ad8\u3002\u8fd9\u4e0e\u513f\u7ae5\u7684\u996e\u98df\u5bc6\u4e0d\u53ef\u5206\uff0c\u5f88\u591a\u98df\u7269\u90fd\u4f1a\u5bfc\u81f4\u5b69\u5b50\u6027\u65e9\u719f\uff0c\u4f46\u662f\u5bb6\u957f\u7531\u4e8e\u5bf9\u513f\u7ae5\u6027\u65e9\u719f\u4e0d\u4e86\u89e3\uff0c\u4ee5\u81f4\u6ca1\u6709\u5f15\u8d77\u91cd\u89c6\u6216\u8005\u4ea7\u751f\u9519\u8bef\u7684\u8ba4\u8bc6\u3002"},{"title":"\u80f6\u56ca&\u5265\u5f00\u5403","questionTitle":"\u80f6\u56ca\u53ef\u4ee5\u5265\u5f00\u5403\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1881806254392066708.html","answer":"\u80f6\u56ca\u5236\u5242\u4e00\u822c\u4e0d\u5efa\u8bae\u5265\u5f00\u76f4\u63a5\u5403\u836f\u7c89\uff0c\u7279\u522b\u662f\u63a7\u7f13\u91ca\u80f6\u56ca\u3001\u80a0\u6eb6\u80f6\u56ca\u66f4\u4e0d\u80fd\u5265\u5f00\u5403\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u4ea7\u751f\u836f\u7269\u8fc7\u91cf\u7b49\u4e0d\u826f\u53cd\u5e94\u6216\u4e0d\u80fd\u8fbe\u5230\u5728\u5c0f\u80a0\u5438\u6536\u7684\u76ee\u7684\u3002"},{"title":"\u571f\u661f\u6728\u661f&\u94bb\u77f3\u96e8","questionTitle":"\u571f\u661f\u6728\u661f\u4e0a\u771f\u7684\u4f1a\u4e0b\u201c\u94bb\u77f3\u96e8\u201d\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1110089579068467939.html","answer":"\u571f\u661f\u548c\u6728\u661f\u4f1a\u4e0b\u201c\u94bb\u77f3\u96e8\u201d\uff0c\u571f\u661f\u4e0a\u6bcf\u5e74\u901a\u8fc7\u8fd9\u6837\u7684\u8fc7\u7a0b\uff0c\u4ea7\u751f\u5927\u7ea6\u4e00\u5343\u5428\u201c\u94bb\u77f3\u201d\uff0c\u90e8\u5206\u201c\u94bb\u77f3\u201d\u76f4\u5f84\u6216\u53ef\u4ee5\u8fbe\u4e00\u5398\u7c73\u3002\u7136\u800c\uff0c\u571f\u661f\u548c\u6728\u661f\u7684\u6838\u5fc3\u6e29\u5ea6\u592a\u9ad8\uff0c\u201c\u94bb\u77f3\u201d\u843d\u4e0b\u4e4b\u540e\uff0c\u4f1a\u88ab\u7194\u5316\u6210\u6db2\u4f53\u3002"},{"title":"\u6cd5\u56fd&\u7279\u522b\u5bcc\u4eba\u7a0e","questionTitle":"\u6cd5\u56fd\u6216\u5f81\u6536\u201c\u7279\u522b\u5bcc\u4eba\u7a0e\u201d\uff0c\u8fd9\u662f\u600e\u4e48\u56de\u4e8b\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1881806190774694228.html","answer":"\u6cd5\u56fd\u56fd\u6c11\u8bae\u4f1a(\u8bae\u4f1a\u4e0b\u9662)18\u65e5\u665a\u6295\u7968\u6279\u51c6\u5728\u4eca\u660e\u4e24\u5e74\u5185\u9488\u5bf9\u5e74\u85aa\u8d85\u8fc7100\u4e07\u6b27\u5143\u7684\u4e2a\u4eba\u5f81\u6536\u9ad8\u7a0e\u7387\u7684\u201c\u7279\u522b\u5bcc\u4eba\u7a0e\u201d\u3002\u8fd9\u5177\u4f53\u662f\u600e\u4e48\u56de\u4e8b\u513f\uff1f"},{"title":"\u5927\u6c14\u6c61\u67d3&\u81f4\u764c","questionTitle":"\u5927\u6c14\u6c61\u67d3\u81f4\u764c\u98ce\u9669\u6709\u591a\u9ad8\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1830038666226534900.html","answer":"\u4e16\u754c\u536b\u751f\u7ec4\u7ec7\u4e0b\u5c5e\u56fd\u9645\u764c\u75c7\u7814\u7a76\u673a\u678417\u65e5\u53d1\u5e03\u62a5\u544a\uff0c\u9996\u6b21\u6307\u8ba4\u5927\u6c14\u6c61\u67d3\u201c\u5bf9\u4eba\u7c7b\u81f4\u764c\u201d\uff0c\u5e76\u89c6\u5176\u4e3a\u666e\u904d\u548c\u4e3b\u8981\u7684\u73af\u5883\u81f4\u764c\u7269\u3002"},{"title":"\u6d77\u8c5a&\u6551\u4eba","questionTitle":"\u6d77\u8c5a\u662f\u6709\u610f\u8bc6\u7684\u6551\u4eba\u4e48\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/191690308.html","answer":"\u6d77\u8c5a\u6551\u4eba\u4e0d\u662f\u4e00\u79cd\u6709\u610f\u8bc6\u7684\u884c\u4e3a\uff0c\u800c\u662f\u7531\u6cc5\u6c34\u53cd\u5c04\u5f15\u8d77\u7684\u4e00\u79cd\u672c\u80fd\u3002\u4e5f\u5c31\u662f\u8bf4\uff0c\u6d77\u8c5a\u53d1\u73b0\u540c\u4f34\u5728\u6c34\u4e0b\u53d7\u5230\u7a92\u606f\u548c\u6b7b\u4ea1\u7684\u5a01\u80c1\u65f6\uff0c\u5c31\u4f1a\u8d76\u53bb\u8425\u6551\uff0c\u628a\u53d7\u96be\u8005\u6258\u51fa\u6c34\u9762\u3002"},{"title":"\u5f3a\u8feb\u75c7&\u8868\u73b0","questionTitle":"\u5f3a\u8feb\u75c7\u6709\u54ea\u4e9b\u8868\u73b0\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/445740128.html","answer":"\u5f3a\u8feb\u89c2\u5ff5\u8868\u73b0\u4e3a\u53cd\u590d\u51fa\u73b0\u5404\u79cd\u65e0\u610f\u4e49\u7684\u89c2\u5ff5\uff0c\u601d\u60f3\u53ca\u51b2\u52a8\u3002\u9752\u5c11\u5e74\u5f3a\u8feb\u75c7\u5927\u591a\u6e90\u81ea\u513f\u7ae5\u65f6\u671f\uff0c\u4e0e\u81ea\u5e7c\u517b\u6210\u7684\u4e2a\u6027\u7279\u5f81\u6709\u5173\u3002"},{"title":"\u9171\u6cb9&\u540d\u5b57\u8d77\u6e90","questionTitle":"\u4e3a\u4ec0\u4e48\u9171\u6cb9\u53eb\u505a\u9171\u201c\u6cb9\u201d\u5462\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/37892548.html","answer":"\u4ece\u4e2d\u56fd\u7684\u4f20\u7edf\u6587\u5316\u89c2\u5ff5\u6765\u770b\u3002\u56fd\u4eba\u4e00\u76f4\u8ba4\u4e3a\u6cb9\u662f\u6d6e\u5728\u9762\u4e0a\u7684\uff0c\u6240\u4ee5\u4e2d\u56fd\u4e00\u76f4\u6709\u201c\u6487\u6cb9\u201d\u7684\u8bf4\u6cd5\u3002\u9171\u6cb9\u662f\u4ece\u6bd4\u8f83\u7a20\u7684\u9171\u91cc\u201c\u6487\u201d\u51fa\u6765\u7684\uff0c\u4e5f\u5c31\u79f0\u4e3a\u9171\u6cb9\u4e86\u3002"},{"title":"\u871c\u8702\u86f0\u4eba&\u6b7b\u4ea1","questionTitle":"\u871c\u8702\u4e3a\u4ec0\u4e48\u86f0\u4eba\u540e\u6b7b\u4ea1\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/14488866.html","answer":"\u4e3a\u4ec0\u4e48\u871c\u8702\u8707\u4eba\u540e\u81ea\u5df1\u4f1a\u6b7b\u53bb\u5462\uff1f\u539f\u6765\u871c\u8702\u8179\u90e8\u672b\u7aef\u7684\u6bd2\u9488\u662f\u7531\u4e00\u6839\u80cc\u523a\u9488\u548c\u4e24\u6839\u8179\u523a\u9488\u7ec4\u6210\uff0c\u9488\u540e\u9762\u8fde\u63a5\u7740\u6bd2\u817a\u548c\u5185\u810f\u5668\u5b98\u3002"},{"title":"\u201c\u539f\u6c64\u5316\u539f\u98df\u201d&\u79d1\u5b66\u4f9d\u636e","questionTitle":"\u201c\u539f\u6c64\u5316\u539f\u98df\u201d\u6709\u79d1\u5b66\u4f9d\u636e\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/51297793.html","answer":"\u6709\u4eba\u5403\u4e86\u9762\u6761\uff0c\u7136\u540e\u5fc5\u7136\u559d\u7897\u9762\u6c64\u3002\u8fd9\u5c31\u662f\u6211\u4eec\u56fd\u5bb6\u996e\u98df\u4f20\u7edf\u4e2d\u7684\u201c\u539f\u6c64\u5316\u539f\u98df\u201d\u7684\u8bf4\u6cd5\u3002\u4eba\u4eec\u5728\u5403\u5b8c\u635e\u9762\u3001\u6c34\u997a\u6216\u5143\u5bb5\uff0c\u90fd\u8981\u559d\u70b9\u539f\u6c64\u3002"},{"title":"Lifi&\u53ef\u89c1\u5149\u901a\u8baf","questionTitle":"\u53ef\u89c1\u5149\u901a\u8baf\u201cLifi\u201d\u662f\u600e\u4e48\u56de\u4e8b\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/1381973871041772060.html","answer":"\u65e0\u9700WiFi\u4fe1\u53f7\uff0c\u70b9\u4e00\u76cfLED\u706f\u5c31\u80fd\u4e0a\u7f51\u3002\u8fd1\u65e5\uff0c\u4e00\u79cd\u5229\u7528\u5c4b\u5185\u53ef\u89c1\u5149\u4f20\u8f93\u7f51\u7edc\u4fe1\u53f7\u7684\u56fd\u9645\u524d\u6cbf\u901a\u8baf\u6280\u672f\u5728\u590d\u65e6\u5927\u5b66\u8ba1\u7b97\u673a\u79d1\u5b66\u6280\u672f\u5b66\u9662\u7684\u5b9e\u9a8c\u5ba4\u6210\u529f\u5b9e\u73b0\u3002"},{"title":"\u7687\u5e26\u9c7c&\u5730\u9707\u9c7c","questionTitle":"\u7687\u5e26\u9c7c\u662f\u201c\u5730\u9707\u9c7c\u201d\u5417\uff1f","url":"http:\/\/zhidao.baidu.com\/question\/134768661280713205.html","answer":"10\u670816\u65e5\u5a92\u4f53\u62a5\u9053\uff0c\u5728\u7f8e\u56fd\u5357\u52a0\u5dde\u5361\u5854\u5229\u90a3\u5c9b\u9644\u8fd1\uff0c\u65e5\u524d\u53d1\u73b0\u4e86\u4e00\u6761\u957f\u8fbe18\u82f1\u5c3a(\u7ea65.49\u7c73)\u7684\u7687\u5e26\u9c7c\u3002\u5361\u5854\u5229\u90a3\u5c9b\u6d77\u4e8b\u7814\u7a76\u6240\u8bf4\uff0c\u8fd9\u662f\u4e00\u751f\u96be\u89c1\u7684\u91cd\u5927\u53d1\u73b0\u3002"}]},"recommendUser":{"famousUser":{"picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/yizhenliu.jpg?t=1436439338","title":"\u6d88\u5316\u7cfb\u7edf\u75be\u75c5\u9632\u4e0e\u6cbb","userName":"\u5218\u5ca9\u526f\u4e3b\u4efb\u533b\u5e08","url":"http:\/\/muzhi.baidu.com\/doctor\/activity\/index?activity_id=2","questionTitle":"\u4e2d\u5348\u6ca1\u5403\u996d\u73b0\u5728\u809a\u5b50\u9635\u9635\u75bc\u662f\u600e\u4e48\u56de\u4e8b\uff1f","questionUrl":"http:\/\/zhidao.baidu.com\/question\/1111097658302454499","reply":"\u7531\u4e8e\u672a\u5403\u996d\u5bfc\u81f4\u7684\u8179\u75db\u591a\u89c1\u4e8e\u5341\u4e8c\u6307\u80a0\u6e83\u75a1\u5bfc\u81f4\u7684\u3002\u996e\u98df\u8981\u6709\u89c4\u5f8b\u3001\u907f\u514d\u559d\u9152\u5403\u8fa3\u6912\u7b49\u523a\u6fc0\u6027\u6bd4\u8f83\u5927\u7684\u98df\u7269\uff0c\u7136\u540e\u5c31\u662f\u670d\u7528\u836f\u7269\u8c03\u7406 \u8fd9\u4e2a\u75be\u75c5\u7684\u6cbb\u7597\u4e3b\u8981\u662f\u6291\u5236\u80c3\u9178\u5206\u6ccc\u3001\u4fdd\u62a4\u5c40\u90e8\u9ecf\u819c\u7b49\u6cbb\u7597\u3002\u4f46\u662f\u5efa\u8bae\u8fd8\u662f\u5148\u53bb\u533b\u9662\u660e\u786e\u75c5\u56e0\u540e\u5728\u5bf9\u75c7\u6cbb\u7597\u3002","valueNum":"566","content":["\u56de\u7b54\u6570<b>25<\/b><span class=\"split\"><\/span>\u5e2e\u52a9\u4e86<b>578<\/b>\u4eba","\u519b\u4e8b\u533b\u5b66\u79d1\u5b66\u9662\u9644\u5c5e307\u533b\u9662"],"others":[{"title":"\u519b\u533a\u603b\u533b\u9662\u5468\u8363\u658c","url":"http:\/\/muzhi.baidu.com\/doctor\/home\/d5c4b52b68dce78a570dc50a"},{"title":"\u822a\u5929\u4e2d\u5fc3\u533b\u9662\u9676\u7428","url":"http:\/\/muzhi.baidu.com\/doctor\/home\/1612d50023b50be50e1eeeb3"},{"title":"\u4e2d\u534e\u53e3\u8154\u533b\u5b66\u4f1a\u97e9\u4eae","url":"http:\/\/muzhi.baidu.com\/doctor\/home\/90bc8fc8870977cc53640cd2"}]},"masterUser":{"picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E7%AC%AC330%E5%B1%8A%E7%9F%A5%E9%81%93%E4%B9%8B%E6%98%9F%E5%A4%B4%E5%83%8F.jpg?t=1436439338","title":"18910199239\uff1a\u77e5\u9053\u4e4b\u661f","userName":"18910199239","url":"http:\/\/passport.baidu.com\/?business&un=18910199239&from=prin#2","questionTitle":"\u5317\u4eac\u3001\u6bcd\u5b50\u4e4b\u95f4\u623f\u5c4b\u8fc7\u6237\uff0c\u8bf7\u95ee\u73b0\u5728\u600e\u4e48\u529e\u6700\u5408\u9002\uff1f","questionUrl":"http:\/\/zhidao.baidu.com\/question\/392239752958081685.html","reply":"\u8fc7\u6237\uff1a\u9700\u4ea43%\u5951\u7a0e\uff0c\u5dee\u989d20%\u4e2a\u4eba\u6240\u5f97\u7a0e\uff08\u7f51\u7b7e\u4ef7\u51cf\u53bb\u539f\u8d2d\u4ef7\u768420%\uff09\uff0c\u8d85\u8fc7140\u5e73\u7c73\uff0c\u5373\u4f7f\u6ee1\u4e94\u5e74\uff0c\u8fd8\u8981\u4ea4\u5dee\u989d\u8425\u4e1a\u7a0e5.6%\uff0c\u623f\u672c\u5de5\u672c\u8d3985\u5143\r\n\u8d60\u4e0e\uff1a\u9700\u4ea4\u516c\u8bc1\u8d39\u6216\u53eb\u8d60\u4e0e\u7a0e2%\uff0c\u6211\u5fd8\u4e86\uff0c\u5951\u7a0e3%\uff0c\u623f\u672c\u5de5\u672c\u8d3985\u5143\u3002\u6700\u5173\u952e\u7684\u662f\uff0c\u9009\u62e9\u8d60\u4e0e\uff0c\u5c06\u6765\u4f60\u51fa\u552e\u8be5\u623f\u65f6\uff0c\u4f1a\u5f3a\u5f81\u5168\u989d20%\u7684\u4e2a\u4eba\u6240\u5f97\u7a0e\uff0c\u8fd9\u4e00\u70b9\u6700\u72e0\u4e86\uff0c\u4f60\u4e0d\u80fd\u4fdd\u8bc1\u4e00\u8f88\u5b50\u4e0d\u5356\u623f\u5440\u3002\r\n\u6211\u4e0d\u77e5\u9053\u4f60\u4eec\u8fc7\u6237\u7684\u76ee\u7684\u662f\u4ec0\u4e48\uff0c\u8fc7\u6237\u6bd4\u8d60\u4e0e\u8981\u4fbf\u5b9c\uff0c\u8d77\u7801\u5c06\u6765\u4e0d\u7528\u4ea420%\u4e2a\u7a0e\u5440\u3002\r\n\u8fd8\u6709\u4e00\u62db\uff0c\u505a\u516c\u8bc1\u3002\u4f60\u4eec\u6bcd\u5b50\u4fe9\u5230\u516c\u8bc1\u5904\u505a\u4e2a\u5168\u6743\u59d4\u6258\u516c\u8bc1\u3002\u6bcd\u4eb2\u5c06\u4e00\u5957\u623f\u5b50\u5168\u6743\u59d4\u6258\u7ed9\u4f60\uff0c\u628a\u59d4\u6258\u4e8b\u9879\u5199\u7684\u5168\u4e00\u4e9b\uff0c\u80fd\u5199\u7684\u90fd\u5199\u4e0a\u3002\u5c06\u6765\u5373\u4f7f\u4f60\u51fa\u552e\u6b64\u623f\uff0c\u4e5f\u4e0d\u7528\u4f60\u6bcd\u4eb2\u51fa\u9762\u4e86\uff0c\u4f60\u6709\u59d4\u6258\u4e66\u5c31\u5168\u529e\u4e86\uff0c\u8fd8\u4e0d\u5b58\u5728\u8d60\u4e0e\u4ea7\u751f\u768420%\u7684\u4e2a\u7a0e\u95ee\u9898\uff0c\u8fc7\u6237\u65f6\u7684\u8d39\u7528\u5168\u662f\u4e70\u5bb6\u51fa\u3002","valueNum":"33","content":["\u88ab\u8d5e\u540c\u6570:<b>18091<\/b><span class=\"split\"><\/span>\u56de\u7b54\u6570:<b>49823<\/b>","<span class=\"split\"><\/span><a href=\"http:\/\/hi.baidu.com\/zhishibole\/item\/cc62eee1982f88d1ea34c907\" style=\"display:none\" class=\"interview\" target=\"_blank\">\u8fbe\u4eba\u8bbf\u8c08<\/a>"],"others":[{"title":"yq_whut\uff1a\u77e5\u9053\u4e4b\u661f","url":"http:\/\/passport.baidu.com\/?business&un=yq_whut&from=prin#2"},{"title":"\u4e00\u523b\u6c38\u8fdc523 \uff1a\u77e5\u9053\u4e4b\u661f","url":"http:\/\/passport.baidu.com\/?business&un=%D2%BB%BF%CC%D3%C0%D4%B6523&from=prin#2"},{"title":"\u4e0d\u968f\u610f123456\uff1a\u77e5\u9053\u4e4b\u661f","url":"http:\/\/passport.baidu.com\/?business&un=%B2%BB%CB%E6%D2%E2123456&from=prin#2"}]}},"simpleData":{"wendaji":[{"title":"\u5bd2\u51b7\u5929\u6c14\u80fd\u628a\u4eba\u201c\u51bb\u201d\u5c3f\u8840\uff1f","id":"5980","img":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wendaji\/20160215.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=5980","subTitle":"\u65f6\u5c1a\u5973\u90ce\u5165\u51ac\u540e\u5b66\u97e9\u5267\u660e\u661f\u7684\u4e0a\u539a\u4e0b\u8584\u7684\u201c\u7f8e\u4e3d\u51bb\u4eba\u201d\u7a7f\u8863\u98ce\u683c\uff0c\u7ed3\u679c\u201c\u88ab\u51bb\u51fa\u8840\u5c3f\u201d\uff0c\u7ecf\u533b\u9662\u68c0\u67e5\u540e\u88ab\u8bca\u65ad\u4e3a\u5c3f\u8def\u611f\u67d3\u3002\u662f\u771f\u7684\u5417\uff1f"},{"title":"\u5b58\u5728\u8d8a\u5403\u8d8a\u7626\u7684\u201c\u8d1f\u80fd\u91cf\u98df\u7269\u201d\uff1f","id":"6037","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160514.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=6037","subTitle":"\u7f51\u4f20\uff0c\u5403\u8d1f\u80fd\u91cf\u98df\u7269\uff08Negative Calorie Foods\uff09\u4e0d\u4ec5\u4e0d\u4f1a\u7ed9\u4eba\u4f53\u589e\u52a0\u80fd\u91cf\u50a8\u5907\uff0c\u53cd\u800c\u4f1a\u6d88\u8017\u80fd\u91cf\uff0c\u8d8a\u5403\u8d8a\u51cf\u80a5\u3002\u771f\u7684\u5b58\u5728\u8ba9\u4eba\u8d8a\u5403\u8d8a\u7626\u7684\u8d1f\u80fd\u91cf\u98df\u7269\u5417\uff1f"},{"title":"\u9a6c\u6876\u51b2\u6c34\u65f6\u6700\u597d\u76d6\u4e0a\u9a6c\u6876\u76d6?","id":"4792","img":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wendaji\/20160712sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=4792","subTitle":"\u6709\u7814\u7a76\u663e\u793a\uff0c\u9a6c\u6876\u51b2\u6c34\u65f6\uff0c\u77ac\u95f4\u6c14\u65cb\u4f1a\u5c06\u75c5\u83cc\u6216\u5fae\u751f\u7269\u5e26\u5230\u7a7a\u4e2d\uff0c\u6240\u4ee5\u51b2\u6c34\u65f6\u6700\u597d\u76d6\u4e0a\u9a6c\u6876\u76d6\u3002\u771f\u7684\u5417\uff1f"},{"title":"\u5750\u6708\u5b50\u4e0d\u80fd\u559d\u6c34\uff0c\u8981\u7528\u7c73\u9152\u4ee3\u66ff\uff1f","id":"4779","img":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wendaji\/20160709sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=4779","subTitle":"\u7f51\u4f20\uff1a\u751f\u4ea7\u540e\u4ea7\u5987\u4e25\u7981\u559d\u6c34\uff0c\u5426\u5219\u4e0d\u5229\u4e8e\u4fdd\u6301\u8eab\u6750\uff0c\u4f46\u662f\u53ef\u4ee5\u7528\u7c73\u9152\u4ee3\u66ff\u6c34\u3002\u8fd9\u79cd\u8bf4\u6cd5\u662f\u771f\u7684\u5417\uff1f"},{"title":"\u80be\u591a\u529b\u91cf\u5927\uff1f","id":"6055","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160706sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=6055","subTitle":"\u636e\u62a5\u9053\u67d0\u7537\u5b50\u4f53\u529b\u8d85\u7fa4\uff0c\u540e\u53d1\u73b0\u4ed6\u67094\u4e2a\u80be\u810f\u3002\u56e0\u6b64\u6709\u4eba\u63a8\u6d4b\uff0c\u4ed6\u662f\u201c\u80be\u591a\u529b\u91cf\u5927\u201d\uff0c\u8fd9\u771f\u7684\u6210\u7acb\u5417\uff1f"},{"title":"\u6c34\u679c\u5206\u201c\u516c\u6bcd\u201d\uff0c\u54c1\u8d28\u6709\u5dee\u522b\uff1f","id":"4813","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160703sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=4813","subTitle":"\u636e\u8bf4\u5f88\u591a\u6c34\u679c\u662f\u5206\u201c\u516c\u6bcd\u201d\u7684\uff0c\u201c\u6027\u522b\u201d\u4e0d\u540c\uff0c\u5473\u9053\u54c1\u8d28\u90fd\u4e0d\u540c\uff0c\u6bd4\u5982\u897f\u74dc\u3001\u6a59\u5b50\u7b49\uff0c\u771f\u7684\u5417\uff1f"},{"title":"\u6a61\u76ae\u5b50\u5f39\u4e5f\u53ef\u80fd\u81f4\u547d\uff1f","id":"4047","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160701sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=4047","subTitle":"\u636e\u62a5\u9053\uff0c\u66fe\u6709\u4e2d\u56fd\u8239\u5458\u88ab\u97e9\u56fd\u6d77\u8b66\u53d1\u5c04\u7684\u6a61\u76ae\u5b50\u5f39\u51fb\u4e2d\u8eab\u4ea1\uff0c\u6a61\u76ae\u5b50\u5f39\u771f\u80fd\u6709\u8fd9\u4e48\u5927\u7684\u5a01\u529b\u5417\uff1f"},{"title":"\u55b7\u82b1\u9732\u6c34\u6709\u5bb3\u5065\u5eb7\uff0c\u56e0\u542b\u519c\u836f\u6210\u5206\uff1f","id":"3969","img":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wendaji\/20160629sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=3969","subTitle":"\u9a71\u868a\u82b1\u9732\u6c34\u6709\u519c\u836f\u6279\u51c6\u6587\u53f7\uff0c\u542b\u519c\u836f\u907f\u868a\u80fa\u6210\u5206\u3002\u56e0\u6b64\u55b7\u82b1\u9732\u6c34\uff0c\u5c31\u7b49\u4e8e\u5f80\u8eab\u4e0a\u55b7\u519c\u836f\uff0c\u6709\u5bb3\u5065\u5eb7\u3002\u771f\u7684\u5417\uff1f"},{"title":"\u767e\u5408\u82b1\u5bf9\u732b\u6709\u81f4\u547d\u6bd2\u6027\uff1f","id":"4563","img":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wendaji\/20160627sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=4563","subTitle":"\u636e\u8bf4\u767e\u5408\u82b1\u5bf9\u732b\u6709\u81f4\u547d\u6bd2\u6027\uff0c\u767e\u5408\u7b80\u76f4\u5c31\u662f\u732b\u54aa\u7684\u5929\u654c\uff0c\u771f\u7684\u5417\uff1f"},{"title":"\u72d7\u72d7\u662f\u7ea2\u7eff\u8272\u76f2\uff1f","id":"6054","img":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160622sy.jpg","url":"https:\/\/zhidao.baidu.com\/liuyan\/detail?id=6054","subTitle":"\u636e\u8bf4\u6c6a\u661f\u4eba\u662f\u7ea2\u7eff\u8272\u76f2\uff0c\u6ca1\u6cd5\u533a\u5206\u7ea2\u8272\u548c\u7eff\u8272\uff0c\u65e0\u6cd5\u770b\u5230\u4e16\u754c\u7684\u8272\u5f69\u6591\u6593\u3002\u771f\u7684\u5417\uff1f"}]},"subMenu":{"menu":[{"title":"\u77e5\u9053\u56e2\u961f","url":"http:\/\/zhidao.baidu.com\/team","newTab":"0"},{"title":"\u77e5\u9053\u6d3b\u52a8","url":"http:\/\/zhidao.baidu.com\/s\/activity\/index.html","newTab":"0"},{"title":"\u8d22\u5bcc\u5546\u57ce","url":"http:\/\/zhidao.baidu.com\/shop","newTab":"0"},{"title":"\u516c\u76ca\u5c0f\u6854\u706f","url":"http:\/\/light.baidu.com\/","newTab":"1"},{"title":"\u667a\u80fd\u95ee\u8bca","url":"http:\/\/zhidao.baidu.com\/search?lm=0&rn=10&pn=0&fr=search&ie=gbk&word=%B7%A2%C9%D5%CD%B7%CC%DB%D4%F5%C3%B4%B0%EC","newTab":"1"},{"title":"\u624b\u673a\u77e5\u9053","url":"http:\/\/zhidao.baidu.com\/s\/2011wapadv\/index.html?fr=menu","newTab":"1"}],"ad":{"text":"\u5feb\u6765\u56f4\u89c22013\u6691\u5047\u4f5c\u4e1a\u5927\u76d8\u70b9","url":"http:\/\/zhidao.baidu.com\/topic\/shujiazuoyepandian\/index.html"}},"threeLayout":{"hotspot":[{"title_logo":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/shangcheng%2Fzhuanlantoutu.png","bigImg":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/pai-pc%2FSYW%2Fxiaoshengke.JPG","bigImgTit":"\u300a\u8096\u7533\u514b\u7684\u6551\u8d4e\u300b\u80fd\u591f\u6210\u4e3a\u7ecf\u5178\u80cc\u540e\u7684\u539f\u56e0\uff1f","bigImgUrl":"https:\/\/zhidao.baidu.com\/special\/view?id=dcc05a24626975510200","linkUrl01":"https:\/\/zhidao.baidu.com\/special\/view?id=dbc05a24626975510200","linkTit01":"\u96f6\u57fa\u7840\u7684\u4eba\u5982\u4f55\u81ea\u5b66\u65e5\u8bed\uff1f","linkUrl02":"https:\/\/zhidao.baidu.com\/special\/view?id=dac05a24626975510200","linkTit02":"\u5f20\u97f6\u6db5\u8fd8\u80fd\u518d\u7206\u706b\u4e00\u6b21\u4e48\uff1f","linkUrl03":"https:\/\/zhidao.baidu.com\/special\/view?id=d9c05a24626975510200","linkTit03":"\u690d\u7269\u5976\u6cb9\u548c\u52a8\u7269\u5976\u6cb9\u7684\u533a\u522b\u662f\uff1f"},{"title_logo":"https:\/\/gss0.baidu.com\/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50\/hotspot-tit.png","bigImg":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/20160706sy.jpg","bigImgTit":"\u6d4b\u8bd5\u6807\u9898\u7528\u6765\u6d4b\u8bd5\u7684","bigImgUrl":"https:\/\/zhidao.baidu.com\/","linkUrl01":"https:\/\/zhidao.baidu.com\/","linkTit01":"\u6d4b\u8bd5\u6807\u9898\u7528\u6765\u6d4b\u8bd5\u7684","linkUrl02":"https:\/\/zhidao.baidu.com\/","linkTit02":"\u6d4b\u8bd5\u6807\u9898\u7528\u6765\u6d4b\u8bd5\u7684","linkUrl03":"https:\/\/zhidao.baidu.com\/","linkTit03":"\u6d4b\u8bd5\u6807\u9898\u7528\u6765\u6d4b\u8bd5\u7684"}],"selected":[{"title":"#\u5356\u840c\u6597\u56fe\u5927\u8d5b#\u6652\u4e00\u6652\u4f60\u89c9\u5f97\u6700\u840c\u7684\u8868\u60c5\u5305","url":"https:\/\/zhidao.baidu.com\/question\/1500483605243013339.html","abstract":"\u4eca\u5929\u5356\u840c\u65e5\uff0c\u6211\u53ea\u4e70\u6700\u840c\u7684~\u5feb\u6765\u6652\u4e00\u6652\u4f60\u89c9\u5f97\u6700\u840c\u7684\u8868\u60c5\u5305\uff0c\u6709\u840c\u840c\u54d2\u5ea6\u718a\u62ff\u54e6","thumbImg":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/redian\/1010picture.jpg","linkUrl01":"https:\/\/zhidao.baidu.com\/question\/1952072092388486948.html","linkTit01":"\u4eca\u5929\u4e16\u754c\u7cbe\u795e\u536b\u751f\u65e5\uff0c\u54ea\u4e9b\u4e8b\u8ba9\u4f60\u65e0\u6bd4\u7126\u8651\uff1f","linkUrl02":"https:\/\/zhidao.baidu.com\/question\/1952520542140019268.html","linkTit02":"\u864e\u7259\u8389\u54e5\u8d26\u53f7\u88ab\u5c01\u600e\u4e48\u56de\u4e8b\uff1f","linkUrl03":"https:\/\/zhidao.baidu.com\/question\/397356597984262805.html","linkTit03":"\u6076\u5fc3\u98df\u7269\u4e5f\u6709\u535a\u7269\u9986\uff0c\u4f60\u6709\u54ea\u4e9b\u8ba8\u538c\u7684\u98df\u7269\uff1f","linkUrl04":"https:\/\/zhidao.baidu.com\/question\/1772177861410682700.html","linkTit04":"\u652f\u4ed8\u5b9d\u7684\u4e2d\u56fd\u9526\u9ca4\u662f\u4ec0\u4e48\uff1f","linkUrl05":"https:\/\/zhidao.baidu.com\/question\/461292522277627445.html","linkTit05":"\u201c\u5085\u6052\u201d\u88ab\u5632\u6ca1\u6587\u5316\uff0c\u660e\u661f\u9700\u8981\u6709\u6587\u5316\u5417\uff1f","linkUrl06":"https:\/\/zhidao.baidu.com\/question\/1244483853935135019.html","linkTit06":"2018\u8bfa\u8d1d\u5c14\u7ecf\u6d4e\u5b66\u5956\u83b7\u5f97\u8005\u662f\u8c01\uff1f"}],"shop":{"img":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/shangcheng%2Fchoujiang-shouye-280*150.png","url":"https:\/\/zhidao.baidu.com\/shop\/lottery","title":"\u5546\u57ce"},"selectedDown":[{"title":"\u5168\u56fd\u591a\u5730\u849c\u85b9\u4ef7\u683c\u4e3a\u4f55\u5982\u201c\u8fc7\u5c71\u8f66\u201d\uff1f","url":"https:\/\/zhidao.baidu.com\/question\/2121961538329571547.html?entry=hotcloud","abstract":"\u8054\u5546\u7f51\u6d88\u606f\uff0c\u8fd9\u662f\u56e0\u4e3a\u591a\u5730\u849c\u82d4\u4ef7\u683c\u66b4","thumbImg":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/NJP\/REDIANJUJIAO\/luyi.jpg"}],"doctorAd":{"img":"https:\/\/gss0.bdstatic.com\/7051cy89QMgCncy6lo7D0j9wexYrbOWh7c50\/shangcheng\/pcbanner2-0.jpg","url":"http:\/\/muzhi.baidu.com\/app?from=new_home_more","title":"\u62c7\u6307\u533b\u751fapp\u4e0b\u8f7d"},"videoQues":{"big_pic":"https:\/\/gss0.baidu.com\/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50\/shipin%2Fshoujichongdian.png","big_title":"\u624b\u673a\u5145\u7535\u6709\u54ea\u4e9b\u5e38\u89c1\u8bef\u533a\uff1f","big_time":"03:21","big_con":"\u5728\u65e5\u5e38\u751f\u6d3b\u4e2d\u6211\u4eec\u4e0d\u96be\u53d1\u73b0\uff0c\u624b\u673a\u5728\u7528\u4e86\u4e00\u6bb5\u65f6\u95f4\u540e\uff0c\u7535\u6c60\u5c31\u4f1a\u53d8\u5f97\uff0c\uff0c\uff0c\uff0c\u975e\u5e38\u4e0d\u8010\u7528\u3002","big_url":"http:\/\/zhidao.baidu.com\/feed\/video\/detail?vid=49005a246b6f6c500000","text_title":"\u5982\u4f55\u4f7f\u7528\u516c\u79ef\u91d1\uff1f","text_time":"01:00","text_url":"http:\/\/zhidao.baidu.com\/feed\/video\/detail?vid=e0025a246b6f6c500000","text2_title":"\u5f02\u5730\u604b\u6211\u4eec\u5e94\u8be5\u600e\u4e48\u8c08\uff1f","text2_time":"01:00","text2_url":"http:\/\/zhidao.baidu.com\/feed\/video\/detail?vid=e5025a246b6f6c500000","small_pic1":"https:\/\/gss0.baidu.com\/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50\/shipin%2Fzhibi.png","small_title1":"\u4e3a\u5565\u5317\u65b9\u4eba\u7231\u7528\u7eb8\u5e01\uff0c\u5357\u65b9\u4eba\u7231\u7528\u786c\u5e01\uff1f","small_time1":"03:01","small_url1":"http:\/\/zhidao.baidu.com\/feed\/video\/detail?vid=84035a246b6f6c500000","small_pic2":"https:\/\/gss0.baidu.com\/7051cy89RMgCncy6lo7D0j9wexYrbOWh7c50\/shipin%2Fshicai.png","small_title2":"\u4e2d\u56fd\u4eba\u600e\u4e48\u4ec0\u4e48\u90fd\u5403\uff1f","small_time2":"02:28","small_url2":"http:\/\/zhidao.baidu.com\/feed\/video\/detail?vid=2e015a246b6f6c500000"}},"topImg":{"img":{"flag":"1","bgImg":"https:\/\/gss0.bdstatic.com\/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50\/shoutu.jpg","bgNewImg":"https:\/\/gss0.bdstatic.com\/7051cy89Q1gCncy6lo7D0j9wexYrbOWh7c50\/shoutu.jpg","url":"https:\/\/zhidao.baidu.com\/activity\/worldcup","onlineTime":"2018-06-20 06:10:59","offlineTime":"2018-06-21  22:12:59","title":""}},"zduser":{"zhima":[{"uid":"705024822"},{"uid":"288963898"},{"uid":"167933365"},{"uid":"27083551"},{"uid":"159672680"},{"uid":"1149155364"}],"team":[{"teamid":"36134"},{"teamid":"66199"},{"teamid":"53035"},{"teamid":"73950"},{"teamid":"39998"},{"teamid":"82529"}],"uadmin":[{"uid":"11067176"},{"uid":"1996060887"},{"uid":"76912710"},{"uid":"87470602"},{"uid":"824479064"},{"uid":"5285394"}]}});
	F.context('homeBannerUrl',"http:\/\/zhidao.baidu.com\/daily\/view?id=142592");

	require.async(['home:widget/banner/banner'],function(banner){
		
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['home:widget/selected/selected']);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/daily-question/daily-question'], function (daily) {
		daily.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	F.context('asking',{"list":[{"qid":"693896563734718124","title":"\u6cb3\u5357\u5de5\u4e1a\u5927\u5b66\u665a\u4e0a\u5bbf\u820d\u51e0\u70b9\u5173\u95e8\uff1f","uid":"3533291320","uname":"cn#GfVQppGfuQ","score":"0","cid":"192","deleted":"0","content":"","ext_pack":{"keyword":"\u6cb3\u5357\u5de5\u4e1a\u5927\u5b66\\\u5bbf\u820d\\\u5173\u95e8","content_tag":"\u5927\u5b66_\u9662\u6821\u4fe1\u606f_\u6cb3\u5357","wise_ask_flag":"0","ask_entry":"wise_wenda_tab","submit_from":"iphone","op_uid":"0","request_source":"10","difficult_score":"0.63803","help_array":[{"uid":"94526449","username":"a8918188"}],"sms_sent_status":"2"},"sup":"","encode_qid":"693896563734718124","q_sort_type":"0","createTime":"2 \u5206\u949f\u524d","isFromWap":"1","answerNum":"1","hasZhimaTag":"0"},{"qid":"878397811555951132","title":"\u8c01\u61c2\u9ad8\u538b\u67dc\u6709\u7ea2\u5305","uid":"2596154662","uname":"2208apple","score":"0","cid":"152","deleted":"0","content":"","ext_pack":{"keyword":"\u9ad8\u538b\\\u7ea2\u5305","content_tag":"\u5bb6\u7535_\u88c5\u4fee","help_array":[{"uid":"147363477","username":"yhy12000"}],"wise_ask_flag":"0","submit_from":"iphone","op_uid":"0","request_source":"10","difficult_score":"0.292556","sms_sent_status":"2"},"sup":"","encode_qid":"878397811555951132","q_sort_type":"0","createTime":"3 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"2058136637295751387","title":"\u7b2c\u4e00\u6b21\u7ed9\u5973\u670b\u53cb\u4e70\u4ec0\u4e48\u793c\u7269\u597d","uid":"3477474465","uname":"\u738b\u6c38\u4ecb666","score":"0","cid":"166","deleted":"0","content":"","ext_pack":{"keyword":"\u5973\u670b\u53cb\\\u793c\u7269","content_tag":"\u793c\u8282\u793c\u4eea_\u604b\u7231_\u60c5\u611f","app_extra_score":"0","oi_cid":"0","wap_type":"2","submit_from":"android","open_app":{"app":"\u767e\u5ea6\u77e5\u9053\u5ba2\u6237\u7aef","appkey":"2"},"ignore_spam":"2","op_uid":"0","app_import_flag":"1","request_source":"10","difficult_score":"0.785915"},"sup":"","encode_qid":"2058136637295751387","q_sort_type":"0","createTime":"3 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"1436355680755579499","title":"\u67095000\u591a\uff0c\u8981\u8d2d\u4e70\u4ec0\u4e48\u54c1\u724c\u7684\u7b14\u8bb0\u672c\uff08\u6e38\u620f\u672c\uff09\u6700\u597d\uff1f","uid":"919028232","uname":"\u60f3\u8c61\u7740_6","score":"0","cid":"1280","deleted":"0","content":"","ext_pack":{"keyword":"\u7b14\u8bb0\u672c\\\u54c1\u724c\\\u6e38\u620f","content_tag":"\u7b14\u8bb0\u672c\u7535\u8111_\u6e38\u620f_\u6e38\u620f\u672c","ask_entry":"pcAsk","op_uid":"0","request_source":"10","difficult_score":"0.95512","business":["4280"]},"sup":"","encode_qid":"1436355680755579499","q_sort_type":"0","createTime":"4 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"0"},{"qid":"2058136509805785827","title":"\u4e00\u4e2a\u7a3f\u4ef612000\u5b57\uff0c\u5c0f\u7ea2\u7b2c\u4e00\u5929\u5f55\u5165\u4e86\u8fd9\u4efd\u7a3f\u4ef6\u76841\/6\uff0c\u7167\u8fd9\u6837\u8ba1\u7b97\uff0c\u5c0f\u7ea2\u51e0\u5929\u53ef\u4ee5\u628a\u8fd9\u4efd\u7a3f\u4ef6\u5f55\u5b8c\uff1f","uid":"2109954167","uname":"cn#akuakLQpQp","score":"10","cid":"202","deleted":"0","content":" \n\n","ext_pack":{"keyword":"\u7a3f\u4ef6","content_tag":"\u5b66\u4e60","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.656765"},"sup":"","encode_qid":"2058136509805785827","q_sort_type":"0","createTime":"5 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"652908156618881285","title":"\u6211\u7684\u524d\u4efb\u548c\u6211\u5206\u624b\u540e\u8c08\u8fc7\u5f88\u591a\u6b21\u604b\u7231\uff0c\u542c\u8bf4\u4ed6\u8981\u8ba2\u5a5a\uff0c\u6700\u540e\u8fd8\u662f\u5206\u624b\u4e86\uff0c\u7136\u540e\u53c8\u8c08\u4e86\u4e00\u4e2a\uff0c\u6211\u548c\u4ed6\u4e94\u516d\u5e74\u6ca1\u6709","uid":"1792283787","uname":"\u7231\u597d\u5154\u5b5000","score":"0","cid":"74","deleted":"0","content":"\u8054\u7cfb\uff0c\u6700\u8fd1\u4e00\u76f4\u7ed9\u6211\u70b9\u8d5e\uff0c\u4ed6\u662f\u60f3\u5e72\u561b\u5462\uff0c\u662f\u8981\u548c\u597d\u8fd8\u662f\u600e\u4e48\u7684","ext_pack":{"keyword":"\u5206\u624b\u540e\\\u542c\u8bf4\\\u604b\u7231\\\u8ba2\u5a5a","content_tag":"\u604b\u7231_\u5206\u624b_\u611f\u60c5","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.988756"},"sup":"","encode_qid":"652908156618881285","q_sort_type":"0","createTime":"7 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"1436355552496036339","title":"2018\u5e74\u6267\u4e1a\u836f\u5e08\u8003\u8bd5\u7b54\u6848?","uid":"2699686203","uname":"\u65e5\u591a\u7eea\u6c38\u8def","score":"0","cid":"1093","deleted":"0","content":"\u6709\u77e5\u9053\u7684\u524d\u8f88\u5417\uff0c\u65e0\u8bba\u591a\u665a\u591a\u7d2f\u7236\u4eb2\u603b\u8f6c\u3002","ext_pack":{"keyword":"\u6267\u4e1a\u836f\u5e08\u8003\u8bd5","content_tag":"\u804c\u4e1a\u6559\u80b2_\u5b66\u4e60_\u6267\u4e1a\u836f\u5e08\u8003\u8bd5","ask_entry":"pcAsk","op_uid":"0","request_source":"10","difficult_score":"0.286922"},"sup":"","encode_qid":"1436355552496036339","q_sort_type":"0","createTime":"8 \u5206\u949f\u524d","isFromWap":"0","answerNum":"1","hasZhimaTag":"0"},{"qid":"1900113430643599500","title":"\u6211\u4fe1\u7528\u5361\u5dee\u4e867\u4e07\u591a\uff0c\u6ca1\u903e\u671f\uff0c\u6ca1\u94b1\u8fd8\uff0c\u7136\u540e\u6211\u8001\u516c\u7528\u516c\u79ef\u91d1\u8d37\u6b3e\u4e70\u623f\u884c\u5417\uff0c\u4ed6\u5f81\u4fe1\u6ca1\u95ee\u9898","uid":"1546423024","uname":"\u96f7\u9759\u975912345555","score":"0","cid":"153","deleted":"0","content":"","ext_pack":{"keyword":"\u4fe1\u7528\u5361\\\u516c\u79ef\u91d1\u8d37\u6b3e\u4e70\u623f\\\u4e07\u591a\\\u903e\u671f\\\u8001\u516c","wap_unlogin_baiduid":"BB6739E968A8FB0962CBDD6B9FB66966:FG=1","content_tag":"\u516c\u79ef\u91d1_\u8d37\u6b3e_\u4fe1\u7528\u5361","wise_ask_flag":"0","submit_from":"iphone","op_uid":"0","request_source":"10","difficult_score":"0.826482","sms_sent_status":"2"},"sup":"","encode_qid":"1900113430643599500","q_sort_type":"0","createTime":"9 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"2208072036453490228","title":"\u600e\u6837\u5b66\u597d\u9ad8\u4e2d\u5730\u7406\uff1f\u9ad8\u56db\u4e86","uid":"308429650","uname":"907284497","score":"0","cid":"74","deleted":"0","content":"\u600e\u6837\u5b66\u597d\u9ad8\u4e2d\u5730\u7406\uff1f\u9ad8\u56db\u4e86\u6211\u662f\u4e00\u540d\u8d35\u5dde\u6587\u79d1\u590d\u8bfb\u751f\uff0c\u73b0\u5728\u5f00\u5b66\u4e24\u4e2a\u6708\u4e86\uff0c\u4f46\u7531\u4e8e\u4e4b\u524d\u57fa\u7840\u5e76\u4e0d\u597d\uff0c\u524d\u4e24\u4e2a\u6708\u5fc3\u6001\u4e0a\u53c8\u6709\u70b9\u95ee\u9898\uff0c\u6240\u4ee5\u5730\u7406\u6210\u7ee9\u4e00\u584c\u7cca\u6d82\u3002\u4f46\u662f\u6211\u60f3\u8981\u7a81\u7834\u6587\u7efc\uff0c\u4f46\u662f\u5730\u7406\u8001\u662f\u62d6\u540e\u817f\uff0c\u800c\u4e14\u6211\u4eec\u5730\u7406\u8001\u5e08\u867d\u7136\u4e0a\u5f97\u597d\uff0c\u4f46\u662f\u6211\u4e0d\u559c\u6b22\u4ed6\u7684\u65b9\u6cd5\uff0c\u4ed6\u603b\u662f\u4e0a\u8bfe\u63d0\u95ee\uff0c\u7b54\u4e0d\u51fa\u6765\u7684\u6216\u662f\u8bf4\u5f97\u4e0d\u6d41\u7545\u7684\uff0c\u5c31\u8981\u88ab\u7f5a\u6284\uff0c\u8981\u4e48\u6284100\uff0c200\u904d\uff0c\u8981\u4e48\u5c31\u662f1000\u904d\uff0c\u800c\u4e14\u7b2c\u4e8c\u5929\u5c31\u8981\u4e0a\u4ea4\u68c0\u67e5\uff0c\u6284\u4e0d\u5b8c\u7684\u4ee5\u540e\u5c31\u4e0d\u80fd\u4e0a\u5730\u7406\u8bfe\u4e86\uff0c\u8fd9\u5e76\u4e0d\u662f\u73a9\u7b11\uff01 \u672c\u4e8b\u6211\u57fa\u7840\u5dee\uff0c\u73b0\u5728\u8001\u5e08\u7684\u65b9\u6cd5\u53c8\u662f\u8fd9\u6837\u7684\uff0c\u6211\u771f\u7684\u6709\u70b9\u62b5\u89e6\u5fc3\u91cc\u3002\u4f46\u662f\u6211\u53c8\u4e0d\u60f3\u653e\u5f03\uff0c\u8be5\u600e\u4e48\u529e\uff1f","ext_pack":{"keyword":"\u9ad8\u4e2d\u5730\u7406\\\u5b66\u597d","content_tag":"\u9ad8\u4e2d_\u5730\u7406_\u9ad8\u4e2d\u5730\u7406","app_extra_score":"0","oi_cid":"0","wap_type":"2","submit_from":"android","open_app":{"app":"\u767e\u5ea6\u77e5\u9053\u5ba2\u6237\u7aef","appkey":"2"},"ignore_spam":"2","op_uid":"0","app_import_flag":"1","request_source":"10","difficult_score":"0.864478"},"sup":"","encode_qid":"2208072036453490228","q_sort_type":"0","createTime":"9 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"2058136381674548907","title":"\u5fae\u4fe1\u5982\u4f55\u627e\u56de\u81ea\u5df1\u5220\u6389\u7684\u597d\u53cb","uid":"2814163889","uname":"LLB9786","score":"0","cid":"1242","deleted":"0","content":"","ext_pack":{"keyword":"\u627e\u56de\u81ea\u5df1\\\u597d\u53cb","content_tag":"\u5fae\u4fe1_\u624b\u673a_\u804a\u5929\u8f6f\u4ef6","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.94089"},"sup":"","encode_qid":"2058136381674548907","q_sort_type":"0","createTime":"9 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"693896307408328244","title":"\u6211\u5bb6\u513f\u5b50\u5728\u7535\u89c6\u4e0a\u73a9\u9177\u5f00\u7f51\u7edc\u79d1\u6280\u6709\u9650\u516c\u53f8\u51fa\u7684\u5965\u7279\u66fc\u5f52\u6765\u65f6\u62ff\u624b\u673a\u7528\u5fae\u4fe1\u626b\u4e86\u7535\u89c6\u4e0a\u7684\u4e8c\u7ef4\u7801\u4ed8\u4e86\u4e00\u5343\u5143","uid":"1834083985","uname":"cn#BuVkVaukka","score":"0","cid":"1242","deleted":"0","content":"","ext_pack":{"keyword":"\u7535\u89c6\\\u7f51\u7edc\u79d1\u6280\\\u5965\u7279\u66fc\\\u4e8c\u7ef4\u7801\\\u513f\u5b50","content_tag":"\u624b\u673a_\u7f51\u7edc_\u5fae\u4fe1","help_array":[{"uid":"1718709045","username":"\u4e2d\u56fd\u8054\u901a\u6c83\u77e5\u9053"}],"wise_ask_flag":"0","submit_from":"iphone","op_uid":"0","request_source":"10","difficult_score":"0.316704"},"sup":"","encode_qid":"693896307408328244","q_sort_type":"0","createTime":"9 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"2208072036004098188","title":"\u8d37\u6b3e\u5ba1\u6279\u901a\u8fc7\u4e86\uff0c\u53ef\u4ee5\u523710\u4e07\u4fe1\u7528\u5361\u5417\uff1f","uid":"3897104647","uname":"cn#GuQpQGQBpp","score":"0","cid":"1039","deleted":"0","content":"\u4e70\u623f\u540e\u7a0e\uff0c\u4e2d\u4ecb\u8d39\u6ca1\u6709\u5237\u4fe1\u7528\u5361\u4f1a\u4e0d\u4f1a\u5f71\u54cd\u653e\u6b3e\uff0c\u8d37\u6b3e\u5ba1\u6279\u901a\u8fc7\u4e86","ext_pack":{"keyword":"\u8d37\u6b3e\\\u4fe1\u7528\u5361\\\u5ba1\u6279","wap_unlogin_baiduid":"DBB0C7124426EB8347C90BB0CFB7E6BD:FG=1","content_tag":"\u4fe1\u7528\u5361_\u8d37\u6b3e_\u94f6\u884c","wise_ask_flag":"0","submit_from":"iphone","op_uid":"0","request_source":"10","difficult_score":"0.75711"},"sup":"","encode_qid":"2208072036004098188","q_sort_type":"0","createTime":"10 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"2058136317801402147","title":"\u859b\u4e4b\u8c26\u8bf4\uff0c\u505a\u4eba\u4e00\u5b9a\u8981\u5f00\u5fc3\uff0c\u4f60\u4e0d\u4f1a\u6b7b\uff0c\u5c31\u6ca1\u6709\u4ec0\u4e48\u53ef\u4ee5\u96be\u8fc7\u7684\uff0c\u9047\u5230\u632b\u6298\u4e5f\u8981\u5f00\u5fc3\uff0c\u6162\u6162\u6765\uff0c\u6bcf\u5929\u628a\u624b\u5934\u7684\u4e8b","uid":"921073578","uname":"\u6d41\u901d\u51cb\u96f6","score":"0","cid":"74","deleted":"0","content":"\u505a\u597d\uff0c\u603b\u6709\u4e00\u5929\u4f60\u4f1a\u6210\u529f\u7684\uff0c\u5927\u8d77\u5927\u843d\u8c01\u90fd\u8981\u7ecf\u5386\u7684\uff0c\u4e00\u5207\u90fd\u4f1a\u597d\u8d77\u6765\u7684\u3002\u662f\u8fd9\u6837\u5417\uff1f","ext_pack":{"keyword":"\u859b\u4e4b\u8c26\\\u505a\u4eba\\\u5f00\u5fc3\\\u632b\u6298","content_tag":"\u611f\u60c5_\u70e6\u607c","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.943123"},"sup":"","encode_qid":"2058136317801402147","q_sort_type":"0","createTime":"10 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"1436355424685292139","title":"\u5982\u679c\u6211\u628a\u4f60\u60f9\u5230\u66b4\u6012\uff0c\u800c\u4f60\u53c8\u77e5\u9053\u6211\u7684\u81f4\u547d\u5f31\u70b9\uff0c\u4f60\u4f1a\u5e72\u4ec0\u4e48\uff1f","uid":"865656247","uname":"baipixie","score":"20","cid":"74","deleted":"0","content":"\u6211\u6700\u6015\u522b\u4eba\u78b0\u6211\u53d1\u578b\uff0c\u9886\u5e26\u548c\u767d\u978b\uff0c\u6211\u521a\u505a\u7684\u53d1\u578b\uff0c\u521a\u64e6\u7684\u767d\u978b\uff0c\u9886\u5e26\u7ed3\u4e5f\u5f04\u7684\u5f88\u6b63\n\n\n","ext_pack":{"keyword":"\u5982\u679c\\\u66b4\u6012\\\u81f4\u547d\u5f31\u70b9\\\u5e72\u4ec0\u4e48","content_tag":"\u611f\u60c5_\u70e6\u607c","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.933785"},"sup":"","encode_qid":"1436355424685292139","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"878397491549437852","title":"\u5173\u4e8ex\u7684\u4e8c\u6b21\u65b9\u7a0b\uff081\uff0d2m\uff09x&#178;\uff0d2\u221am+1 x\uff1d1 \u6709\u4e24\u4e2a\u5b9e\u6570\u6839\u6c42m\u7684\u53d6\u503c\u8303\u56f4\uff08m+1\uff09\u5728\u6839\u53f7\u91cc","uid":"3447995939","uname":"panrongzhe","score":"0","cid":"202","deleted":"0","content":"\u9ebb\u70e6\u4e86","ext_pack":{"keyword":"\u4e8c\u6b21\u65b9\u7a0b\\m+1\\\u5b9e\u6570\\\u6839\u53f7","content_tag":"\u6570\u5b66_\u5b66\u4e60_\u7406\u5de5\u5b66\u79d1","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.592654"},"sup":"","encode_qid":"878397491549437852","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"652908028423993925","title":"\u7537\u670b\u53cb\u56e0\u4e3a\u5de5\u4f5c\u4e0a\u51fa\u4e86\u95ee\u9898\uff0c","uid":"1480980462","uname":"okdzbj168","score":"0","cid":"74","deleted":"0","content":"\u7537\u670b\u53cb\u56e0\u4e3a\u5de5\u4f5c\u4e0a\u9762\u51fa\u4e86\u95ee\u9898\uff0c\u4e25\u91cd\u5230\u5feb\u7834\u4ea7\u7684\u72b6\u6001\uff0c\u4ed6\u5fc3\u60c5\u7279\u522b\u4e0d\u597d\uff0c\u4e5f\u4e0d\u600e\u4e48\u5403\u996d\uff0c\u4e5f\u4e0d\u600e\u4e48\u8bf4\u8bdd\uff0c\u6211\u770b\u7740\u5f88\u5fc3\u75bc\uff0c\u4f46\u662f\u6211\u53c8\u4e0d\u61c2\u4ed6\u7684\u5de5\u4f5c\uff0c\u4e5f\u4e0d\u77e5\u9053\u95ee\u9898\u51fa\u5728\u54ea\uff1f\u600e\u4e48\u529e\uff1f\u6211\u505a\u4e3a\u5973\u670b\u53cb\u8be5\u600e\u4e48\u505a\u624d\u597d\uff1f\u6c42\u670b\u53cb\u4eec\u5e2e\u6211\u60f3\u60f3\u529e\u6cd5\uff0c\u600e\u4e48\u6837\u505a\u624d\u80fd\u8ba9\u4ed6\u597d\u53d7\u70b9\uff1f\u5728\u6b64\u5148\u8c22\u8c22\u4f60\u4eec","ext_pack":{"keyword":"\u7537\u670b\u53cb\\\u5de5\u4f5c","content_tag":"\u604b\u7231_\u60c5\u611f_\u7231\u60c5","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.796442"},"sup":"","encode_qid":"652908028423993925","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"},{"qid":"878397491484373772","title":"\u6253\u7b97\u4e70\u8001\u6b3e\u6717\u9038","uid":"1475272739","uname":"cn#BBBBpfLQGG","score":"0","cid":"152","deleted":"0","content":"\u65b0\u6b3e\u4ef7\u683c\u592a\u9ad8\u4e86","ext_pack":{"keyword":"\u6717\u9038","content_tag":"\u6c7d\u8f66\u8d2d\u4e70_\u6c7d\u8f66","app_extra_score":"0","oi_cid":"0","wap_type":"2","submit_from":"android","open_app":{"app":"\u767e\u5ea6\u77e5\u9053\u5ba2\u6237\u7aef","appkey":"2"},"ignore_spam":"2","op_uid":"0","app_import_flag":"1"},"sup":"","encode_qid":"878397491484373772","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"693896243342751764","title":"\u78ca\u79d1 NW336\u65e0\u7ebfUSB\u8054\u901a\u7f51\u5361\u9a71\u52a8\u4e0b\u8f7d\u540e\u600e\u4e48\u5b89\u88c5","uid":"3446669991","uname":"kzgyc86","score":"0","cid":"1078","deleted":"0","content":"\u78ca\u79d1 NW3 36\u65e0\u7ebfUSB\u8054\u901a\u7f51\u5361\u9a71\u52a8\u4e0b\u8f7d\u540e\u600e\u4e48\u5b89\u88c5","ext_pack":{"keyword":"nw336\\\u8054\u901a\\\u7f51\u5361\u9a71\u52a8\\\u78ca\u79d1\\\u65e0\u7ebf","content_tag":"\u9a71\u52a8_\u7f51\u7edc_\u786c\u4ef6","ask_entry":"pcAsk","op_uid":"0","request_source":"10","difficult_score":"0.519658","sms_sent_status":"2","business":["7"]},"sup":"","encode_qid":"693896243342751764","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"0"},{"qid":"693896243342609084","title":"\u4e70\u6717\u9038\u54ea\u6b3e\u8f66\u578b\u6027\u4ef7\u6bd4\u9ad8","uid":"1475272739","uname":"cn#BBBBpfLQGG","score":"0","cid":"202","deleted":"0","content":"\u5982\u9898","ext_pack":{"keyword":"\u6717\u9038\\\u6027\u4ef7\u6bd4\u9ad8\\\u8f66\u578b","content_tag":"\u6c7d\u8f66\u8d2d\u4e70_\u6c7d\u8f66_\u8f66\u578b","app_extra_score":"0","oi_cid":"0","wap_type":"2","submit_from":"android","open_app":{"app":"\u767e\u5ea6\u77e5\u9053\u5ba2\u6237\u7aef","appkey":"2"},"ignore_spam":"2","op_uid":"0","app_import_flag":"1","request_source":"10","difficult_score":"0.076794"},"sup":"","encode_qid":"693896243342609084","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"1","answerNum":"2","hasZhimaTag":"0"},{"qid":"693896243278527164","title":"\u5927\u56db\u4e0a\u5b66\u671f\u90fd\u5e72\u4e9b\u4ec0\u4e48\uff1f","uid":"1145902240","uname":"\u83a3\u839c\u8349\u5fc4","score":"20","cid":"74","deleted":"0","content":"\u60f3\u627e\u4e2a\u5730\u65b9\u5b9e\u4e60\uff0c\u4f46\u662f\u4e00\u5468\u56db\u5929\u90fd\u6709\u8bfe\uff0c\u8001\u5e08\u8fd8\u4e0d\u8ba9\u8bf7\u5047\uff0c\u51fa\u53bb\u5b9e\u4e60\u6839\u672c\u4e0d\u53ef\u80fd\uff0c\u5b9e\u4e60\u516c\u53f8\u8981\u6c42\u6bcf\u5468\u81f3\u5c11\u8981\u4e09\u4e2a\u5de5\u4f5c\u65e5\uff0c\u90a3\u6211\u73b0\u5728\u5e94\u8be5\u505a\u4e9b\u4ec0\u4e48\u5462\uff1f\u73b0\u5728\u53bb\u9762\u8bd5\u7684\u8bdd\uff0c\u5b9e\u4e60\u53ef\u4ee5\u7b49\u5230\u4e0b\u5b66\u671f\u518d\u5f00\u59cb\u5417","ext_pack":{"content_tag":"\u5b66\u4e60_\u6559\u80b2_\u6821\u56ed\u751f\u6d3b","submit_from":"na","ignore_spam":"2","op_uid":"0","request_source":"10","difficult_score":"0.46123","business":["87901"],"old_repush":"0","wap_get_better_ans":"1","repush_time":"1","update_time":"1539181476"},"sup":"","encode_qid":"693896243278527164","q_sort_type":"0","createTime":"11 \u5206\u949f\u524d","isFromWap":"0","answerNum":"2","hasZhimaTag":"1"}]});
	require.async(['home:widget/unlogin-push/unlogin-push'], function(pushLogin){
		
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/product-show/product-show'], function(show){
		
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['home:widget/zd-user/zhima/zhima'],function(zhima){
		zhima.init();
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(['common:widget/lib/jquery/jquery','home:widget/zd-user/promotions/promotions','common:widget/js/util/log/log'],function($, pro, log) {
		pro.init([{"imgUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/xuefulan\/%E6%96%B0%E7%89%88280-120.png","url":"https:\/\/zhidao.baidu.com\/kit\/topic?name=xuefulan01","title":null},{"imgUrl":"http:\/\/iknow-base.cdn.bcebos.com\/%E6%88%BF%E4%BA%A7%E4%B8%93%E9%A2%98-%E6%90%9C%E7%8B%90%E7%84%A6%E7%82%B9%2FPC%2F%E7%89%A9%E6%96%99280-120.png","url":"https:\/\/zhidao.baidu.com\/activity\/commonone?name=fangChan","title":"9.26"}]);
		if($('.wgt-promotions').css('display') != 'none') {
			log.addKey({
				'right_promotions': 1
			});
		}
	});
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;	require.async(["home:widget/zd-user/rank/rank"]);
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['home:widget/pgc/mavin/mavin'], function(mavin) {
		mavin.init({
							mavinList: [{"title":"1\u5146\u7b49\u4e8e\u591a\u5c11\u4eba\u6c11\u5e01","qid":"982826089674414659","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/sjz.png","name":"sjz625626","field":"\u94f6\u884c","uname":"sjz625626"},{"title":"\u5916\u9762\u4fee\u8def.\u6270\u6c11.\u80fd\u6295\u8bc9\u5417\uff1f","qid":"396401924467043005","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/1.png","name":"\u90ed\u864e","field":"\u6cd5\u5f8b","uname":"\u90ed\u864e\u5f8b\u5e08"},{"title":"\u4e70\u7eb8\u9ec4\u91d1\u771f\u7684\u8d5a\u94b1\u5417\uff1f","qid":"2207573519719006468","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/2.png","name":"\u5c0f\u72fc\u590f\u559c\u4fca","field":"\u9ec4\u91d1","uname":"\u5c0f\u72fc\u590f\u559c\u4fca"},{"title":"\u6211\u4eec\u56fd\u5bb6\u6709\u54ea\u4e9b\u6709\u65e5\u8bed\u6216\u5fb7\u8bed\u4e13\u4e1a\u7684\u91cd\u70b9\u5927\u5b66\uff1f","qid":"434951595532437684","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/4.png","name":"\u7f2a\u8001\u5e08\u5999\u7b14\u751f\u82b1","field":"\u5347\u5b66\u5165\u5b66","uname":"\u7f2a\u8001\u5e08\u5999\u7b14\u751f\u82b1"},{"title":"\u7f51\u4e0a\u4e70\u7684\u706b\u8f66\u7968\u9000\u7968\u540e\uff0c\u94b1\u4ec0\u4e48\u65f6\u95f4\u8fd4\u56de\u652f\u4ed8\u5b9d","qid":"1496074284674140859","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/5.png","name":"\u6881\u5c0f\u6d9b2016","field":"\u4ea4\u901a","uname":"\u6881\u5c0f\u6d9b2016"},{"title":"\u79bb\u804c\u9700\u8981\u6ce8\u610f\u4ec0\u4e48\uff1f","qid":"1689677107963609588","picUrl":"https:\/\/gss0.baidu.com\/94o3dSag_xI4khGko9WTAnF6hhy\/zhidao\/wh%3D450%2C600\/sign=679638e3cb3d70cf4cafa209cdecfd36\/adaf2edda3cc7cd995b85e033b01213fb90e9156.jpg","name":"\u621a\u5bb6\u4eba","field":"\u5211\u4e8b\u6848\u4ef6","uname":"\u621a\u5bb6\u4eba"},{"title":"\u8dd1\u6b65\u7684\u6b63\u786e\u65b9\u6cd5\uff1f","qid":"1756848299838886148","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/8.png","name":"jiyitaiji","field":"\u6b66\u672f","uname":"jiyitaiji"},{"title":"\u8d22\u52a1\u5ba1\u8ba1\u62a5\u544a\u6307\u7684\u662f\u4ec0\u4e48\uff1f","qid":"1543357056713003667","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/10.png","name":"mokai1981","field":"\u8d22\u52a1","uname":"mokai1981"},{"title":"\u4ec0\u4e48\u662f\u793e\u4f1a\u7f51\u7edc\u5206\u6790\u6cd5?","qid":"1818455684768288988","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/9.png","name":"\u4e8e\u901a\u6d77","field":"\u4e92\u8054\u7f51","uname":"\u8be0\u91ca\u4e28\u706c\u90a3\u4efd\u7231"},{"title":"\u5916\u4f01\u5f00\u9664\u804c\u5de5\u5e94\u8be5\u8d54\u4ed8\u51e0\u4e2a\u6708\u7684\u5de5\u8d44\uff1f","qid":"390880516460427445","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/111.png","name":"\u4e13\u4e1a\u4ef2\u88c1\u5458","field":"\u52b3\u52a8\u4eba\u4e8b","uname":"\u4e13\u4e1a\u4ef2\u88c1\u5458"},{"title":"\u6c7d\u8f66\u88ab\u76d7\u4fdd\u9669\u8d54\u591a\u5c11\uff1f","qid":"1639130482196899620","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/heyangyang.png","name":"\u4fdd\u9669\u8d3a\u6d0b\u6d0b","field":"\u4fdd\u9669","uname":"\u4fdd\u9669\u8d3a\u6d0b\u6d0b"},{"title":"\u623f\u4ea7\u5951\u7a0e\u600e\u6837\u8ba1\u7b97\uff1f","qid":"1530819788","picUrl":"https:\/\/gss0.bdstatic.com\/7051cy89RcgCncy6lo7D0j9wexYrbOWh7c50\/wmy\/HUBAOCHAO.png","name":"\u80e1\u4fdd\u671d","field":"\u8d22\u52a1","uname":"\u4ef0\u671b\u5929\u7a7a2018"}]
					});
    });
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['home:widget/pgc/videoQuesAsk/videoQuesAsk'], function (v) {
        v.init();
    })
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require.async(['home:widget/class/class'], function(wClass) {
		wClass.init({
			                tagClass: {"101":{"child":{"101100":{"cid":"101100","name":"\u7ecf\u6d4e","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101100"},"101101":{"cid":"101101","name":"\u94f6\u884c","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101101"},"101102":{"cid":"101102","name":"\u57fa\u91d1","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101102"},"101103":{"cid":"101103","name":"\u91d1\u878d","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101103"},"101104":{"cid":"101104","name":"\u8bc1\u5238","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101104"},"101105":{"cid":"101105","name":"\u9ec4\u91d1","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101105"},"101106":{"cid":"101106","name":"\u5916\u6c47","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101106"},"101107":{"cid":"101107","name":"\u671f\u8d27","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101107"},"101108":{"cid":"101108","name":"\u4fdd\u9669","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101108"},"101109":{"cid":"101109","name":"\u8d38\u6613","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101109"},"101110":{"cid":"101110","name":"\u8d22\u653f","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101110"},"101111":{"cid":"101111","name":"\u5546\u4e1a","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101111"},"101112":{"cid":"101112","name":"\u623f\u5730\u4ea7","isDelete":"0","level":"2","picUrl":"","parentCid":"101","id":"101112"}},"cid":"101","name":"\u7ecf\u6d4e\u91d1\u878d","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_15.png","parentCid":"0","id":"101"},"102":{"child":{"102100":{"cid":"102100","name":"\u4f01\u4e1a\u7ba1\u7406","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102100"},"102101":{"cid":"102101","name":"\u4eba\u529b\u8d44\u6e90","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102101"},"102102":{"cid":"102102","name":"\u8d22\u52a1","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102102"},"102103":{"cid":"102103","name":"\u5e02\u573a\u8425\u9500","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102103"},"102104":{"cid":"102104","name":"\u521b\u4e1a","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102104"},"102105":{"cid":"102105","name":"\u878d\u8d44","isDelete":"0","level":"2","picUrl":"","parentCid":"102","id":"102105"}},"cid":"102","name":"\u4f01\u4e1a\u7ba1\u7406","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/mavin\/i-class-manage.png","parentCid":"0","id":"102"},"103":{"child":{"103101":{"cid":"103101","name":"\u6cd5\u5f8b","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103101"},"103102":{"cid":"103102","name":"\u5a5a\u59fb\u7ee7\u627f","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103102"},"103103":{"cid":"103103","name":"\u52b3\u52a8\u4eba\u4e8b","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103103"},"103104":{"cid":"103104","name":"\u4ea4\u901a\u4e8b\u6545","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103104"},"103105":{"cid":"103105","name":"\u533b\u7597\u7ea0\u7eb7","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103105"},"103106":{"cid":"103106","name":"\u8d22\u4ea7\u623f\u4ea7","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103106"},"103107":{"cid":"103107","name":"\u77e5\u8bc6\u4ea7\u6743","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103107"},"103108":{"cid":"103108","name":"\u6743\u76ca\u7ef4\u62a4","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103108"},"103109":{"cid":"103109","name":"\u5211\u4e8b\u6848\u4ef6","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103109"},"103110":{"cid":"103110","name":"\u516c\u53f8\u4e8b\u52a1","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103110"},"103111":{"cid":"103111","name":"\u503a\u52a1\u503a\u6743","isDelete":"0","level":"2","picUrl":"","parentCid":"103","id":"103111"}},"cid":"103","name":"\u6cd5\u5f8b\u6cd5\u89c4","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/mavin\/i-class-legal.png","parentCid":"0","id":"103"},"104":{"child":{"104101":{"cid":"104101","name":"\u519b\u4e8b","isDelete":"0","level":"2","picUrl":"","parentCid":"104","id":"104101"},"104102":{"cid":"104102","name":"\u5b97\u6559","isDelete":"0","level":"2","picUrl":"","parentCid":"104","id":"104102"},"104103":{"cid":"104103","name":"\u65f6\u4e8b\u653f\u6cbb","isDelete":"0","level":"2","picUrl":"","parentCid":"104","id":"104103"},"104104":{"cid":"104104","name":"\u529e\u516c","isDelete":"0","level":"2","picUrl":"","parentCid":"104","id":"104104"},"104105":{"cid":"104105","name":"\u804c\u4e1a","isDelete":"0","level":"2","picUrl":"","parentCid":"104","id":"104105"}},"cid":"104","name":"\u793e\u4f1a\u6c11\u751f","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_17.png","parentCid":"0","id":"104"},"105":{"child":{"105100":{"cid":"105100","name":"\u6559\u80b2","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105100"},"105101":{"cid":"105101","name":"\u5929\u6587","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105101"},"105102":{"cid":"105102","name":"\u5730\u7403\u79d1\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105102"},"105103":{"cid":"105103","name":"\u7269\u7406","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105103"},"105104":{"cid":"105104","name":"\u519c\u4e1a","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105104"},"105105":{"cid":"105105","name":"\u751f\u7269","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105105"},"105106":{"cid":"105106","name":"\u793e\u4f1a\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105106"},"105107":{"cid":"105107","name":"\u57f9\u8bad","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105107"},"105108":{"cid":"105108","name":"\u6570\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105108"},"105109":{"cid":"105109","name":"\u79d1\u5b66\u6280\u672f","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105109"},"105110":{"cid":"105110","name":"\u73af\u5883\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105110"},"105111":{"cid":"105111","name":"\u5fc3\u7406\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105111"},"105112":{"cid":"105112","name":"\u804c\u4e1a\u6559\u80b2","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105112"},"105113":{"cid":"105113","name":"\u5347\u5b66\u5165\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105113"},"105114":{"cid":"105114","name":"\u5316\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105114"},"105115":{"cid":"105115","name":"\u5916\u8bed\u5b66\u4e60","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105115"},"105116":{"cid":"105116","name":"\u533b\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105116"},"105117":{"cid":"105117","name":"\u8bed\u6587","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105117"},"105118":{"cid":"105118","name":"\u7eba\u7ec7","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105118"},"105119":{"cid":"105119","name":"\u5efa\u7b51\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105119"},"105120":{"cid":"105120","name":"\u51fa\u56fd\u7559\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"105","id":"105120"}},"cid":"105","name":"\u79d1\u5b66\u6559\u80b2","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_26.png","parentCid":"0","id":"105"},"106":{"child":{"106101":{"cid":"106101","name":"\u70f9\u996a","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106101"},"106102":{"cid":"106102","name":"\u88c5\u9970","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106102"},"106103":{"cid":"106103","name":"\u5065\u8eab","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106103"},"106104":{"cid":"106104","name":"\u5ba0\u7269","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106104"},"106105":{"cid":"106105","name":"\u6c7d\u8f66","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106105"},"106106":{"cid":"106106","name":"\u6c11\u4fd7","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106106"},"106107":{"cid":"106107","name":"\u4ea4\u901a","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106107"},"106108":{"cid":"106108","name":"\u751f\u6d3b","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106108"},"106109":{"cid":"106109","name":"\u5065\u5eb7\u77e5\u8bc6","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106109"},"106110":{"cid":"106110","name":"\u8d2d\u7269","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106110"},"106111":{"cid":"106111","name":"\u80b2\u513f","isDelete":"0","level":"2","picUrl":"","parentCid":"106","id":"106111"}},"cid":"106","name":"\u5065\u5eb7\u751f\u6d3b","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_09.png","parentCid":"0","id":"106"},"107":{"child":{"107101":{"cid":"107101","name":"\u7403\u7c7b\u8fd0\u52a8","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107101"},"107102":{"cid":"107102","name":"\u51b0\u96ea\u8fd0\u52a8","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107102"},"107103":{"cid":"107103","name":"\u8db3\u7403\u8fd0\u52a8","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107103"},"107104":{"cid":"107104","name":"\u667a\u529b\u8fd0\u52a8","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107104"},"107105":{"cid":"107105","name":"\u6b66\u672f","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107105"},"107106":{"cid":"107106","name":"\u4f53\u80b2\u8fd0\u52a8","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107106"},"107107":{"cid":"107107","name":"\u4f53\u80b2\u8d5b\u4e8b","isDelete":"0","level":"2","picUrl":"","parentCid":"107","id":"107107"}},"cid":"107","name":"\u4f53\u80b2\u8fd0\u52a8","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_07.png","parentCid":"0","id":"107"},"108":{"child":{"108101":{"cid":"108101","name":"\u7ed8\u753b","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108101"},"108102":{"cid":"108102","name":"\u5de5\u827a\u54c1","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108102"},"108103":{"cid":"108103","name":"\u5386\u53f2","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108103"},"108104":{"cid":"108104","name":"\u89c6\u89c9\u8bbe\u8ba1","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108104"},"108105":{"cid":"108105","name":"\u6587\u5b66","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108105"},"108106":{"cid":"108106","name":"\u65f6\u5c1a","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108106"},"108107":{"cid":"108107","name":"\u4e66\u6cd5","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108107"},"108108":{"cid":"108108","name":"\u827a\u672f","isDelete":"0","level":"2","picUrl":"","parentCid":"108","id":"108108"}},"cid":"108","name":"\u6587\u5316\u827a\u672f","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_24.png","parentCid":"0","id":"108"},"109":{"child":{"109101":{"cid":"109101","name":"\u6570\u7801","isDelete":"0","level":"2","picUrl":"","parentCid":"109","id":"109101"},"109102":{"cid":"109102","name":"\u667a\u80fd\u8bbe\u5907","isDelete":"0","level":"2","picUrl":"","parentCid":"109","id":"109102"}},"cid":"109","name":"\u7535\u5b50\u6570\u7801","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_16.png","parentCid":"0","id":"109"},"110":{"child":{"110101":{"cid":"110101","name":"\u767e\u5ea6\u4ea7\u54c1","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110101"},"110102":{"cid":"110102","name":"\u7535\u8111","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110102"},"110103":{"cid":"110103","name":"\u8f6f\u4ef6\u5e94\u7528","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110103"},"110104":{"cid":"110104","name":"\u4e92\u8054\u7f51","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110104"},"110105":{"cid":"110105","name":"\u901a\u8baf\u6280\u672f","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110105"},"110106":{"cid":"110106","name":"IT","isDelete":"0","level":"2","picUrl":"","parentCid":"110","id":"110106"}},"cid":"110","name":"\u7535\u8111\u7f51\u7edc","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/mavin\/i-class-network.png","parentCid":"0","id":"110"},"111":{"child":{"111101":{"cid":"111101","name":"\u6e38\u620f","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111101"},"111102":{"cid":"111102","name":"\u535a\u5f69","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111102"},"111103":{"cid":"111103","name":"\u6536\u85cf","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111103"},"111104":{"cid":"111104","name":"\u65c5\u6e38","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111104"},"111105":{"cid":"111105","name":"\u5360\u535c","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111105"},"111106":{"cid":"111106","name":"\u52a8\u6f2b","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111106"},"111107":{"cid":"111107","name":"\u5f71\u89c6","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111107"},"111108":{"cid":"111108","name":"\u660e\u661f","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111108"},"111109":{"cid":"111109","name":"\u821e\u8e48","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111109"},"111110":{"cid":"111110","name":"\u97f3\u4e50","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111110"},"111111":{"cid":"111111","name":"\u54c1\u9274","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111111"},"111112":{"cid":"111112","name":"\u5a31\u4e50","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111112"},"111113":{"cid":"111113","name":"\u4e50\u5668","isDelete":"0","level":"2","picUrl":"","parentCid":"111","id":"111113"}},"cid":"111","name":"\u5a31\u4e50\u4f11\u95f2","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_25.png","parentCid":"0","id":"111"},"113":{"child":{"113100":{"cid":"113100","name":"\u5730\u533a","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113100"},"113101":{"cid":"113101","name":"\u5317\u4eac","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113101"},"113102":{"cid":"113102","name":"\u5929\u6d25","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113102"},"113103":{"cid":"113103","name":"\u4e0a\u6d77","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113103"},"113104":{"cid":"113104","name":"\u91cd\u5e86","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113104"},"113105":{"cid":"113105","name":"\u6cb3\u5317","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113105"},"113106":{"cid":"113106","name":"\u5c71\u4e1c","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113106"},"113107":{"cid":"113107","name":"\u5c71\u897f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113107"},"113108":{"cid":"113108","name":"\u5185\u8499\u53e4","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113108"},"113109":{"cid":"113109","name":"\u8fbd\u5b81","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113109"},"113110":{"cid":"113110","name":"\u9ed1\u9f99\u6c5f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113110"},"113111":{"cid":"113111","name":"\u5409\u6797\u7701","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113111"},"113112":{"cid":"113112","name":"\u5b89\u5fbd","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113112"},"113113":{"cid":"113113","name":"\u6d59\u6c5f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113113"},"113114":{"cid":"113114","name":"\u6c5f\u82cf","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113114"},"113115":{"cid":"113115","name":"\u6c5f\u897f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113115"},"113116":{"cid":"113116","name":"\u5e7f\u4e1c","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113116"},"113117":{"cid":"113117","name":"\u798f\u5efa","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113117"},"113118":{"cid":"113118","name":"\u6d77\u5357","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113118"},"113119":{"cid":"113119","name":"\u6cb3\u5357","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113119"},"113120":{"cid":"113120","name":"\u6e56\u5317","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113120"},"113121":{"cid":"113121","name":"\u6e56\u5357","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113121"},"113122":{"cid":"113122","name":"\u56db\u5ddd","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113122"},"113123":{"cid":"113123","name":"\u4e91\u5357","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113123"},"113124":{"cid":"113124","name":"\u8d35\u5dde","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113124"},"113125":{"cid":"113125","name":"\u9655\u897f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113125"},"113126":{"cid":"113126","name":"\u7518\u8083","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113126"},"113127":{"cid":"113127","name":"\u9752\u6d77","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113127"},"113128":{"cid":"113128","name":"\u5b81\u590f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113128"},"113129":{"cid":"113129","name":"\u5e7f\u897f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113129"},"113130":{"cid":"113130","name":"\u897f\u85cf","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113130"},"113131":{"cid":"113131","name":"\u65b0\u7586","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113131"},"113132":{"cid":"113132","name":"\u9999\u6e2f","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113132"},"113133":{"cid":"113133","name":"\u6fb3\u95e8","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113133"},"113134":{"cid":"113134","name":"\u53f0\u6e7e","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113134"},"113135":{"cid":"113135","name":"\u6d77\u5916","isDelete":"0","level":"2","picUrl":"","parentCid":"113","id":"113135"}},"cid":"113","name":"\u5730\u533a","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_18.png","parentCid":"0","id":"113"},"114":{"cid":"114","name":"\u5fc3\u7406\u5206\u6790","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsj3f_gcX8t7mm9GUKT-xh_\/mavin\/i-class-psychology.png","parentCid":"0","id":"114","child":{"114101":{"cid":"114101","name":"\u70e6\u607c","isDelete":"0","level":"2","picUrl":"","parentCid":"114","id":"114101"},"114102":{"cid":"114102","name":"\u7231\u60c5","isDelete":"0","level":"2","picUrl":"","parentCid":"114","id":"114102"},"114103":{"cid":"114103","name":"\u5bb6\u5ead\u5173\u7cfb","isDelete":"0","level":"2","picUrl":"","parentCid":"114","id":"114103"},"114104":{"cid":"114104","name":"\u4e24\u6027\u95ee\u9898","isDelete":"0","level":"2","picUrl":"","parentCid":"114","id":"114104"},"114105":{"cid":"114105","name":"\u6821\u56ed\u751f\u6d3b","isDelete":"0","level":"2","picUrl":"","parentCid":"114","id":"114105"}}},"115":{"child":{"115101":{"cid":"115101","name":"\u533b\u7597","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115101"},"115102":{"cid":"115102","name":"\u5065\u5eb7","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115102"},"115103":{"cid":"115103","name":"\u5987\u4ea7\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115103"},"115104":{"cid":"115104","name":"\u76ae\u80a4\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115104"},"115105":{"cid":"115105","name":"\u4e2d\u533b","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115105"},"115106":{"cid":"115106","name":"\u4e94\u5b98\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115106"},"115107":{"cid":"115107","name":"\u513f\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115107"},"115108":{"cid":"115108","name":"\u5185\u5206\u6ccc\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115108"},"115109":{"cid":"115109","name":"\u5185\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115109"},"115110":{"cid":"115110","name":"\u80bf\u7624\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115110"},"115111":{"cid":"115111","name":"\u4f20\u67d3\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115111"},"115112":{"cid":"115112","name":"\u4eba\u4f53\u5e38\u8bc6","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115112"},"115113":{"cid":"115113","name":"\u7537\u6027\u6ccc\u5c3f\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115113"},"115114":{"cid":"115114","name":"\u5916\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115114"},"115115":{"cid":"115115","name":"\u7cbe\u795e\u5fc3\u7406\u79d1","isDelete":"0","level":"2","picUrl":"","parentCid":"115","id":"115115"}},"cid":"115","name":"\u533b\u7597\u536b\u751f","isDelete":"0","level":"1","picUrl":"https:\/\/gss0.bdstatic.com\/70cFsjip0QIZ8tyhnq\/img\/iknow\/%E4%B8%8B%E9%9D%A2%E9%85%8D%E5%9B%BE_05.png","parentCid":"0","id":"115"}}
            		});
    });
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;    require('common:widget/js/logic/ie-prompt/ie-prompt');
    require.async(['common:widget/footer-new/footer-new'], function(footer) {
        footer.init();
    });
}();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;        require.async(['common:widget/lib/jquery/jquery','common:widget/js/util/log/log','home:widget/js/render-header/render-header'], function($, log, renderHeader) {
            $(function() {
                // 打点首页用户可操作时间
                alog('speed.set', 'drt', +new Date);

                log.init({key:2058, query:'body', action:'click'});

                if($('#bottom-ad table').length > 0) {
                    log.send({'type':2058, 'params':'home'});
                }

                $('.nav-menu-container  a').click(function(e){
                    log.send({ 'pos': 'new_menu_link_pv', 'evtType': 'click', 'href': this.href, 'fr': 'new_home_page' });
                });

                var adTopImg = $('.adTopImg');
                if(adTopImg.length && adTopImg.css('display') != 'none') {
                    log.addKey({
                        adTopImg: 1
                    });
                    adTopImg.on('click', function() {
                        log.send({
                            page: 'home',
                            pos: 'adTopImg',
                            action: 'click',
                            type: 2058
                        });
                    });
                }

                var shopLogged = false;
                var appLogged = false;
                var middleLogged = false;
                var bottomLogged = false;

                $(document).on('scroll', function () {
                    var docViewTop = $(window).scrollTop();
                    var docViewBottom = docViewTop + $(window).height();

                    var shopElemTop = $('.announcement-container .shop').offset().top;

                    if (!shopLogged && (shopElemTop > docViewTop && shopElemTop < docViewBottom)) {
                        shopLogged = true;
                        log.send({
                            page: 'home',
                            area: 'home_shop_exchange',
                            action: 'pv'
                        });
                    }

                    var appElemTop = $('.product-container').offset().top;

                    if (!appLogged && (appElemTop > docViewTop && appElemTop < docViewBottom)) {
                        appLogged = true;
                        log.send({
                            page: 'home',
                            area: 'app_show',
                            action: 'pv'
                        });
                    }

                    var middleElemTop = $('.wgt-promotions').offset().top;

                    if (!middleLogged && (middleElemTop > docViewTop && middleElemTop < docViewBottom)) {
                        middleLogged = true;
                        log.send({
                            page: 'home',
                            area: 'middle_ads_show',
                            action: 'pv'
                        });
                    }

                    var bottomElemTop = $('.wgt-promotion').length ? $('.wgt-promotion').offset().top : '';
                    if (!bottomLogged && bottomElemTop && (bottomElemTop > docViewTop && bottomElemTop < docViewBottom)) {
                        bottomLogged = true;
                        log.send({
                            page: 'home',
                            area: 'bottom_ads_show',
                            action: 'pv'
                        });
                    }
                });
                // pv统计
                log.send({
                    page: 'home',
                    action: 'pv',
                    type: 2058
                });
                renderHeader.init();
            });
        });
     }();
!function(){var F = (window.__IKNOW_GLOBAL__ || window).F;var require = (window.__IKNOW_GLOBAL__ || window).require;								                				require.async(['common:widget/js/logic/dom-ready/dom-ready'], function(D){ D.init([]) });
            }();
</script>
<script type="text/javascript">
    require.async(['common:widget/lib/jquery/jquery'], function ($) {
        if (!/chrome|firefox|safari|msie 10|rsv:11|msie [89]/i.test(navigator.userAgent)) {
            return;
        }

        window.BaiduHttps = window.BaiduHttps || {};
        window.BaiduHttps.callbacks = function (data) {
            if (data && data.s === 0) {
                window.supportHttps = 1;
                setTimeout(function () {
                    $('a[href^="http://www.baidu.com/s?"]').each(function (index, item) {
                        var link = $(item).attr('href');
                        if (~link.indexOf('?wd=') || ~link.indexOf('&wd=')) {
                            link = link.replace(/^http/, 'https');
                            $(item).attr('href', link);
                        }
                    });
                }, 2000);
            }
        };

        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'https://www.baidu.com/con?from=zhidao';
        document.body.appendChild(script);
    });
</script>


</html>
