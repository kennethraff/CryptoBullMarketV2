//
//  String.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 28/05/23.
//

import Foundation

extension String{
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
