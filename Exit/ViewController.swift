//
//  ViewController.swift
//  Exit
//
//  Created by Jeremy Schmidt on 6/16/15.
//  Copyright © 2015 Jeremy Schmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        setCountFromFile()
    }

    @IBOutlet var countText: UILabel!
    let fileName = "exitCount"
    
    func setCountFromFile()
    {
        
        // For reading count from previous uses
        if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first
        {
            let path = dir.stringByAppendingPathComponent(fileName)
            
            do
            {
                let previousCount = try NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
                if let countNumber = Int(previousCount as String)
                {
                    countText.text = String((countNumber + 1))
                }
            }
            catch { print("Unable to read file") }
        }
    }
    
    @IBAction func exitButtonWasPressed(sender: AnyObject)
    {
        // For recording count
        if let count = Int(countText.text!)
        {
            if let dir : NSString = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first
            {
                let path = dir.stringByAppendingPathComponent(fileName)
                let text = String(count)
                do
                {
                    try text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding)
                }
                catch { print("Unable to write to file") }
            }
        }
        
        print("Thank you for using my app.")
        exit(0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

