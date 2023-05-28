//
//  Color.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 26/05/23.
//

import Foundation
import SwiftUI

extension Color{
    
    static let theme = ColorTheme()
    
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let blue = Color("BlueColor")
    let secondaryText = Color("SecondaryTextColor")
    let red = Color("RedColor")
}
