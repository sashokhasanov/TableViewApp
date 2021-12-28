//
//  Person.swift
//  TableViewApp
//
//  Created by Сашок on 28.12.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {

        let shuffledNames = DataManager.instance.names.shuffled()
        let shuffledSurnames = DataManager.instance.surnames.shuffled()
        let shuffledEmails = DataManager.instance.emails.shuffled()
        let shuffledPhones = DataManager.instance.phones.shuffled()
        
        var result = [Person]()
        result.reserveCapacity(shuffledNames.count)
        
        for index in 0..<shuffledNames.count {
            result.append(Person(name: shuffledNames[index],
                                 surname: shuffledSurnames[index],
                                 phone: shuffledPhones[index],
                                 email: shuffledEmails[index]))
        }
        
        return result
    }
}
