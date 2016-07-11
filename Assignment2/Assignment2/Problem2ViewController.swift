//
//  Problem2ViewController.swift
//  Assignment2
//
//  Created by Daniel Sanchez on 6/30/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import UIKit

class Problem2ViewController: UIViewController {
    @IBOutlet weak var Text: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Problem 2";

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonClicked(sender: AnyObject) {
        Text.text = "KUMQUATS"
        
        var count = 0
        var before = Array(count: 10, repeatedValue: Array(count: 10, repeatedValue: false))
        var after = Array(count: 10, repeatedValue: Array(count: 10, repeatedValue: false))
        
        for x in 0...9{
            for y in 0...9{
                if arc4random_uniform(3) == 1 {
                    before [x][y] = true
                    count+=1
                }
            }
        }
        
        Text.text = "The remaining cells living is " + String(count)
        
        var neighborCells = Array(count: 10, repeatedValue: Array(count: 10, repeatedValue: 0))
        for x in 0...9{
            for y in 0...9{
                
                switch true{
                case ((x<9&&x>0)&&(y<9&&y>0)):
                    if (before[x+1][y-1]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x+1][y+1]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x-1][y-1]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x-1][y+1]){
                        neighborCells[x][y] += 1
                }
                    if (before[x-1][y]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x+1][y]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x][y+1]){
                        neighborCells[x][y] += 1
                    }
                    if (before[x][y-1]){
                        neighborCells[x][y] += 1
                    }
                case (x==0&&y>0&&y<9): break
                if (before[x+1][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y+9]){
                    neighborCells[x][y] += 1
                    
                    
            }
                case (y==0&&x>0&&x<9): break
                if (before[x][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y-1]){
                    neighborCells[x][y] += 1
                
                }
                    
                case (x==9&&y>0&&y<9): break
                if (before[x-1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y-1]){
                neighborCells[x][y] += 1
                    
                }
                    
                case (y==9&&x>0&&x<9): break
                if (before[x][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y-9]){
                    neighborCells[x][y] += 1
    
                }
                    
                case (x==0&&y==0): break
                if (before[x][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y+9]){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==9&&y==0): break
                if (before[x][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y+1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y+9]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y+9]){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==0&&y==9): break
                if (before[x][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x+9][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x+1][y-9]){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==9&&y==9): break
                if (before[x-1][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-1]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x-1][y-9]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y]){
                    neighborCells[x][y] += 1
                }
                if (before[x-9][y-1]){
                    neighborCells[x][y] += 1
                    
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
