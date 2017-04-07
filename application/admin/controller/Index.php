<?php
namespace app\admin\controller;
use think\Controller;
class Index extends Controller
{
    public function index(){
        return $this -> fetch();
    }
    public function head(){
        return $this -> fetch();
    }
    public function right(){
        return $this -> fetch();
    }
    public function left(){
        $quan1 = db("php41_auth") -> where("auth_level = 0") -> select();
        $quan2 = db("php41_auth") -> where("auth_level = 1") -> select();
        $this -> assign("quan1",$quan1);
        $this -> assign("quan2",$quan2);
        return $this -> fetch();
    }
}