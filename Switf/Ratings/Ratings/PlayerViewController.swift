//
//  PlayerViewController.swift
//  Ratings
//
//  Created by Thanh Pham on 11/12/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit


class PlayerViewController: UITableViewController {
    
    var players:[Player] = playersData
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      		
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func imageForRating(rating:Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return players.count

    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as! UITableViewCell
        let player = players[indexPath.row] as Player //2
        
        if  let nameLabel = cell.viewWithTag ( 100 )  as?  UILabel  {  //3
            nameLabel.text = player.name
        }
        if  let gameLabel = cell.viewWithTag ( 101 )  as?  UILabel  {
            gameLabel.text = player.game
        }
        if  let ratingImageView = cell.viewWithTag ( 103 )  as?  UIImageView  {
            ratingImageView.image =  self .imageForRating ( player.rating )
        } 
        return cell    }

    
    // TUT Part 2 
    
    
    
    @IBAction func cancelToPlayersViewController ( segue : UIStoryboardSegue )  {
    }
    
    @IBAction func savePlayerDetail ( segue : UIStoryboardSegue )  {
        if let playerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController {
            
            //add the new player to the players array
            if let player = playerDetailsViewController.player {
                players.append(player)
                
                //update the tableView
                let indexPath = NSIndexPath(forRow: players.count-1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    
}
