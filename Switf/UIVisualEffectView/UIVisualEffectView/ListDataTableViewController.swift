//
//  ListDataTableViewController.swift
//  UIVisualEffectView
//
//  Created by Thanh Pham on 12/9/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ListDataTableViewController: UITableViewController,UITableViewDelegate, UITableViewDataSource {

    var name = ["Hoàng Lê Văn","Quân thế", "Phồng Tôm","Luffy","Sanji","Zoro"]
    var point = ["1","2","3","4","5","6","7","8","9"]
    var image = ["hoang","quan","phong","luffy","sanji","zoro"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var nib = UINib(nibName: "ListDataCellCustomController", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "datacell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Ret
        return name.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("datacell", forIndexPath: indexPath) as! ListDataCellCustomController

            cell.id.text = indexPath.row.description
            cell.name.text = name[indexPath.row]
            cell.point.text = point[indexPath.row]
            cell.avata.image = UIImage(named: image[indexPath.row])
        
        return cell
    }
    
    override func tableView (tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
