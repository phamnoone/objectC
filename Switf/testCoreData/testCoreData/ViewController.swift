//
//  ViewController.swift
//  testCoreData
//
//  Created by Thanh Pham on 12/29/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tabkeView: UITableView!
    var names = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"The List \""
        tabkeView.registerClass(UITableView.self, forHeaderFooterViewReuseIdentifier: "Cell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addName(sender: AnyObject) {
        let alert = UIAlertController(title: "New Name",
            message: "Add a new name",
            preferredStyle: .Alert)
        
     
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        cell.textLabel!.text = names[indexPath.row]
        
        return cell
    }
    

}

