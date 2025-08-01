//
//  main.swift
//  Baekj_25304
//
//  Created by 송영민 on 7/10/25.
//

import Foundation

//if let line = readLine(),
//   let totalPrice = Int(line)
//{
//    var sumPrice: Int = 0
//    if totalPrice >= 1 && totalPrice <= 1000000000
//    {
//        if let line2 = readLine(),
//           let N = Int(line2)
//        {
//            
//            if N >= 1 && N <= 100
//            {
//                
//                for _ in 1...N
//                {
//                
//                    if let line3 = readLine()
//                    {
//                        let lineArry = line3.split(separator: " ")
//                        let a = Int(lineArry[0])!
//                        let b = Int(lineArry[1])!
//                        
//                        if a >= 1 && a <= 1000000 && b >= 1 && b <= 10 {
//                            sumPrice += a * b
//                        }
//                        else
//                        {
//                            print( "a must be 1~1000000, b must be 1~10")
//                        }
//                    }
//                }
//            }else
//            {
//                print("N must be 1~100")
//            }
//        }
//    }else
//    {
//        print( "totalPrice must be 1~1000000000")
//    }
//    print(sumPrice)
//}
 
if let line = readLine(), let totalPrice = Int(line) {
    var sumPrice = 0

    if totalPrice >= 1 && totalPrice <= 1_000_000_000 {
        if let line2 = readLine(), let N = Int(line2) {
            if N >= 1 && N <= 100 {
                for _ in 0..<N {
                    if let line3 = readLine() {
                        let lineArry = line3.split(separator: " ")

                        if lineArry.count == 2,
                           let a = Int(lineArry[0]),
                           let b = Int(lineArry[1]),
                           a >= 1 && a <= 1_000_000,
                           b >= 1 && b <= 10 {
                            sumPrice += a * b
                        } else {
                            print("잘못된 입력 또는 범위 초과 (a: 1~1000000, b: 1~10)")
                        }
                    }
                }

                // 결과 출력
                print(sumPrice == totalPrice ? "Yes" : "No")
            } else {
                print("N must be 1~100")
            }
        }
    } else {
        print("totalPrice must be 1~1000000000")
    }
}
