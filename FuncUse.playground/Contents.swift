//: Playground - noun: a place where people can play

import UIKit

//=====函数的基本使用=====
/**
 函数的介绍
 函数相当于OC中的方法
 函数的格式如下
    func 函数名(参数列表) -> 返回值类型 {
        代码块
        return 返回值
    }
 func是关键字,多个参数列表之间可以用逗号（,）分隔，也可以没有参数
 使用箭头“->”指向返回值类型
 如果函数没有返回值，返回值为Void.并且“-> 返回值类型”部分可以省略
 */

//1.没有参数，没有返回值的函数
func about() -> Void{
    print("iPhone8")
}

func about1() {
    print("iPhone8")
}

about()

//2.有参数，没有返回值的函数
func callPhone(phoneNum: String) {
    print("打电话给:\(phoneNum)")
}

callPhone(phoneNum: "+86 119")

//3.没有参数，有返回值的函数
func readMsg() -> String {
    return "吃饭了吗？"
}
let msg = readMsg()
print(msg)

//4.有参数，有返回值的函数
func sum(num1: Int, num2: Int) ->Int  {
    return num1 + num2
}
let result = sum(num1: 20, num2: 30)
print(result)


