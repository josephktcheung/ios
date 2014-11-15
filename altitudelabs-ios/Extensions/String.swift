//
//  String.swift
//  altitudelabs-ios
//
//  Created by Joseph Cheung on 15/11/14.
//  Copyright (c) 2014 josephktcheung. All rights reserved.
//

import Foundation

extension String {
    func validateAlphabeticString() -> Bool {
        let set = NSCharacterSet(charactersInString: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let invalidSet = set.invertedSet
        
        if let r = self.rangeOfCharacterFromSet(invalidSet) {
            return false
        } else {
            return true
        }
    }
}