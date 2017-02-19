//
//  ViewController.swift
//  IOSIsPrimeExample
//
//  Created by Petho Alpar on 19/02/2017.
//  Copyright © 2017 Petho Alpar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultField: UILabel!
   
    @IBOutlet weak var numberField: UITextField!
    
    func isPrime(number : Int) -> Bool {
        if number < 2 {
            return false
        } else if number == 2 {
            return true
        }
        var i = 2
        let limit = Int(ceil(sqrt(Double(number))))
        while i <= limit{
            if number % i == 0{
                return false
            }
            i += 1
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func check(_ sender: Any) {
        let number = Int(numberField.text!)
        if number == nil {
            resultField.text = "Is not a valid number"
        }else{
            let result = isPrime(number: number!)
            resultField.text = result ? "Is prime" : "Is not prime"
        }
        
    }
}

