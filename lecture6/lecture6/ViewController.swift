//
//  ViewController.swift
//  Lecture6
//
//  Created by Van Simmons on 7/11/16.
//  Copyright © 2016 S65g. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ExampleDelegateProtocol {

    var example: ExampleProtocol!
    @IBOutlet weak var rows: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Example.sharedInstance.rows = 20
        example = Example.sharedInstance
        example.delegate = self
        let e = example[1,1]
        example[7,4] = .B
        print ("\(e)")
        
        let sel = #selector(ViewController.watchForNotifications(_:))
        let center  = NSNotificationCenter.defaultCenter()
        center.addObserver(self, selector: sel, name: "ExampleNotification", object: nil)
        
        
    }
    
    func watchForNotifications(notification:NSNotification) {
        print("\(notification.userInfo)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func increment(sender: AnyObject) {
        example.rows += 10
    }

    @IBAction func updateTimeInterval(sender: UITextField) {
        if let text = sender.text,
            interval = Double(text)  {
            example.refreshInterval = interval
        }
        else  {
            example.refreshInterval = 0
        }
    }
    
    func example(example: Example, didUpdateRows modelRows: UInt) {
        rows.text  = String(modelRows)
    }

    func example(example: Example, didUpdateColumns modelColumns: UInt) {
//        rows.text  = String(modelColumns)
    }
}

