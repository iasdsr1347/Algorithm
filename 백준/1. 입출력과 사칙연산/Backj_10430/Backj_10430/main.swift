//
//  main.swift
//  Backj_10430
//
//  Created by 송영민 on 7/9/25.
//
//(A+B)%C는 ((A%C) + (B%C))%C 와 같을까?
//(A×B)%C는 ((A%C) × (B%C))%C 와 같을까?
//
//


import Foundation

if let line = readLine() {
    let lineArry = line.components(separatedBy: " ")
    
    let a = Int(lineArry[0])!
    let b = Int(lineArry[1])!
    let c = Int(lineArry[2])!
    
    if a >= 2 && c <= 10000 {
        print((a+b)%c)
        print(((a%c)+(b%c))%c)
        print((a*b)%c)
        print(((a%c)*(b%c))%c)
    }
}

