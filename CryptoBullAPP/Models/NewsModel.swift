//
//  CryptoNewsModel.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 02/06/23.
//

// API crypto endpoint = https://newsapi.org/v2/everything?q=bitcoin&apiKey=aac784ce646d46789241ef4b404114c2
/*
 JSON Response :
 {
    "source": {
        "id": "engadget",
        "name": "Engadget"
    },
    "author": "Mariella Moon",
    "title": "White House proposes 30 percent tax on electricity used for crypto mining",
    "description": "The Biden administration wants to impose a 30 percent tax on the electricity used by cryptocurrency mining operations, and it has included the proposal in its budget for the fiscal year of 2024. In a blog post on the White House website, the administration ha…",
    "url": "https://www.engadget.com/white-house-proposes-30-percent-tax-on-electricity-used-for-crypto-mining-090342986.html",
    "urlToImage": "https://s.yimg.com/uu/api/res/1.2/_0lUWxV0epaYKnRPQ1.Jxw--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-05/5d8f2740-e97d-11ed-b4b3-dfb213c6d348.cf.jpg",
    "publishedAt": "2023-05-03T09:03:42Z",
    "content": "The Biden administration wants to impose a 30 percent tax on the electricity used by cryptocurrency mining operations, and it has included the proposal in its budget for the fiscal year of 2024. In a… [+3408 chars]"
}
 */

import Foundation

struct NewsAPIResponse: Codable {
    let articles: [NewsModel]
}

struct NewsModel: Codable, Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let url: String
    let publishedAt: String
}
