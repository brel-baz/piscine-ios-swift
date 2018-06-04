//
//  data.swift
//  D02
//
//  Created by ELBAZ on 31/05/2018.
//  Copyright © 2018 pepe. All rights reserved.
//

import Foundation

let YEAR_IN_SECONDS: TimeInterval = 31556952.0
let MONTH_IN_SECONDS: TimeInterval = 2592000.0
let WEEK_IN_SECONDS: TimeInterval = 604800.0
let DAY_IN_SECONDS: TimeInterval = 86400.0
let HOUR_IN_SECONDS: TimeInterval = 3600.0
let MINUTE_IN_SECONDS: TimeInterval = 60.0

struct Data {
    static var info: [(String, String, Date)] = [
        ("Hershel", "Decapite par le gouverneur", Date(timeIntervalSince1970:
            YEAR_IN_SECONDS * 40 +
                MONTH_IN_SECONDS * 2 +
                WEEK_IN_SECONDS * 3)),
        ("Glen", "Battu à mort par Negan", Date(timeIntervalSince1970:
            YEAR_IN_SECONDS * 40 +
                MONTH_IN_SECONDS * 2 +
                WEEK_IN_SECONDS * 3)),
        ("Carl", "Mordu par un rodeur", Date(timeIntervalSince1970:
            YEAR_IN_SECONDS * 40 +
                MONTH_IN_SECONDS * 2 +
                WEEK_IN_SECONDS * 3)),
    ]
}
