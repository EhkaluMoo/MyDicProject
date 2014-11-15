//
//  DetailViewController.swift
//  MyDic
//
//  Created by Ehkalu Moo on 11/13/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    override   func   viewDidLoad ( )   {
        super . viewDidLoad ( )
        
        // defination appear
        let   myLabel :   UILabel   =   UILabel ( frame :   CGRectMake ( 20 , 20 , 300 , 100 ) )
        //label type
        myLabel . text   =   "word appear"
        
        myLabel . font   =   UIFont . systemFontOfSize ( 20 )
        
        self . view . addSubview ( myLabel )
        
        
        // Label 2
        let   myLabel2 :   UILabel   =   UILabel ( frame :   CGRectMake ( 20 , 120 , 300 , 100 ) )
        // Label type
        myLabel2 . text   =   "word appear"
        
        myLabel2 . font   =   UIFont ( name :   "knu" ,   size :   24 )
        // View
        self . view . addSubview ( myLabel2 )
        
        
        
    }
    
    override   func   didReceiveMemoryWarning ( )   {
        super . didReceiveMemoryWarning ( )
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
