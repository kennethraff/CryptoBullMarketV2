//
//  NewsViewModel.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 03/06/23.
//

import Foundation
import Combine

class NewsViewModel: ObservableObject {
    @Published var articles = [NewsModel]()
    
    // Fetch article data from API
    func fetchArticles(withKeyword keyword: String) {
        let keywordEncoded = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "https://newsapi.org/v2/everything?q=\(keywordEncoded)&apiKey=aac784ce646d46789241ef4b404114c2"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching articles: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(NewsAPIResponse.self, from: data)
                DispatchQueue.main.async {
                    self.articles = decodedResponse.articles
                }
            } catch {
                print("Error decoding response: \(error.localizedDescription)")
            }
        }.resume()
    }
}
