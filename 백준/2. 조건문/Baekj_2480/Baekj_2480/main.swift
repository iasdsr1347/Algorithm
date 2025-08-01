//
//  main.swift
//  Baekj_2480
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line = readLine() {
    let lineArray = line.split(separator: " ")
    
    if lineArray.count == 3,
        let num1 = Int(lineArray[0]),
        let num2 = Int(lineArray[1]),
        let num3 = Int(lineArray[2]){
        
        if num1 >= 1 && num1 <= 6 &&
            num2 >= 1 && num2 <= 6 &&
            num3 >= 1 && num3 <= 6{
            if num1 == num2 &&
                num2 == num3 &&
            num3 == num1{
                print(10000+(num1)*1000)
            }else if num1 == num2 || num2 == num3 || num1 == num3{
                if num1 == num2 {
                    print(1000+(num1)*100)
                }else if num2 == num3{
                    print(1000+(num2)*100)
                }else if num1 == num3{
                    print(1000+(num1)*100)
                }
                
            }else {
                if num1 > num2 && num1 > num3{
                    print(num1*100)
                }else if num2 > num1 && num2 > num3{
                    print(num2*100)
                }else if num3 > num1 && num3 > num2{
                    print(num3*100)
                }
            }
            
        }
        
    } else {
        print("3가지 숫자를 입력해주세요.")
    }
}

