//
//  NavigationButtonView.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 28/05/23.
//

import SwiftUI

struct NavigationButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 70, height: 70)
    }
}

struct NavigationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonView(iconName: "info")
            .previewLayout(.sizeThatFits)
    }
}
