//
//  CryptoNewsRow.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 03/06/23.
//

import SwiftUI


struct CryptoNewsRow: View {
    
    let news: CryptoNewsModel
    
    var body: some View {
        VStack(alignment: .leading){
            upperColumn
                .padding(.bottom,20)
            middleColumn
        }
        .background(
            Color.theme.background.opacity(0.001)
        )
    }
}

struct CryptoNewsRow_Previews: PreviewProvider {
    static var previews: some View {
        CryptoNewsRow(news: dev.news)
            .previewLayout(.sizeThatFits)
    }
}

extension CryptoNewsRow {
    private var upperColumn: some View{
        VStack(alignment: .leading){
            HStack{
                Text("\(news.sourceID.uppercased())")
                    .fontWeight(.light)
                    .foregroundColor(Color.theme.accent)
                Image(systemName: "clock")
                    .padding(.leading)
                    .foregroundColor(Color.theme.secondaryText)
                Text("\(news.pubDate)")
                    .fontWeight(.light)
            }
            .font(.system(size: 10))
            Text(news.country.joined(separator: ", "))
                .fontWeight(.bold)
        }
        .padding(.horizontal)
    }
    
    private var middleColumn: some View{
        HStack{
            Text("\(news.title)")
                .font(.title)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
                .fontWeight(.bold)
        }
        .padding(.horizontal)
    }
}
