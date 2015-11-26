//
//  MyClosetViewController.swift
//  ClothingApp
//
//  Created by elee on 11/24/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class MyClosetViewController: UITableViewController {
    
    var ClosetItems = ["Tops", "Bottoms", "Dresses", "Suits", "Outerwear", "Shoes", "Accessories"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
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
        return ClosetItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ClosetCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyClosetCell

        // Configure the cell...
        cell.cellItemName?.text = ClosetItems[indexPath.row]
        //cell.cellImage?.image = UIImage(named: "tshirticon.png")
        
        // Display rounded cells
        cell.cellImage?.frame = CGRect (x: 0.0, y: 0.0, width: 60, height: 60)
        cell.cellImage?.layer.cornerRadius = cell.cellImage.frame.size.width/2.0
        cell.cellImage?.clipsToBounds = true
        cell.cellImage?.layer.masksToBounds = true
        cell.cellImage?.image = UIImage(named: "tshirticon.png")

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        ClosetItems.removeAtIndex(indexPath.row)
        
        self.tableView.reloadData()
    }
    

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
