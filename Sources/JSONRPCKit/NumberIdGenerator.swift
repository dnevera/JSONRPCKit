//
//  NumberIdentifierGenerator.swift
//  JSONRPCKit
//
//  Created by Shinichiro Oba on 2015/11/11.
//  Copyright © 2015年 Shinichiro Oba. All rights reserved.
//

import Foundation

public struct NumberIdGenerator: IdGenerator {
    
    private static var currentId = 1

    public init() {}

    public mutating func next() -> Id {
        defer {
            NumberIdGenerator.currentId += 1
        }
        
        return .number(NumberIdGenerator.currentId)
    }
}
