//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 27/05/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }

}
