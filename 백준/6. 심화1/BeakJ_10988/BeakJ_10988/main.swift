//
//  main.swift
//  BeakJ_10988
//
//  Created by 송영민 on 8/4/25.
//

import Foundation

if let input = readLine(), input.count >= 1 && input.count <= 100 {
  if input == String(input.reversed()) {
    print("1")
  }else {
    print("0")
  }
  
}else {
  print("1~100자의 문자열 입력")
}
