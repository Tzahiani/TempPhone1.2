//
//  PhoneManeger.swift
//  TempPhone1.2
//
//  Created by Tzahi Anidgar on 17/11/14.
//  Copyright (c) 2014 GreatApp. All rights reserved.
//

import UIkit

var phoMgr: PhoneManeger = PhoneManeger()
struct person {
    var name = "Un-Named"
    var phone = "Un-phone"
    var days = "Un-date"
}
class PhoneManeger: NSObject {
    
    var persons = [person]()
    
    func addPerson(name: String,Phone: String, days: String){
        persons.append(person(name: name, phone: Phone, days:days))
    }
}
