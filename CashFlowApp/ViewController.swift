//
//  ViewController.swift
//  CashFlowApp
//
//  Created by Zach Moore on 1/5/15.
//  Copyright (c) 2015 Zach Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var selectedProfessionLabel: UILabel!

    var gameProfessions:[Profession] = []
    var playerGameProfession = ""
    
    
    
    
    
    
//    var professions: [Profession] = []
    
        var professions = ["Nurse", "Lawyer", "Doctor", "Mechanic", "Teacher", "Business Manager", "Secretary", "Engineer", "Truck Driver", "Police Officer", "Airline Pilot", "Janitor"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var professions: [Profession] = []
        
        selectedProfessionLabel.text = professions[0]
        
        
        var nurse = Profession()
        nurse.totalIncome = 3100
        nurse.perChildExpense = 170
        nurse.totalExpenses = 1980
        nurse.monthlyCashFlow = 1120
        
        var lawyer = Profession()
        lawyer.totalIncome = 7500
        lawyer.perChildExpense = 380
        lawyer.totalExpenses = 5420
        lawyer.monthlyCashFlow = 2080
        
        var doctor = Profession()
        doctor.totalIncome = 13200
        doctor.perChildExpense = 640
        doctor.totalExpenses = 9650
        doctor.monthlyCashFlow = 3550
        
        var mechanic = Profession()
        mechanic.totalIncome = 2000
        mechanic.perChildExpense = 110
        mechanic.totalExpenses = 1280
        mechanic.monthlyCashFlow = 720
        
        var teacher = Profession()
        teacher.totalIncome = 3300
        teacher.perChildExpense = 180
        teacher.totalExpenses = 2190
        teacher.monthlyCashFlow = 1110
        
        var businessManager = Profession()
        businessManager.totalIncome = 4600
        businessManager.perChildExpense = 240
        businessManager.totalExpenses = 2930
        businessManager.monthlyCashFlow = 1670
        
        var secretary = Profession()
        secretary.totalIncome = 2500
        secretary.perChildExpense = 140
        secretary.totalExpenses = 1620
        secretary.monthlyCashFlow = 880
        
        var engineer = Profession()
        engineer.totalIncome = 4900
        engineer.perChildExpense = 250
        engineer.totalExpenses = 3210
        engineer.monthlyCashFlow = 1690
        
        var truckDriver = Profession()
        truckDriver.totalIncome = 2500
        truckDriver.perChildExpense = 140
        truckDriver.totalExpenses = 1620
        truckDriver.monthlyCashFlow = 880
        
        var policeOfficer = Profession()
        policeOfficer.totalIncome = 3000
        policeOfficer.perChildExpense = 160
        policeOfficer.totalExpenses = 1880
        policeOfficer.monthlyCashFlow = 1120
        
        var airlinePilot = Profession()
        airlinePilot.totalIncome = 9500
        airlinePilot.perChildExpense = 480
        airlinePilot.totalExpenses = 6900
        airlinePilot.monthlyCashFlow = 2600
        
        var janitor = Profession()
        janitor.totalIncome = 1600
        janitor.perChildExpense = 70
        janitor.totalExpenses = 950
        janitor.monthlyCashFlow = 650
 
        
        
        
        gameProfessions += [nurse, lawyer, doctor, mechanic, teacher, businessManager, secretary, engineer, truckDriver, policeOfficer, airlinePilot, janitor]
        
        
        
        println(gameProfessions)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
        
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return professions.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        
        return professions[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        var itemSelected = professions[row]
        selectedProfessionLabel.text = itemSelected
        
        switch itemSelected {
        case ("Nurse"):
            print("1")
        case ("Lawyer"):
            print("2")
        case ("Doctor"):
            print(3)
        case ("Mechanic"):
            print(4)
        case ("Teacher"):
            print(5)
        case ("Business Manager"):
            print(6)
        case ("Secretary"):
            print(7)
        case ("Engineer"):
            print(8)
        case ("Truck Driver"):
            print(9)
        case ("Police Officer"):
            print(10)
        case ("Airline Pilot"):
            print(11)
        case ("Janitor"):
            print(12)
        default:
            print("default")
        }
        
        
    }


    
    
    
    
    

}

