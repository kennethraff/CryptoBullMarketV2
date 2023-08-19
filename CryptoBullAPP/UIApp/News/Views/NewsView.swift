//
//  NewsView.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 28/05/23.
//

import SwiftUI
import SafariServices

struct NewsView: View {
    @StateObject var viewModel = NewsViewModel()
    @State private var keyword = "BNB"
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(
                            keyword.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                        )
                    
                    TextField("Search by name like bnbc or something", text: $keyword, onCommit: {
                        viewModel.fetchArticles(withKeyword: keyword)
                    })
                        .foregroundColor(Color.theme.accent)
                        .overlay(
                            Image(systemName: "xmark.circle.fill")
                                .padding()
                                .offset(x: 10)
                                .foregroundColor(Color.theme.accent)
                                .opacity(keyword.isEmpty ? 0.0 : 1.0)
                                .onTapGesture {
                                    UIApplication.shared.endEditing()
                                    keyword = ""
                                }
                            
                            ,alignment: .trailing
                        )
                        .autocorrectionDisabled()
                }
                .font(.headline)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.theme.background)
                        .shadow(
                            color: Color.theme.accent.opacity(0.15),
                            radius: 10, x: 0, y: 0)
                )
                .padding(.horizontal)
                
                List(viewModel.articles) { article in
                    NavigationLink(destination: WebView(url: article.url)) {
                        VStack(alignment: .leading) {
    //                        Text(article.title)
    //                            .font(.headline)
    //                        Text(article.description)
    //                            .font(.subheadline)
    //                        Text(article.publishedAt)
    //                            .font(.caption)
                            HStack{
                                Image(systemName: "clock")
                                    .padding(.leading)
                                    .foregroundColor(Color.theme.secondaryText)
                                Text("\(article.publishedAt)")
                                    .fontWeight(.light)
                            }
                            .font(.system(size: 10))
                            
                            HStack{
                                Text("\(article.title)")
                                    .font(.title)
                                    .foregroundColor(Color.theme.accent)
                                    .frame(minWidth: 30)
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal)
                            .padding(.top)
                        }
                        .padding(.top)
                    }
                }
                .listStyle(PlainListStyle())
            }
//            .navigationTitle("News")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Crypto News")
                        .font(.headline)
                        .foregroundColor(Color.theme.accent)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                }
            }
        }
        .onAppear {
            viewModel.fetchArticles(withKeyword: keyword)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

//extension NewsView{
//    private var upperColumn: some View{
//        VStack(alignment: .leading){
//            HStack{
//                Text("\(viewModel.title)")
//                    .fontWeight(.light)
//                    .foregroundColor(Color.theme.accent)
//                Image(systemName: "clock")
//                    .padding(.leading)
//                    .foregroundColor(Color.theme.secondaryText)
//                Text("\(viewModel.publishedAt)")
//                    .fontWeight(.light)
//            }
//            .font(.system(size: 10))
//
//        }
//        .padding(.horizontal)
//    }
//
//    private var middleColumn: some View{
//        HStack{
//            Text("\(viewModel.title)")
//                .font(.title)
//                .foregroundColor(Color.theme.secondaryText)
//                .frame(minWidth: 30)
//                .fontWeight(.bold)
//        }
//        .padding(.horizontal)
//    }
//}
