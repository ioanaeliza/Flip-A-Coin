//
//  CoinModel.swift
//  Flip a Coin
//
//  Created by mac on 30/01/2017.
//  Copyright © 2017 Ioana Marian. All rights reserved.
//

import GameKit

struct CoinModel {
    let coinSides = [
    "Heads",
    "Tails"
    ]
    func getRandomCoinToss() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: coinSides.count)
        return coinSides[randomNumber]
    }

}
