//
//  SecondViewController.swift
//  Assignment4
//
//  Created by Daniel Sanchez on 7/14/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import UIKit

class SimulationViewController: UIViewController, EngineDelegate {
    
    func EngineDidUpdate(GridProtocol: NSObjectProtocol){
        
    }
    
    @IBOutlet weak var GridView2: GridView!
    
    

    override func viewDidLoad() {
        
        self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Reinit(sender: AnyObject) {
        var neighborCells = Array(count: GridView2.cols+1, repeatedValue: Array(count: GridView2.rows+1, repeatedValue: 0))
//        for x in 0...GridView2.cols{
//            for y in 0...GridView2.rows{
//                
//                switch true{
//                case ((x<GridView2.cols&&x>0)&&(y<GridView2.rows&&y>0)):
//                    if (GridView2.grid[x+1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                case (x==0&&y>0&&y<GridView2.rows):
//                    if (GridView2.grid[x+1][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                        
//                    }
//                case (y==0&&x>0&&x<GridView2.cols):
//                    if (GridView2.grid[x][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (x==GridView2.cols&&y>0&&y<GridView2.rows):
//                    if (GridView2.grid[x-1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (y==GridView2.rows&&x>0&&x<GridView2.cols):
//                    if (GridView2.grid[x][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (x==0&&y==0):
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (x==GridView2.cols&&y==0):
//                    if (GridView2.grid[x][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y+1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y+GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (x==0&&y==GridView2.rows):
//                    if (GridView2.grid[x][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+GridView2.cols][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x+1][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                    
//                case (x==GridView2.cols&&y==GridView2.rows):
//                    if (GridView2.grid[x-1][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-1][y-GridView2.rows] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y] == .Living){
//                        neighborCells[x][y] += 1
//                    }
//                    if (GridView2.grid[x-GridView2.cols][y-1] == .Living){
//                        neighborCells[x][y] += 1
//                        
//                    }
//                default: true
//                }
//            }
//            
//            GridView2.setNeedsDisplay()
//        }
//        for x in 0...GridView2.cols{
//            for y in 0...GridView2.rows{
//                
//                if(GridView2.grid[x][y] == .Living){
//                    if(neighborCells[x][y]<2){
//                        GridView2.grid[x][y] = .Empty
//                    } else if (neighborCells[x][y]>1&&neighborCells[x][y]<4){
//                        GridView2.grid[x][y] = .Living
//                    }else if (neighborCells[x][y]>3){
//                        GridView2.grid[x][y] = .Empty
//                    }
//                } else {
//                    if(neighborCells[x][y]==3){
//                        GridView2.grid[x][y] = .Living
//                    }else {
//                        GridView2.grid[x][y] = .Living
//                    }
//                }
//            }
//        }
        for a in 0..<GridView2.cols{
            for b in 0..<GridView2.rows{
                if(GridView2.grid[a][b] == .Born){
                    GridView2.grid[a][b] = .Living
                }else if(GridView2.grid[a][b] == .Died){
                    GridView2.grid[a][b] = .Empty
                }
            }
        }
        var neighborCells2 = Array(count: GridView2.cols+1, repeatedValue: Array(count: GridView2.rows+1, repeatedValue: Array(count: 8, repeatedValue: (0,0))))
        var numNeighbors = Array(count: GridView2.cols+1, repeatedValue: Array(count: GridView2.rows+1, repeatedValue: 0))
        for a in 0..<GridView2.cols{
            for b in  0..<GridView2.rows{
                neighborCells2[a][b] = Grid.sharedInstance.neighbors((a,b))
                for i in 0...7{
                    if GridView2.grid[neighborCells2[a][b][i].0][neighborCells2[a][b][i].1] == .Living || GridView2.grid[neighborCells2[a][b][i].0][neighborCells2[a][b][i].1] == .Born {
                        numNeighbors[a][b] += 1
                    }
                }
            }
        }
        for a in 0...GridView2.cols{
            for b in 0...GridView2.rows{
                if(GridView2.grid[a][b] == .Living){
                    if(numNeighbors[a][b]<2){
                        GridView2.grid[a][b] = .Died
                    }else if(numNeighbors[a][b]>1&&numNeighbors[a][b]<4){
                        GridView2.grid[a][b] = .Living
                    }else if(numNeighbors[a][b]>3){
                        GridView2.grid[a][b] = .Died
                    }
                }else{
                    if(numNeighbors[a][b]==3){
                        GridView2.grid[a][b] = .Born
                    }else{
                        GridView2.grid[a][b] = .Empty
                    }
                }
            }
        }
        GridView2.setNeedsDisplay()
        
    }
    @IBAction func Button(sender: AnyObject) {
            for x in 0...GridView2.cols{
                for y in 0...GridView2.rows{
                    GridView2.grid[x][y] = GridView2.grid[x][y].toggle(GridView2.grid[x][y])
                }
            }
        GridView2.setNeedsDisplay()
    }


    @IBAction func ButtonClicked(sender: AnyObject) {
        for x in 0...GridView2.cols{
            for y in 0...GridView2.rows{
                if arc4random_uniform(3) == 1 {
                    GridView2.grid[x][y] = .Living
                }
            }
        }
        GridView2.setNeedsDisplay()
    }

       
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
