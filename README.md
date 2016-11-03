#WXCenter<微信开源Center>

这是基于iWshop基础上扩展开发的 基于 v0.9.6(2016-09-20)最后更新基础上为原始版本

WXCenter是一个开源的微信商城。为了保证轻量级，使用了iWshop作者自主开发的mvc框架。

非官方维护版本更新记录 [https://github.com/lovebull/wxcenter/blob/master/Versions.md](https://github.com/lovebull/wxcenter/blob/master/Versions.md)


***


##配置说明 （请注意）

####一、根目录修改说明


如果是服务器根目录，必须修改为` /`


如果是服务器子目录，必须修改为`/subroot/` 等有左右斜杠的格式


修改文件：config/config.php 中的 $config->docroot选项

####二、手动部署说明

- 服务器配置过程略。

- 创建`/install/install.lock`

- 导入`/install/iWshop.sql`

- 后台地址（以域名www.iwshop.cn为例）为：http://www.youdomain.cn/?/Wdmin/login/

- 微信消息接口地址：http://www.youdomain.cn/wechat/ (切莫忘了最后的 / )

####三、目录权限说明

执行一下install里的shell文件

    ./install/dirmod.sh

请确保您的php配置中`magic_quotes_gpc为Off`，否则一些功能将失效

####四、配置文件config.php说明

初始配置文件为`config_sample.php`, 在/config/目录下

请编辑`config_sample.php`文件并且重命名为`config.php`

####五、运行环境要求

    * MySQL 5.5.3+ (utf8mb4编码用于保存带有emoji表情的微信用户昵称)**

    * PHP5.4+

    * PHP扩展：php_mysql php_curl php_pdo_mysql php_gd2


####六、演示项目

<img src="http://down.iwshop.cn/iwshop_release/images/qrcode3.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />
<img src="http://down.iwshop.cn/iwshop_release/images/qrcode2.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />
<img src="http://down.iwshop.cn/iwshop_release/images/qrcode1.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />
<img src="http://down.iwshop.cn/iwshop_release/images/qrcode4.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />
<img src="http://down.iwshop.cn/iwshop_release/images/qrcode5.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />
<img src="http://down.iwshop.cn/iwshop_release/images/qrcode7.jpg" height="140" width="140" style="border:1px solid #eee;margin-right:10px;" />

####六、后台预览

<img src="http://down.iwshop.cn/iwshop_release/images/previews1.png" width="100%" />
<img src="http://down.iwshop.cn/iwshop_release/images/previews2.png" width="100%" />
<img src="http://down.iwshop.cn/iwshop_release/images/previews3.png" width="100%" />


##  扩展功能
>扩展的新功能(截图相关)


## 相关下载   相关下载
 
