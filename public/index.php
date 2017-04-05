<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]

// 定义应用目录
define('APP_PATH', __DIR__ . '/../application/');
//定义后台资源路径
define("ADMIN_HTML","/TpShop/application/admin/view/index/");
define("ADMIN_IMG","/TpShop/public/admin/img/");
define("ADMIN_CSS","/TpShop/public/admin/css/");
define("ADMIN_JS","/TpShop/public/admin/js/");

// 加载框架引导文件
require __DIR__ . '/../thinkphp/start.php';
