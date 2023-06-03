//
//  CryptoNewsService.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 02/06/23.
//

import Foundation
import Combine

class CryptoNewsService{
    @Published var allNews: [CryptoNewsModel] = []
    var cancellables = Set<AnyCancellable>()
    var newsSubscription: AnyCancellable?
    
    init(){
        getNews()
    }
    
    func getNews(){
        guard let url = URL(string: "https://newsdata.io/api/1/news?apikey=pub_23902e5f2c344c5ca5abcd4ffe4e904f2657e&q=crypto") else {return}
        
//        newsSubscribtion = NetworkingManager.donwload(url: url)
//            .decode(type: [CryptoNewsModel].self, decoder: JSONDecoder())
//            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedNews) in
//                self?.allNews = returnedNews
//                self?.newsSubscribtion?.cancel()
//            })
        newsSubscription = URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) -> Data in
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on: DispatchQueue.main)
            .decode(type: [CryptoNewsModel].self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] (returnedNews) in
                self?.allNews = returnedNews
                self?.newsSubscription?.cancel()
            }
    }
}
