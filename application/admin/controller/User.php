<?php
/**
 * Created by PhpStorm.
 * User: z
 * Date: 2017/4/6
 * Time: 10:06
 */

namespace app\admin\controller;
use think\Controller;

class User extends Controller
{
    public function login(){
        return $this -> fetch();
    }
}