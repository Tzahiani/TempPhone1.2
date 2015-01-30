//
//  FirstViewController.swift
//  TempPhone1.2
//
//  Created by Tzahi Anidgar on 17/11/14.
//  Copyright (c) 2014 GreatApp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tblPhones: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tblPhones.reloadData();
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            phoMgr.persons.removeAtIndex(indexPath.row)
            tblPhones.reloadData()
        }
    }
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return phoMgr.persons.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
       
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel.text = phoMgr.persons[indexPath.row].name
        cell.detailTextLabel!.text = phoMgr.persons[indexPath.row].phone
        
        return cell
    }


}

