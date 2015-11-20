//
//  CustomTableViewController.swift
//  TableView
//
//  Created by Thanh Pham on 11/20/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {

    var listImage:[String]!
    var listGia:[String]!
    var listName:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listImage = ["dt1.jpg","dt2.jpg","dt3.jpg","dt4.jpg","dt5.jpg","dt6.jpg"]
        listGia = ["27.400.9000","21.7900.000","21.591.000","19.990.000","19.999.000","18.400.000"]
        listName = ["IPorn 6 Plus 128GB","IPorn 6 Plus 64GB","IPorn 6 Plus 32GB","Samsung Galaxy S6 EGDE","Sony Experial Premium","Samsung Galasy S6 EDGE 69GB"]
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return listGia.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
//        var image : UIImageView  = UIImageView(frame: CGRectMake(0,0,200,200))
//            image.image = UIImage(named: listImage[indexPath.row])
//        cell.addSubview(image)
//        
//        var name: UILabel = UILabel (frame:  CGRectMake(210,0, 200, 20))
//        name.text = listName[indexPath.row]
//        cell.addSubview(name)
//        
//        var gia : UILabel = UILabel(frame: CGRectMake(210, 40, 200, 20))
//        gia.text = listGia[indexPath.row]
//        cell.addSubview(gia)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
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
