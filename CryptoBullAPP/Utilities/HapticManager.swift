//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 27/05/23.
//

import Foundation
import SwiftUI

class HapticManager{
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
