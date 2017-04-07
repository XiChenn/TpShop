<?php
namespace app\model;
use think\Model;
/**
 * Created by PhpStorm.
 * User: z
 * Date: 2017/4/6
 * Time: 16:30
 */
class FirstModel extends Model
{
    //首页导航菜单
    public static function navlist(){
//        查询 1 2 3级菜单
        $arr = array();
        $arr[] = db("php41_category") -> where("cat_level = 0") -> select();
        $arr[]= db("php41_category") -> where("cat_level = 1") -> select();
        $arr[]= db("php41_category") -> where("cat_level = 2") -> select();
        return $arr;
    }
//    商品列表

}