//
//  main.swift
//  Baekj_14681
//
//  Created by 송영민 on 7/9/25.
//

import Foundation

if let line1 = readLine(), let line2 = readLine() {
    

    let x = Int(line1)!
    let y = Int(line2)!
        
        if x >= -1000 && x <= 1000 && x != 0 &&
            y >= -1000 && y <= 1000 && y != 0 {
            
            if x > 0 && y > 0 {
                print(1)
            }
            else if x < 0 && y > 0 {
                print(2)
            }
            else if x < 0 && y < 0 {
                print(3)
            }
            else if x > 0 && y < 0 {
                print(4)
            }
        }else {
            print("0이 아닌 -1000~1000 사이의 값을 입력해주세요.")
        }
    }else   {
        print( "2개의 정수를 입력해주세요.")
}
