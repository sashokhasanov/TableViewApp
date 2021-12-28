//
//  DataManager.swift
//  TableViewApp
//
//  Created by Сашок on 28.12.2021.
//

import Foundation

class DataManager {
    static let instance = DataManager()
    
    let names = ["Jonh", "Mike", "Matt", "David",
                 "Peter", "Paul", "Bill", "Richard", "Simon", "Jim"]
    
    let surnames = ["Stevenson", "Johnson", "Lumier",
                    "Murphy", "Smith", "Taylor", "White", "Deeeze", "Garcia", "Miller"]
    
    let phones = ["(455) 942-2254", "(594) 278-0171", "(481) 409-4874",
                  "(676) 912-0642", "(873) 804-2621", "(795) 601-6607",
                  "(618) 827-4799", "(242) 421-3602", "(418) 768-1495", "(224) 886-4953"]
    
    let emails = ["wortmanj@verizon.net", "uncled@comcast.net", "dodong@yahoo.ca",
                  "jgwang@sbcglobal.net", "mhassel@att.net","staffelb@att.net",
                  "ideguy@sbcglobal.net", "houle@aol.com", "koudas@optonline.net", "mpiotr@live.com"]
    
    private init() {}
}
