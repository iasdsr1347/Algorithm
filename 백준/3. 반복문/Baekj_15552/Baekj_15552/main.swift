//
//  main.swift
//  Baekj_15552
//
//  Created by 송영민 on 7/10/25.
//

import Foundation

// *read() 기반 fast I/O
// 표준입력(키보드나 라디렉션된 입력 파일 등)에서 모든 데이터를 한번에 읽어 Data 타입으로 저장
let buffer = FileHandle.standardInput.readDataToEndOfFile()

// 읽은 Data를 Uint8(1바이트 부호 없는 정수) 배열로 변환합니다.
// 즉, 입력을 바이트 단위로 쪼개서 다룰 수 있게 만듭니다.
let bytes = [UInt8](buffer)

// 현재 읽고 있는 바이트의 위치를 나타내는 인덱스
var index = 0

// 성능을 높이기 위해 이 함수를 인라인으로 강제하는 컴파일러 지시어
@inline(__always)

// 입력된 바이트 배열에서 정수를 하나 읽어 반환하는 함수
func readInt() -> Int {
    // 최종 계산되는 정수를 입력할 변수
    var num = 0
    // 숫자가 아닌(ASCII 값이 0~9 범위가 아닌) 문자를 건너뛰기
    // ex)공백, 개행 문자 등
    while index < bytes.count && (bytes[index] < 48 || bytes[index] > 57) {
        index += 1
    }
    
    // 연속된 숫자를 하나의 정수로 변환
    // ASCII에서 0은 48이므로, bytes[index]-48을 하면 실제 숫자
    while index < bytes.count && (48...57).contains(bytes[index]) {
        num = num * 10 + Int(bytes[index] - 48)
        index += 1
    }
    //합 정수를 반환
    return num
}

// 출력 결과들을 한꺼번에 저장할 문자열
// 표준 출력에 하나씩 출력하지 않고, 모두 모아서 한 번에 출력 (속도 향상 목적)
var output = ""

// 테스트 케이스 개수 입력
let T = readInt()
	
// T번 반복하며 정수 a,b를 입력 받고, 그 합을 문자열로 output에 추가
// \n은 줄바꿈 문자로, 각 결과는 새줄에 출력
for _ in 0..<T {
    let a = readInt()	
    let b = readInt()
    output += "\(a + b)\n"
}

// 출력
// 저장한 출력 문열을 UTF-8로 인코딩하여 표준 출력으로 한 번에 출력.
// 빠른 출력
FileHandle.standardOutput.write(output.data(using: .utf8)!)

// 입력 전체를 바이트로 읽고 -> 직접 숫자를 파싱하고 -> 출력도 문자열로 누적해 한 번에 출력한다는 점
