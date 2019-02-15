//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by Ravipati,Havya on 2/14/19.
//  Copyright © 2019 Ravipati,Havya. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var ActivityTF: UITextField!
    @IBOutlet weak var WeightTF: UITextField!
    @IBOutlet weak var ExerciseTimeTF: UITextField!
    @IBOutlet weak var EnergyConsumedLBL: UILabel!
    @IBOutlet weak var TimeConsumedLBL: UILabel!
    
    @IBAction func CalculateBTN(_ sender: Any) {
        let activity = ActivityTF.text!
        let xkg = Double(WeightTF.text!)!
        let time = Int(ExerciseTimeTF.text!)!
        let energy = ExerciseCoach.energyConsumed(during: activity, weight: xkg, time: time)
        EnergyConsumedLBL.text =  String(format: "%.1f cal", energy)
        let duration = ExerciseCoach.timeToLose1Pound(during: activity, weight: xkg)
        TimeConsumedLBL.text = String(format: "%.1f minutes", duration)
    }
    @IBAction func ClearBTN(_ sender: Any) {
        ActivityTF.text = nil
        WeightTF.text = nil
        ExerciseTimeTF.text = nil
        EnergyConsumedLBL.text = "0 cal"
        TimeConsumedLBL.text = "0 minutes"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

