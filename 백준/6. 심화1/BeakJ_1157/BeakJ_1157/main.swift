//
//  main.swift
//  BeakJ_1157
//
//  Created by 송영민 on 8/4/25.
//

import Foundation

var dicArray: [ Character : Int ] = [
  "A": 0, "B": 0, "C": 0, "D": 0, "E": 0, "F": 0,
  "G": 0, "H": 0, "I": 0, "J": 0, "K": 0, "L": 0,
  "M": 0, "N": 0, "O": 0, "P": 0, "Q": 0, "R": 0,
  "S": 0, "T": 0, "U": 0, "V": 0, "W": 0, "X": 0,
  "Y": 0, "Z": 0
]

if let input = readLine() {
  let upinput = input.uppercased()
  
  if upinput.count <= 1000000 {
    for char in upinput {
      if dicArray[char] != nil {
        dicArray[char]! += 1
      }
    }
  }else {
    print("1000000자 넘습니다.")
  }
  
  if let maxValue = dicArray.values.max() {
    let maxKeys = dicArray.filter{ $0.value == maxValue }.map { $0.key }
    
    if maxKeys.count == 1 {
      print(maxKeys[0])
    }else {
      print("?")
    }
  }
}

