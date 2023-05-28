//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 27/05/23.
//

import Foundation

// JSON Data
/*
 
 URL : https://api.coingecko.com/api/v3/global

 JSON Response
 {
   "data": {
     "active_cryptocurrencies": 10226,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 745,
     "total_market_cap": {
       "btc": 43797652.062330686,
       "eth": 639186511.743832,
       "ltc": 13290324718.883957,
       "bch": 10343089430.897594,
       "bnb": 3818700646.9548817,
       "eos": 1333501598548.0425,
       "xrp": 2472143447338.2607,
       "xlm": 13254031253557.572,
       "link": 184277446360.63223,
       "dot": 222048051906.011,
       "yfi": 181646471.11231267,
       "usd": 1170747776836.8735,
       "aed": 4299219986100.3604,
       "ars": 275844835963631.22,
       "aud": 1796161239223.1294,
       "bdt": 125509664191464,
       "bhd": 441233763629.83545,
       "bmd": 1170747776836.8735,
       "brl": 5846948547078.699,
       "cad": 1593762363563.5706,
       "chf": 1061125979500.5298,
       "clp": 936949445802549.8,
       "cny": 8270981819019.464,
       "czk": 25848413328281.72,
       "dkk": 8129321338022.171,
       "eur": 1090961315845.4401,
       "gbp": 948281113534.5505,
       "hkd": 9169238050797.523,
       "huf": 405312880340925.06,
       "idr": 17570699709545474,
       "ils": 4361989628155.4683,
       "inr": 96662550191242,
       "jpy": 164671528550990.3,
       "krw": 1549402730299220.8,
       "kwd": 359993233899.56946,
       "lkr": 353954573062538.56,
       "mmk": 2458258680640733,
       "mxn": 20640166230856.387,
       "myr": 5386610521226.432,
       "ngn": 540300099010216.5,
       "nok": 12981638867081.377,
       "nzd": 1936401603167.0889,
       "php": 65433679792049.12,
       "pkr": 334131415509243,
       "pln": 4944594698081.697,
       "rub": 93789766954944.02,
       "sar": 4390802901691.2046,
       "sek": 12659178636159.416,
       "sgd": 1580729599311.822,
       "thb": 40653949620167.24,
       "try": 23383228271985.164,
       "twd": 35933527364898.76,
       "uah": 43233064825618.94,
       "vef": 117226974894.67616,
       "vnd": 27489157800129732,
       "zar": 23016772510357.426,
       "xdr": 874507613124.9546,
       "xag": 50197145584.34631,
       "xau": 601413132.9610993,
       "bits": 43797652062330.69,
       "sats": 4379765206233068.5
     },
     "total_volume": {
       "btc": 1150604.531560902,
       "eth": 16792016.519022547,
       "ltc": 349149032.59428275,
       "bch": 271722455.63743454,
       "bnb": 100320772.0543506,
       "eos": 35032311320.010864,
       "xrp": 64945478107.54552,
       "xlm": 348195569938.0847,
       "link": 4841137706.315011,
       "dot": 5833406192.27091,
       "yfi": 4772019.570967644,
       "usd": 30756618994.69582,
       "aed": 112944456272.3218,
       "ars": 7246697101838.613,
       "aud": 47186804861.66227,
       "bdt": 3297254112340.667,
       "bhd": 11591616079.958971,
       "bmd": 30756618994.69582,
       "brl": 153604706583.30948,
       "cad": 41869600569.85925,
       "chf": 27876753731.746468,
       "clp": 24614522181455.06,
       "cny": 217286286211.82764,
       "czk": 679061550305.3403,
       "dkk": 213564735313.4686,
       "eur": 28660555410.207283,
       "gbp": 24912215496.70463,
       "hkd": 240884302135.50714,
       "huf": 10647941495963.678,
       "idr": 461598413534294.06,
       "ils": 114593472399.72238,
       "inr": 2539413942190.1606,
       "jpy": 4326072244698.9365,
       "krw": 40704232276150.21,
       "kwd": 9457352774.678995,
       "lkr": 9298711610222.078,
       "mmk": 64580712538397.984,
       "mxn": 542236117214.58746,
       "myr": 141511203994.59482,
       "ngn": 14194179666052.102,
       "nok": 341039571854.0742,
       "nzd": 50871047981.17992,
       "php": 1719002844679.667,
       "pkr": 8777939061086.167,
       "pln": 129899042493.14813,
       "rub": 2463943288987.735,
       "sar": 115350423549.80095,
       "sek": 332568245527.74603,
       "sgd": 41527217887.21029,
       "thb": 1068016582081.6794,
       "try": 614298875519.1593,
       "twd": 944006755480.3988,
       "uah": 1135772306488.7114,
       "vef": 3079660259.9388924,
       "vnd": 722165413995456.2,
       "zar": 604671746207.6289,
       "xdr": 22974117907.37294,
       "xag": 1318725101.9432309,
       "xau": 15799675.177575171,
       "bits": 1150604531560.902,
       "sats": 115060453156090.2
     },
     "market_cap_percentage": {
       "btc": 44.26030640275476,
       "eth": 18.812928078843832,
       "usdt": 7.098402013556128,
       "bnb": 4.133081820521666,
       "usdc": 2.4829927066964035,
       "xrp": 2.101990875984327,
       "ada": 1.0905121224273517,
       "steth": 1.0572310622596175,
       "doge": 0.8517314733676635,
       "matic": 0.7284398656296204
     },
     "market_cap_change_percentage_24h_usd": 1.3256628191990247,
     "updated_at": 1685172452
   }
 }
 */

struct GlobalData: Codable{
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey{
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String{
        if let item = totalMarketCap.first(where: {$0.key == "idr"}) {
            return "Rp" + item.value.formattedwithAbbreviations()
        }
        return " "
    }
    
    var volume: String{
        if let item = totalVolume.first(where: {$0.key == "idr"}){
            return "Rp" + item.value.formattedwithAbbreviations()
        }
        return " "
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}){
            return item.value.asPercentageString()
        }
        return " "
    }
}
