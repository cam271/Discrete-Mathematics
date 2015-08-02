//
//  MainMenuViewController.swift
//  Discrete Mathematics
//
//  Created by Chris on 7/25/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: -IBOutlet and variables
    @IBOutlet
    
    var tableView: UITableView!
    
    var items: [String] = ["Boolean Logic", "Venn Diagrams", "Set Ordering", "Universal Quantifiers", "Proofs", "Functions", "Counting", "Graphs"]
    
    
    // MARK: - IBActions
    // View did load
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    
    // Gets the number of rows based off of String count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.items.count;
    }
    
    
    // Names the cells and places disclosure indicator type
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        // String to label
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    // didSelectRowAtIndexPath 
    // segues to selected view Controller
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if indexPath.row == 0 {
        self.performSegueWithIdentifier("booleanLogicSegue", sender: self)
            
        }
     
        if indexPath.row == 1 {
        self.performSegueWithIdentifier("vennDiagramSegue", sender: self)
        }
        
        if indexPath.row == 2 {
        self.performSegueWithIdentifier("setOrdereringSegue", sender: self)
        }
       
    }
    
}  // end class
