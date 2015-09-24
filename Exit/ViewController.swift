//
//  ViewController.swift
//  Exit
//
//  Created by Jeremy Schmidt on 6/16/15.
//  Copyright © 2015 Jeremy Schmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func exitButtonWasPressed(sender: AnyObject)
    {
        print("Thank you for using my app.")
        exit(0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

