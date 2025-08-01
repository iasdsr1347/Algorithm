//
//  main.swift
//  BaekJ_2908
//
//  Created by 송영민 on 7/28/25.
//

import Foundation

if let inputLet = readLine() {
    let let1let2 = inputLet.split(separator: " ")
    
    let let1 = Int(String(let1let2[0].reversed()))!
    let let2 = Int(String(let1let2[1].reversed()))!
                                  
    print(max(let1, let2))
                                  
                                  
}
