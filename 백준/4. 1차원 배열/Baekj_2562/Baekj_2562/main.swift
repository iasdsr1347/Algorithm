//
//  main.swift
//  Baekj_2562
//
//  Created by 송영민 on 7/16/25.
//

import Foundation

var lines: [Int] = []
var count: Int = 0
var maxCount = Int.min

while let line = readLine(), !line.isEmpty {
    lines.append(Int(line)!)
}

for i in 0..<lines.count {
    if maxCount < lines[i] {
        maxCount = lines[i] 
        count = i+1
    }
}

print(maxCount)
print(count)
