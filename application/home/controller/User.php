<?php
/**
 * Created by PhpStorm.
 * User: z
 * Date: 2017/4/5
 * Time: 13:22
 */

namespace app\home\controller;
use think\Controller;

class User extends  Controller
{
    public function login(){
        return $this -> fetch();
    }
    public function regist(){
        return $this -> fetch();
    }
}