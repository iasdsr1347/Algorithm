//
//  main.swift
//  BeakJ_2444
//
//  Created by 송영민 on 8/4/25.
//

import Foundation

if let input = readLine(), let n = Int(input), n >= 1 && n <= 100 {
  
  for i in 0..<n {
    let spaces = String(repeating: " ", count: n - i - 1)
    let stars = String(repeating: "*", count: i * 2 + 1)
    
    print(spaces + stars)
  }
  
  for i in (0..<n-1).reversed() {
    let spaces = String(repeating: " ", count: n - i - 1)
    let stars = String(repeating: "*", count: i * 2 + 1)
    print(spaces + stars)
  }
}else {
  print("1에서 100 사이의 값을 입력하세요.")
}
