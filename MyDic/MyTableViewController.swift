//
//  MyTableViewController.swift
//  MyDic
//
//  Created by Ehkalu Moo on 11/12/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

import UIKit


class MyTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
   
    var filteredWords = [Eng]()
     var words = [Eng]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Sample Data for WordsArray
        //Let add words her in English and defination in to Karen
        self.words = [Eng(name:"Auto"),
            Eng(name:"Apple"),
            Eng(name:"Ant"),
            Eng(name:"Ball"),
            Eng(name:"Bird"),
            Eng(name:"Cat"),
            Eng(name:"Dog"),
            Eng(name:"Egg"),
            Eng(name:"Frog"),
            Eng(name:"Goat"),
            Eng(name:"Happy")]
        
        // Reload the table
      self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredWords.count
        } else {
            return self.words.count
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        var word : Eng
        // Check to see whether the normal table or search results table is being displayed and set the Eng object from the appropriate array
        if tableView == self.searchDisplayController!.searchResultsTableView {
            word = filteredWords[indexPath.row]
        } else {
            word = words[indexPath.row]
        }
        
        // Configure the cell
        cell.textLabel.text = word.name
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
          override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("Detail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "Detail" {
            let wordDetailViewController = segue.destinationViewController as UIViewController
            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
                let destinationTitle = self.filteredWords[indexPath.row].name
               wordDetailViewController.title = destinationTitle
            } else {
                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = self.words[indexPath.row].name
                wordDetailViewController.title = destinationTitle
            
        }
    }
}
}