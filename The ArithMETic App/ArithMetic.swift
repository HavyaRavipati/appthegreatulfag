//
//  ArithMetic.swift
//  The ArithMETic App
//
//  Created by Ravipati,Havya on 2/14/19.
//  Copyright © 2019 Ravipati,Havya. All rights reserved.
//

import Foundation
struct ExerciseCoach{
static let sports:[String:Double] = ["Bicycling" : 8.0, "Jumping rope" : 12.3,  "Running-slow" : 9.8, "Runningfast" : 23.0, "Tennis" : 8.0, "Swimming" : 5.8]
let met = sports["Bicycling"]!
var EnergyConsumed = 0.0
static func energyConsumed(during activity:String, weight:Double,time:Int) -> Double{
    let energyconsumed = (ExerciseCoach.sports[activity]! * 3.5 * (weight/2.2))/200.0 * Double(time)
    return energyconsumed
    }
static func timeToLose1Pound(during Activity:String, weight:Double) -> Double{
    let timeToLose1Pound = (3500)/((ExerciseCoach.sports[Activity]! * 3.5 * (weight/2.2))/200.0)
    return timeToLose1Pound
    }
}
