//
//  main.swift
//  Baekj_2525
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line1 = readLine(), let line2 = readLine() {
    let lineArry = line1.split(separator: " ")
    let minsTime: Int
//    let hoursTime: Int
    
    
    let timeover = Int(line2)!
    
    if lineArry.count == 2,
       var hourNum = Int(lineArry[0]),
       var minNum = Int(lineArry[1]){
        
        if hourNum >= 0 && hourNum <= 23 && minNum >= 0 && minNum <= 59 &&
            timeover >= 0 && timeover <= 1000{
            minNum += timeover
            
            if minNum >= 60{
                minsTime = minNum / 60
                minNum = minNum % 60
                hourNum += minsTime
            }
            if hourNum >= 24{
                hourNum %= 24
            }
            print(hourNum, minNum)
        }
    }
}
        
        
//      
//import Foundation
//
//if let line1 = readLine(), let line2 = readLine() {
//    let lineArry = line1.split(separator: " ")
//    
//    if lineArry.count == 2,
//       var hourNum = Int(lineArry[0]),
//       var minNum = Int(lineArry[1]),
//       let timeover = Int(line2) {
//        
//        // 입력값 유효성 검사
//        if hourNum >= 0 && hourNum <= 23 &&
//           minNum >= 0 && minNum <= 59 &&
//           timeover >= 0 && timeover <= 1000 {
//            
//            minNum += timeover
//            
//            // 분 -> 시간 변환
//            let hoursToAdd = minNum / 60
//            let minsTime = minNum % 60
//            hourNum += hoursToAdd
//            
//            // 24시 이상이면 0시부터 시작
//            if hourNum >= 24 {
//                hourNum %= 24
//            }
//            
//            print(hourNum, minsTime)
//        }
//    }
//}
