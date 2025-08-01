//
//  main.swift
//  Baekj_10950
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

//Test 개수 = testNum
if let testNum = readLine(),
 let testSize = Int(testNum){
    var sumArry: [Int] = []
    //Test 개수 반복 입력 testSize
    for _ in 0..<testSize{
        if let caseNum = readLine() {
            let caseArry = caseNum.components(separatedBy: " ")
            if let sumNum1 = Int(caseArry[0]), let sumNum2 = Int(caseArry[1]){
                sumArry.append(sumNum1 + sumNum2)
            }
           
        }
        
    }
    for i in 0..<sumArry.count {
        print(sumArry[i])
    }
}


