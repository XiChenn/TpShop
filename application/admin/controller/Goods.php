<?php
/**
 * Created by PhpStorm.
 * User: z
 * Date: 2017/4/7
 * Time: 10:51
 */

namespace app\admin\controller;
use think\Controller;
use think\Url;
class Goods extends Controller
{
    public function showlist(){
        return $this -> fetch();
    }
}