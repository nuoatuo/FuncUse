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

/*
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
*/

//=====函数的其他用法=====
//1.内部参数&外部参数
//内部参数:在函数内部能看到标识符名称，该标识符就是内部参数
//外部参数:在函数外部能看到标识符名称，该标识符就是外部参数
//默认情况下，所有的参数都是内部参数，也是外部参数
//修改外部参数:在标识符前加上外部参数名称即可
//如果不希望显示外部参数，可以在标识符前加上“_”
func sum(abc num1: Int, num2: Int) ->Int  {
    return num1 + num2
}
//let result = sum(num1: 20, num2: 30)
//let result = sum(abc: 20, num2: 30)

func sum1(_ num1: Int, _ num2: Int) ->Int  {
    return num1 + num2
}
let result = sum1(20, 30)

//2.可变参数
//print(<#T##items: Any...##Any#>)
func sum(_ nums: Int...) -> Int {
    var total = 0
    for n in nums {
        total += n
    }
    return total
}
//sum(nums: 20,30,40,50)
sum(20,30,40)

//3.默认参数
func makeCoffee(coffeeName: String = "雀巢") -> String {
    return "制作了一杯:\(coffeeName)咖啡"
}
makeCoffee(coffeeName: "拿铁")
makeCoffee(coffeeName: "猫屎")
makeCoffee()

//4.指针参数
var m : Int = 20
var n : Int = 30

func swapNum(num1: inout Int, num2: inout Int) {
    let temp = num1
    num1 = num2
    num2 = temp
}
swapNum(num1: &m, num2: &n)
print("m:\(m)  n:\(n)")




