//
//  main.swift
//  StringExample
//
//  Created by 李小龙 on 2018/12/25.
//  Copyright © 2018 李小龙. All rights reserved.
//

import Foundation

print("Hello, World!")

//字符串和数字之间的转换
var  str = "3"
let num = Int(str)!
let number = 3
let string = String(num)

// 字符串长度
let len = str.count

// 访问字符串中的单个字符，时间复杂度为O(1)
let char = str[str.index(str.startIndex, offsetBy: num)]

// 修改字符串
str.remove(at: str.startIndex)
str.append("c")
str += "hello world"

// 检测字符串是否是由数字构成
func isStrNum(str: String) -> Bool {
    return Int(str) != nil
}


// 检测字符串是否是由数字构成
func sortStr(str: String) -> String {
    return String(str.sorted())
}

//给一个字符串，将其按照单词顺序进行反转。比如说 s 是 "the sky is blue",
//那么反转就是 "blue is sky the"。

fileprivate func reverse<T>(_ chars: inout [T] , _ start: Int, _ end: Int) {
    var start = start, end = end
    
    while start < end {
        swap(&chars, start, end)
        start += 1
        end -= 1
    }
}


fileprivate func swap<T>(_ chars: inout[T], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
}


func reverseWords(s: String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    reverse(&chars, 0, chars.count - 1)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " "{
            reverse(&chars, start, i)
            start = i + 2
        }
    }
    
    return String(chars);
}




