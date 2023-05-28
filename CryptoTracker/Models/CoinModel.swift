//
//  CoinModel.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 26/05/23.
//

// CoinGecko info

/*
 
 URL : https://api.coingecko.com/api/v3/coins/markets?vs_currency=idr&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=1h&locale=en
 
 JSON Response
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 395281173,
     "market_cap": 7660448891518692,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 8299050984991160,
     "total_volume": 202328278606594,
     "high_24h": 397464917,
     "low_24h": 391001045,
     "price_change_24h": 3075588,
     "price_change_percentage_24h": 0.78418,
     "market_cap_change_24h": 56385731337991,
     "market_cap_change_percentage_24h": 0.74152,
     "circulating_supply": 19384075,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 984115318,
     "ath_change_percentage": -59.84095,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 658780,
     "atl_change_percentage": 59891.40187,
     "atl_date": "2013-07-05T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-05-26T07:04:00.273Z",
     "sparkline_in_7d": {
       "price": [
         26865.531410499854,
         26926.89908684181,
         26869.605123666614,
         26902.60104180959,
         26839.312097815997,
         26839.730333103053,
         26847.67769927846,
         26922.697860618115,
         26884.58461774335,
         26822.19188673361,
         26892.732578978343,
         26846.7155702216,
         26931.99522787957,
         26902.52718904712,
         26833.191999487048,
         26837.035853430727,
         26892.246305752768,
         26881.87377252361,
         26884.371059589947,
         26856.039858445933,
         26863.687715833403,
         26847.973115332796,
         26875.35495806678,
         26875.504721550118,
         26872.54163585236,
         26856.140214966366,
         26861.728283519016,
         26900.704892309306,
         26890.451348743918,
         26892.97446791075,
         26886.58006458474,
         26910.823628226157,
         26894.30032792635,
         26912.20363683264,
         26947.59734915364,
         26927.192748752994,
         27087.460893326,
         27048.558580564448,
         27072.193735646943,
         27031.657038040106,
         27042.902175869334,
         27075.28491632533,
         27101.218998789896,
         27230.28688546331,
         27177.98658323714,
         27173.078095143886,
         27186.015955660823,
         27156.865348238673,
         27111.43059273753,
         27100.92425802607,
         27074.201259310426,
         27057.311692682288,
         27064.80531669238,
         26985.593343277495,
         26904.421589439742,
         26882.330221646378,
         26921.666809622213,
         26958.990149335063,
         26908.865562515894,
         26900.680684955492,
         26908.28228602222,
         26872.356697393854,
         26909.609667987155,
         26873.27670141222,
         26768.160856395705,
         26777.79839608871,
         26773.83024366478,
         26687.76401072988,
         26610.191055561972,
         26657.666860149122,
         26678.89624583248,
         26697.855867979455,
         26763.045904653056,
         26842.269738155013,
         26850.318264894708,
         26860.251542146107,
         26859.640740225765,
         26829.670677433314,
         26813.417866765652,
         26748.186199516895,
         27027.27277363167,
         26945.79976118438,
         26882.201645157253,
         26868.155468374833,
         26858.24442397089,
         26888.514445747012,
         26850.46340814087,
         26870.652378156145,
         26912.917102663214,
         26880.12260504616,
         26862.594876879677,
         26901.503770153227,
         27069.1155538982,
         27050.58189923086,
         27350.217998855227,
         27396.695219130637,
         27416.564946062732,
         27305.095919235962,
         27270.823099174235,
         27334.84596512159,
         27292.209782727867,
         27292.62052373694,
         27335.94345232066,
         27285.695723197812,
         27227.265705951973,
         27304.29366233824,
         27309.80686389815,
         27250.604759718233,
         27191.58486360124,
         27158.630583784463,
         27190.686908928994,
         27224.642562384503,
         27207.34009973233,
         27198.711749279388,
         27221.80881877772,
         27153.235050992225,
         27151.503822695537,
         27163.216088672114,
         26763.117941537657,
         26803.47147521241,
         26782.118909976758,
         26725.091583340374,
         26668.30104178187,
         26734.044072188557,
         26763.747024986726,
         26726.39155402606,
         26722.509636323703,
         26709.963607877304,
         26425.669930827025,
         26309.900063029883,
         26323.102008002985,
         26231.945802655784,
         26317.91235885678,
         26264.50178059414,
         26276.319770528127,
         26404.48651943474,
         26365.12546328932,
         26340.45630729319,
         26338.948946998687,
         26248.12574345076,
         26079.68500137164,
         26096.178914732747,
         26194.84512270826,
         26208.853300949522,
         26249.65927178691,
         26257.65628755252,
         26147.335552541004,
         26221.010345833183,
         26255.51370359313,
         26230.1513346864,
         26247.910007820297,
         26377.526969250634,
         26327.107511826376,
         26372.015091151763,
         26240.92702490415,
         26269.858807970137,
         26364.814718720372,
         26353.218397900157,
         26468.220932098568,
         26484.298196791224,
         26451.688606439933,
         26454.73882889709,
         26475.607902534273,
         26446.494079635904,
         26400.775839028774,
         26424.11506587157,
         26448.296157391003,
         26423.03593682665
       ]
     },
     "price_change_percentage_1h_in_currency": 0.2302734477362835
   }
 */
import Foundation

struct CoinModel : Identifiable, Codable{
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage1HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey{
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath = "ath"
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl = "atl"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage1HInCurrency = "price_change_percentage_1h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage1HInCurrency: priceChangePercentage1HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
}

// MARK: - SparklineIn7D
struct SparklineIn7D : Codable{
    let price: [Double]?
}
