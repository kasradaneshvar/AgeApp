//
//  ViewController.swift
//  AgeApp
//
//  Created by Kasra Daneshvar on 3/13/19.
//  Copyright © 2019 Kasra Daneshvar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var TextEnterBirthdate: UILabel!  // What is "type`!`"?
    @IBOutlet weak var DateChooseDate: UIDatePicker!
    @IBOutlet weak var labelAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: Actions
    @IBAction func buttonComputeAge(_ sender: UIButton) {
        let calendar = Calendar.current
        let date = Date()
        let dateOfBirth = calendar.dateComponents([.year, .month, .day], from: DateChooseDate.date)
        let today = calendar.dateComponents([.year, .month, .day], from: date)
        var age = ["year": today.year! - dateOfBirth.year!, "month": today.month! - dateOfBirth.month!, "day": today.day! - dateOfBirth.day!]
        labelAge.text = "You are \(age["year"]!) years old!"
        // "year" was once unwrapped in 'age', and then needs unwrapping again for interpolation. Why and why?
    }
}
