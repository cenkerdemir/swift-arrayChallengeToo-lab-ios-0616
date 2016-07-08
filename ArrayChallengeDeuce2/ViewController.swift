//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    
    // Create your methods here
    func addNameToDeliLine(name: String)-> String {
        var greeting: String = ""
        switch name.lowercaseString {
            case "billy crystal":
                deliLine.insert(name, atIndex: 0)
            case "meg ryan":
                deliLine.insert(name, atIndex: 0)
            default:
                deliLine.append(name)
        }
        
        if let indexOfCustomer = deliLine.indexOf(name) {
            switch name.lowercaseString {
                case "billy crystal":
                    greeting = "Welcome Billy! You can sit wherever you like."
                case "meg ryan":
                    greeting = "Welcome Billy! You can sit wherever you like."
                default:
                    if indexOfCustomer == 0 {
                        greeting = "Welcome \(name), you're first in line!"
                    }
                    else {
                    greeting = "Welcome \(name), you're number \(indexOfCustomer + 1) in line."
                    }
            }
        }
        return greeting
    }

    func nowServing() -> String {
        var servingMessage : String = ""
        if deliLine.count == 0 {
            servingMessage = "There is no-one to be served."
        }
        else {
            servingMessage = "Now serving \(deliLine[0])!"
        }
        deliLine.removeAtIndex(0)
        return servingMessage
    }

    func deliLineDescription() -> String {
        var lineDescription : String = ""
        if deliLine.count == 0 {
            lineDescription = "The line is currently empty."
        }
        else {
            lineDescription = "The line is:\n"
            for (index, name) in deliLine.enumerate() {
                lineDescription += "\(index+1) \(name)\n"
            }
        }
        return lineDescription
    }

}


