﻿<!DOCTYPE html>
<html>
<head>
    <base href="http://naotu.baidu.com/"/>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="title" content="百度脑图（ KityMinder） - 控制创意，如此简单">
    <meta name="keyword" content="kityminder,脑图,思维导图,kity,svg,minder,百度,fex,前端,在线">
    <meta name="description" content="百度脑图，便捷的脑图编辑工具 - 控制创意，如此简单。让您在线上直接创建、保存并分享你的思路。免安装 云存储 易分享 体验舒适 功能丰富">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>百度脑图 - 便捷的思维工具</title>

    <script src="public/dist/kityminder.online.min.js?_=28f09621df0215b3"></script>
    <script>

        $(function() {

            function loadingAnimate(on) {
                if (on) {
                    $('hr').addClass('loading');
                    loadingAnimate.timer = setTimeout(function() {
                        $('hr').addClass('animated');
                    }, 660);
                } else {
                    clearTimeout(loadingAnimate.timer);
                    $('hr').removeClass('loading animated');
                }
            }

            loadingAnimate(true);


            $('p.login a').click(function() {
                window.location.href = 'https://openapi.baidu.com/oauth/2.0/authorize?client_id=wiE55BGOG8BkGnpPs6UNtPbb&response_type=code&redirect_uri=http%3A%2F%2Fnaotu.baidu.com%2Fuser%2Flogin_cb&scope=&state=fd910a8d4c72217545d67948b01285d0&display=popup';
            });

            function preload(url) {
                var Promise = kityminder.Promise;

                return new Promise(function(resolve, reject) {
                    var img = new Image();
                    img.onload = resolve;
                    img.onerror = reject;
                    img.src = url;
                });
            }

            preload('public/images/indexbackground.jpg').then(function() {
                $('div.background').addClass('loaded');
                loadingAnimate(false);
            });
        });

    </script>

    <link href="favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link href="favicon.ico" type="image/x-icon" rel="apple-touch-icon-precomposed">

    <style>
        body, html {
            margin: 0;
            padding: 0;
            overflow: hidden;
            height: 100%;
            font-size: 0;
            line-height: 0;
            z-index: -2;
        }

        body {
            background: #99806B;
            overflow: auto;
        }

        ::-webkit-selection {
            background: #FFEFEF;
            color: #4A4F5D;
        }
        ::-moz-selection {
            background: #FFEFEF;
            color: #4A4F5D;
        }
        ::-ms-selection {
            background: #FFEFEF;
            color: #4A4F5D;
        }
        ::selection {
            background: #FFEFEF;
            color: #4A4F5D;
        }

        div.background {
            opacity: 0;
            display: block;
            background: url(public/images/indexbackground.jpg) no-repeat;
            background-size: cover;
            position: absolute;
            z-index: -1;
            left: -10px;
            top: -10px;
            right: -10px;
            bottom: -10px;
            -webkit-filter: blur(5px);
            -moz-filter: blur(5px);
            -mz-filter: blur(5px);
            -o-filter: blur(5px);
            filter: url(public/images/blur.svg#blur);
            filter: blur(5px);
            -webkit-transition: opacity 1.5s ease;
            transition: opacity 1.5s ease;
        }

        div.background.loaded {
            opacity: 1;
        }

        h1:before {
            content: ' ';
            display: block;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, .5);
            z-index: -1;
        }

        h1, p {
            font-weight: 100;
            font-family: Arial, "Microsoft Yahei", "Heiti SC",  sans-serif;
            text-align: center;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        h1 {
            margin: 0;
            margin-top: 100px;
            color: white;
            font-size: 50px;
            line-height: 1.4em;
        }

        h1 span {
            font-size: 0.6em;
        }

        p span {
            font-size: 12px;
            display: block;
            margin-top: 30px;
            color: rgba(255, 255, 255, .7);
            text-shadow: 0 0 1px rgba(0, 0, 0, .5);
        }

        hr {
            height: 0;
            border: none;
            border-bottom: 1px solid #F98183;
            width: 110px;
            margin: 40px auto;
            -webkit-transition: -webkit-transform 0.66s ease;
            transition: transform 0.66s ease;
            -webkit-backface-visibility: hidden;
        }

        hr.loading {
            -webkit-transform: translate3d(100px, 0, 0);
            transform: translate3d(100px, 0, 0);
        }

        hr.animated {
            -webkit-animation: slide 1.33s ease-in-out infinite alternate;
            animation: slide 1.33s ease-in-out infinite alternate;
        }

        @-webkit-keyframes slide {
            0% {
                -webkit-transform: translate3d(100px, 0, 0);
                transform: translate3d(100px, 0, 0);
            }
            100% {
                -webkit-transform: translate3d(-100px, 0, 0);
                transform: translate3d(-100px, 0, 0);
            }
        }

        @keyframes slide {
            0% {
                -webkit-transform: translate3d(100px, 0, 0);
                transform: translate3d(100px, 0, 0);
            }
            100% {
                -webkit-transform: translate3d(-100px, 0, 0);
                transform: translate3d(-100px, 0, 0);
            }
        }

        p.description {
            color: #CCC;
            font-size: 20px;
            line-height: 1.8em;
        }

        p.login a {
            display: inline-block;
            width: 200px;
            height: 60px;
            background: #F98183;
            font-size: 24px;
            line-height: 60px;
            text-align: center;
            border-radius: 30px;
            color: white;
            text-shadow: 0 1px 0 #F8474F;
            cursor: pointer;
            position: relative;
            overflow: hidden;
            margin-top: 50px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -mz-user-select: none;
            user-select: none;
        }

        p.login a:active {
            background: #FF6161;
            -webkit-transform: scale(0.95);
            transform: scale(0.95);
        }

        p.login a:before {
            content: ' ';
            display: block;
            background: rgba(255, 255, 255, .2);
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            border-radius: 30px;
            transform: scale(0, 1);
            -webkit-transform: scale(0, 1);
            transition: transform 0.3s ease;
            -webkit-transition: -webkit-transform 0.3s ease;
        }

        p.login a:hover:before {
            transform: scale(1, 1);
            -webkit-transform: scale(1, 1);
        }

    </style>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?0703917f224067c887f3664479a03887";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</head>
<body>
<div class="background"></div>
<h1>百度脑图 <br/> <span>控制创意，如此简单</span></h1>
<hr />
<p class="description">
    免安装 云存储 易分享<br/>
    舒适的体验 丰富的功能<br/>
</p>
<p class="login">
    <a>马上开启</a>
    <span>使用百度账号登录</span>
</p>
</body>
</html>