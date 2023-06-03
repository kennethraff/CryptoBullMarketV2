//
//  CryptoNewsModel.swift
//  Crypto Bull
//
//  Created by Tegar Marino on 02/06/23.
//

// API crypto endpoint = https://newsdata.io/api/1/crypto?apikey=pub_23902e5f2c344c5ca5abcd4ffe4e904f2657e
/*
 JSON Response :
 {
             "title": "Metis introduces Athena Finance as the next-generation DeFi yield aggregator",
             "link": "https://www.cryptonewsz.com/metis-introduces-athena-finance-as-the-next-generation-defi-yield-aggregator/",
             "keywords": [
                 "DeFi",
                 "DeFi News"
             ],
             "creator": [
                 "Trevor Holman"
             ],
             "video_url": null,
             "description": "The world of DeFi, short for decentralized finance, is changing rapidly. Metis is simply keeping up with the pace by focusing on growing its network. MetisDAO, on a similar line, announced integrating Athena Finance with the core objective of simplifying the DeFi experience. While it will largely benefit the existing crypto-enthusiasts, newcomers can also take …",
             "content": "The world of DeFi, short for decentralized finance, is changing rapidly. Metis is simply keeping up with the pace by focusing on growing its network. MetisDAO, on a similar line, announced integrating Athena Finance with the core objective of simplifying the DeFi experience. While it will largely benefit the existing crypto-enthusiasts, newcomers can also take advantage by getting on board. Athena Finance has been defined as a DeFi protocol that dedicatedly works to serve the next generation through yield optimization. Following the introduction to the community, it will serve its offerings within the Metis ecosystem to the members. In addition to crypto enthusiasts, liquidity providers or seasoned yield farmers can also leverage the true potential of Athena Finance on Metis. Calling it a powerful tool, MetisDAO has expressed confidence in Athena Finance by stating that it will disrupt the way users approach DeFi and yield in the market. Athena Finance will complement the mission of providing a streamlined and efficient experience in the DeFi sphere by bringing down the costs related to yield and opportunity. Athena Finance rides on the foundational ground that was laid by Hummus Exchange. It is designed to power up the performance of Metis and improve its capital efficiency and user experience. Needless to say, the eye is also on the future when both will further build on the current integration. The manner in which Athena Finance offers a streamlined experience is by putting forward the straightforward alternative nature of addressing the common challenges that everyone faces in DeFi. This includes exposure to volatile assets and complications during yield maximization. Innovative features like Vaults come to the rescue, especially to help generate optimal returns. Anyone holding ATH in their portfolio gains access to the governance and revenue of the protocol. It further enhances the experience of a user. Launching Athena Finance has been termed a , carrying the potential to unlock more collaborations between Athena Finance and other DeFi products in the ecosystem of Metis. The official website of Athena Finance is live, allowing users to experience the possibilities and explore what else it has to offer. Users generate yields on their deposits by integrating Hummus Exchange by Athena Finance. ATH is the native token that gives away approximately 30% of the protocol’s revenue while also unlocking the voting power of HUM. Stakers and liquidity providers of xHUM are automatically awarded ATH. MetisDAO introducing Athena Finance follows Aave V3 going live on Metis. Effective May 08, 2023, Aave V3 is live on the platform to accelerate its DeFi offerings. Key functionalities that users can access are lending and borrowing. Metis users can deposit their funds to the pool just like the way it is done for a savings account. Deposits then generate yield while enabling the platform to lend that money. The only difference is decentralization and non-custodial nature. Borrowing can be done by Metis users, provided they have tabled collateral on the platform. Athena Finance is now live on Metis, marking a new chapter for Metis in the world of decentralized finance.",
             "pubDate": "2023-06-02 13:20:20",
             "image_url": null,
             "source_id": "cryptonewsz",
             "category": [
                 "top"
             ],
             "country": [
                 "india"
             ],
             "language": "english"
         }
 */

import Foundation

struct CryptoNewsModel: Identifiable, Codable{
//    let title: String
//    let link: String?
//    let keywords, creator: [String]?
//    let videoURL: NSNull?
//    let description, content, pubDate: String?
//    let imageURL: NSNull?
//    let sourceID: String?
//    let category, country: [String]?
//    let language: String?
//
//    enum CodingKeys: String, CodingKey {
//        case title, link, keywords, creator
//        case videoURL = "video_url"
//        case description, content, pubDate
//        case imageURL = "image_url"
//        case sourceID = "source_id"
//        case category, country, language
//    }
    
    var id: String {
            return title
        }
    let title: String
    let link: String
    let keywords: [String]
    let creator: [String]
    let videoURL: String?
    let description: String
    let content: String
    let pubDate: String
    let imageURL: String?
    let sourceID: String
    let category: [String]
    let country: [String]
    let language: String
        
    enum CodingKeys: String, CodingKey {
        case title, link, keywords, creator
        case videoURL = "video_url"
        case description, content, pubDate
        case imageURL = "image_url"
        case sourceID = "source_id"
        case category, country, language
    }
}
