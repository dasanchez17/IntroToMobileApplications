//
//  Problem4ViewController.swift
//  Assignment2
//
//  Created by Daniel Sanchez on 6/30/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import UIKit

class Problem4ViewController: UIViewController {

    @IBOutlet weak var text4: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Problem 4";

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked4(sender: AnyObject) {
        text4.text = "KUMQUATS"
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
