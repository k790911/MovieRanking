//
//  Models.swift
//  MovieRanking
//
//  Created by 김재훈 on 2022/03/13.
//

import Foundation

struct MovieData: Codable {
    let boxOfficeResult: BoxOfficeResult
}

struct BoxOfficeResult: Codable {
    let dailyBoxOfficeList: [DailyBoxOfficeList]
}

struct DailyBoxOfficeList: Codable {
    let rnum: String //"1"
    let rank: String //"1"
    let rankInten: String //"2"
    let rankOldAndNew: String//"OLD"
    let movieCd: String //"20207443"
    let movieNm: String //"소울"
    let openDt: String //"2021-01-20"
    let salesAmt: String //"329131370"
    let salesShare: String //"21.6"
    let salesInten: String //"-9332340"
    let salesChange: String //"-2.8"
    let salesAcc: String //"17740102050"
    let audiCnt: String //"34370"
    let audiInten: String //"-1320"
    let audiChange: String //"-3.7"
    let audiAcc: String //"1915003"
    let scrnCnt: String //"784"
    let showCnt: String //"1877"
}
