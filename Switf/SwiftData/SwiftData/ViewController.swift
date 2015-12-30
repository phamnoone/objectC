//
//  ViewController.swift
//  SwiftData
//
//  Created by Thanh Pham on 12/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let err = SD.executeChange("INSERT INTO Cities (Name, Population, IsWarm, FoundedIn) VALUES ('Toronto', 2615060, 0, '1793-08-27')") {
            //there was an error during the insert, handle it here
        } else {
            //no error, the row was inserted successfully
        }
        println(SD.databasePath())
    
        let (resultSet, err) = SD.executeQuery("SELECT * FROM Cities")
        if err != nil {
            //there was an error during the query, handle it here
        } else {
            for row in resultSet {
                if let name = row["Name"]?.asString() {
                    println("The City name is: \(name)")
                }
                if let population = row["Population"]?.asInt() {
                    println("The population is: \(population)")
                }
                if let isWarm = row["IsWarm"]?.asBool() {
                    if isWarm {
                        println("The city is warm")
                    } else {
                        println("The city is cold")
                    }
                }
                if let foundedIn = row["FoundedIn"]?.asDate() {
                    println("The city was founded in: \(foundedIn)")
                }
            }
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

