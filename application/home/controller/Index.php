<?php
namespace app\home\controller;
use think\Controller;
use app\model\FirstModel;
class Index extends Controller{
    public function index(){
        $val = FirstModel::navlist();
        dump($val[0]);
//        一级菜单
        $this -> assign("nav1",$val[0]);
//        二级菜单
        $this -> assign("nav2",$val[1]);
//        三级菜单
        $this -> assign("nav3",$val[2]);
        return $this -> fetch();
    }
}