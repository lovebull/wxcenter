<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv=Content-Type content="text/html;charset=utf-8"/>
    <title>分享链接 - {$settings.shopname}</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0"/>
    <meta name="format-detection" content="telephone=no">
    <link href="{$docroot}static/css/wshop_companyreg.css?v={$cssversion}" type="text/css" rel="Stylesheet"/>
    <link href="{$docroot}static/css/weui/weui.min.css?v={$cssversion}" type="text/css" rel="Stylesheet"/>
</head>
<body>

<input type="hidden" value="{$smarty.server.HTTP_REFERER}" id="referer"/>
<input type='hidden' value='{$head}' id='head'/>
<input type='hidden' value='{$sex}' id='sex'/>

<div class="hd">
    <h1 class="page_title">分享链接</h1>
    <p>长按二维码保存, 分享给你的朋友吧</p>
</div>

<div class="weui_cells weui_cells_form" style="margin-top: 0;text-align: center">
    <img src="{$qrcode}" width="140" style="display: block;margin: 20px auto"/>
</div>

{include file="../../global/copyright.tpl"}

<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">

    wx.config({
        debug: false,
        appId: '{$signPackage.appId}',
        timestamp: {if $signPackage.timestamp}{$signPackage.timestamp}{else}0{/if},
        nonceStr: '{$signPackage.nonceStr}',
        signature: '{$signPackage.signature}',
        jsApiList: ['onMenuShareTimeline', 'onMenuShareAppMessage']
    });

    var link = "http://" + window.location.host + "/?comid={$uid}";

    wx.ready(function () {
        wx.onMenuShareTimeline({
            title: '{$settings.shopname}',
            link: link,
            imgUrl: '',
            success: function () {

            }
        });
        wx.onMenuShareAppMessage({
            title: '{$settings.shopname}',
            desc: '{$settings.shopname}',
            link: link,
            imgUrl: '',
            success: function () {

            }
        });
    });

</script>

</body>
</html>