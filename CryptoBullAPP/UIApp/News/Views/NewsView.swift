//
//  NewsView.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 28/05/23.
//

import SwiftUI

struct NewsView: View {
    @EnvironmentObject var vm : NewsViewModel
    @Environment(\.openURL) var openURL
    
    var body: some View {
        List {
            ForEach(vm.allNews) {news in
                CryptoNewsRow(news: news)
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NewsView()
                .environmentObject(NewsViewModel())
                .navigationBarHidden(true)
        }
        .environmentObject(NewsViewModel())
    }
}
