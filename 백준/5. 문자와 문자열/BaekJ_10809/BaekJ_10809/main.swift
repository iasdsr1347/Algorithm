//
//  main.swift
//  BaekJ_10809
//
//  Created by 송영민 on 7/28/25.
//

import Foundation

if let inputS = readLine() {
    let s = Array(inputS)
    if s.count <= 100 {
        var positions = Array(repeating: -1, count: 26)

        for i in 0..<s.count {
            let ch = s[i]

            switch ch {
            case "a":
                if positions[0] == -1 { positions[0] = i }
            case "b":
                if positions[1] == -1 { positions[1] = i }
            case "c":
                if positions[2] == -1 { positions[2] = i }
            case "d":
                if positions[3] == -1 { positions[3] = i }
            case "e":
                if positions[4] == -1 { positions[4] = i }
            case "f":
                if positions[5] == -1 { positions[5] = i }
            case "g":
                if positions[6] == -1 { positions[6] = i }
            case "h":
                if positions[7] == -1 { positions[7] = i }
            case "i":
                if positions[8] == -1 { positions[8] = i }
            case "j":
                if positions[9] == -1 { positions[9] = i }
            case "k":
                if positions[10] == -1 { positions[10] = i }
            case "l":
                if positions[11] == -1 { positions[11] = i }
            case "m":
                if positions[12] == -1 { positions[12] = i }
            case "n":
                if positions[13] == -1 { positions[13] = i }
            case "o":
                if positions[14] == -1 { positions[14] = i }
            case "p":
                if positions[15] == -1 { positions[15] = i }
            case "q":
                if positions[16] == -1 { positions[16] = i }
            case "r":
                if positions[17] == -1 { positions[17] = i }
            case "s":
                if positions[18] == -1 { positions[18] = i }
            case "t":
                if positions[19] == -1 { positions[19] = i }
            case "u":
                if positions[20] == -1 { positions[20] = i }
            case "v":
                if positions[21] == -1 { positions[21] = i }
            case "w":
                if positions[22] == -1 { positions[22] = i }
            case "x":
                if positions[23] == -1 { positions[23] = i }
            case "y":
                if positions[24] == -1 { positions[24] = i }
            case "z":
                if positions[25] == -1 { positions[25] = i }
            default:
                break
            }
        }
        
        for pos in positions {
            print(pos)
        }

    } else {
        print("단어의 길이를 100 이하로 입력하세요.")
    }
}
