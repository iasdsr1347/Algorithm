//
//  main.swift
//  BaekJ_2941
//
//  Created by 송영민 on 8/5/25.
//

import Foundation

var s=readLine()!
for c in["dz=","c=","c-","d-","lj","nj","s=","z="]{s=s.replacingOccurrences(of:c,with:"*")}
print(s.count)


//// 입력 받기
//let input = readLine() ?? ""
//
//// 크로아티아 알파벳 리스트
//let croatian = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
//
//// 문자열 수정
//var modifiedInput = input
//
//for symbol in croatian {
//    modifiedInput = modifiedInput.replacingOccurrences(of: symbol, with: "*")
//}
//
//// 결과 출력 (치환된 문자열의 길이)
//print(modifiedInput.count)


/*
var dicArray: [String: Int] = [
  "a": 0, "f": 0, "k": 0, "o": 0, "s": 0, "w": 0,
  "b": 0, "g": 0, "l": 0, "p": 0, "t": 0, "x": 0,
  "c": 0, "h": 0, "m": 0, "q": 0, "u": 0, "y": 0,
  "d": 0, "i": 0, "n": 0, "r": 0, "v": 0, "z": 0,
  "e": 0, "j": 0,
  "c=": 0, "c-": 0, "dz=": 0, "d-": 0,
  "lj": 0, "s=": 0, "z=": 0,
]

if let input = readLine() {
  var total = 0

  if input.count >= 1 && input.count <= 100 {
    for key in dicArray.keys {
      if input.contains(key) {
        dicArray[key]! += 1
      }
    }
    for key in dicArray.keys {
      total += dicArray[key]!
    }
  } else {
    print("1~100자의 문자열 입력")
  }
  print(dicArray)
  print(total)
}
*/
/*
var dicArray: [String: Int] = [
  "a": 0, "f": 0, "k": 0, "o": 0, "s": 0, "w": 0,
  "b": 0, "g": 0, "l": 0, "p": 0, "t": 0, "x": 0,
  "c": 0, "h": 0, "m": 0, "q": 0, "u": 0, "y": 0,
  "d": 0, "i": 0, "n": 0, "r": 0, "v": 0, "z": 0,
  "e": 0, "j": 0,
  "c=": 0, "c-": 0, "dz=": 0, "d-": 0,
  "lj": 0, "s=": 0, "z=": 0, "nj": 0
]

if let input = readLine() {
  var total = 0
//  let input = input.lowercased()  // 소문자로 변환
  let keys = dicArray.keys.sorted { $0.count > $1.count }  // 긴 키 먼저 확인 (dz= 먼저)
  
  if input.count >= 1 && input.count <= 100 {
    var i = input.startIndex
    
    while i < input.endIndex {
      var matched = false
      
      for key in keys {
        let end = input.index(i, offsetBy: key.count, limitedBy: input.endIndex) ?? input.endIndex
        let slice = String(input[i..<end])
        
        if slice == key {
          dicArray[key]! += 1
          i = end  // 매치된 길이만큼 인덱스를 건너뜀
          matched = true
          break
        }
      }
      
      if !matched {
        // 매치되지 않으면 한 글자씩 이동
        i = input.index(after: i)
      }
    }
    
    // 전체 개수 합산
    for value in dicArray.values {
      total += value
    }
  } else {
    print("1~100자의 문자열 입력")
  }

  print(dicArray)
  print(total)
}
*/
