//
//  main.swift
//  BJ1000
//
//  Created by 송영민 on 2021/06/01.
//

import Foundation

struct Q1000{
    static func main(){
        if let input = readLine() {
            print(input.split(separator: " ").map { Int($0)! }.reduce(0, { $0+$1 }))
        }
    }
}
Q1000.main()
