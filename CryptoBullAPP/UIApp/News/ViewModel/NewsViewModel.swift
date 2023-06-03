//
//  NewsViewModel.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 03/06/23.
//

import Foundation
import Combine

class NewsViewModel: ObservableObject{
    @Published var allNews: [CryptoNewsModel] = []
    
    private let dataService = CryptoNewsService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        addSubsribers()
    }
    
    func addSubsribers(){
        dataService.$allNews
            .sink { [weak self] (returnedNews)in
                self?.allNews = returnedNews
            }
            .store(in: &cancellables)
    }
}
