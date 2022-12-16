//
//  Person.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-16.
//

import Foundation

class Person {
    var name: String
    var dob: String
    var email: String
    var password: String
    var height: String
    var weight: String
    var targetCalories: Int = 0
    var todayCalories: Int = 0
    
    init () {
        name = ""
        dob = ""
        email = ""
        password = ""
        height = ""
        weight = ""
        targetCalories = 0
        todayCalories = 0
    }
    
    init(name: String, dob: String, email: String, password: String, height: String, weight: String, targetColories: Int) {
        self.name = name
        self.dob = dob
        self.email = email
        self.password = password
        self.height = height
        self.weight = weight
        self.targetCalories = targetColories
        self.todayCalories = 0
    }
    
    func setName(_ name:String) {
        self.name = name
    }
    func getName() -> String {
       return self.name
    }
    
    func setDOB(_ dob:String) {
        self.dob = dob
    }
    func getDOB() -> String {
       return self.dob
    }
    
    func setEmail(_ email:String) {
        self.email = email
    }
    func getEmail() -> String {
       return self.email
    }
    
    func setPassword(_ password:String) {
        self.password = password
    }
    func getPassword() -> String {
       return self.password
    }
    
    func setHeight(_ height:String) {
        self.height = height
    }
    func getHeight() -> String {
       return self.height
    }
    
    func setWeight(_ weight:String) {
        self.weight = weight
    }
    func getWeight() -> String {
       return self.weight
    }
    
    func setTargetCalories(_ cals:Int) {
        self.targetCalories = cals
    }
    func getTargetCalories() -> Int {
       return self.targetCalories
    }
    
    func addTodayCalories(_ cals:Int) {
        self.todayCalories += cals
    }
    func getTodayCalories() -> Int {
       return self.todayCalories
    }
}
