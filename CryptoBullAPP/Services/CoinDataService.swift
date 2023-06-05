//
//  CoinDataServices.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 26/05/23.
//

import Foundation
import Combine

class CoinDataService {
    @Published var allCoin: [CoinModel] = []
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    func getCoins() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=idr&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=1h&locale=en") else {return}
        
        coinSubscription = NetworkingManager.donwload(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoin = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
}
