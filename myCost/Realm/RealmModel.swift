//
//  RealmModel.swift
//  myCost
//
//  Created by Анна Тибекина on 01.06.2022.
//

import RealmSwift

class Spending: Object {
    
    @objc dynamic var category = ""
    @objc dynamic var cost = 1
    @objc dynamic var date = NSDate()
}
