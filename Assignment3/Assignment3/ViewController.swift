//
//  ViewController.swift
//  Assignment3
//
//  Created by Daniel Sanchez on 7/7/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import UIKit

//Problem #1
enum CellState: String{
    case Living = "Living"
    case Empty = "Empty"
    case Born = "Born"
    case Died = "Died"
    
    var description: String {
        switch true{
        default: return self.rawValue
        }
    }
    
    static let allValues = [Living, Empty, Born, Died]
    
    func toggle(value: CellState) -> CellState {
        if (value == .Empty || value == .Died){
            return .Living
        }else{
            return .Empty
        }
    }
    
}


class ViewController: UIViewController {
    
    @IBOutlet weak var GridView2: GridView!
    
    @IBAction func iterate(sender: AnyObject) {
        var neighborCells = Array(count: GridView2.cols+1, repeatedValue: Array(count: GridView2.rows+1, repeatedValue: 0))
        for x in 0...GridView2.cols{
            for y in 0...GridView2.rows{
                
                switch true{
                case ((x<GridView2.cols&&x>0)&&(y<GridView2.rows&&y>0)):
                    if (GridView2.grid[x+1][y-1] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x+1][y+1] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x-1][y-1] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x-1][y+1] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x-1][y] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x+1][y] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x][y+1] == .Living){
                        neighborCells[x][y] += 1
                    }
                    if (GridView2.grid[x][y-1] == .Living){
                        neighborCells[x][y] += 1
                    }
                case (x==0&&y>0&&y<GridView2.rows):
                if (GridView2.grid[x+1][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                    
                    
                    }
                case (y==0&&x>0&&x<GridView2.cols):
                if (GridView2.grid[x][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==GridView2.cols&&y>0&&y<GridView2.rows):
                if (GridView2.grid[x-1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y-1] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (y==GridView2.rows&&x>0&&x<GridView2.cols):
                if (GridView2.grid[x][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==0&&y==0):
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==GridView2.cols&&y==0):
                if (GridView2.grid[x][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y+1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y+GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==0&&y==GridView2.rows):
                if (GridView2.grid[x][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+GridView2.cols][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x+1][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                    
                case (x==GridView2.cols&&y==GridView2.rows):
                if (GridView2.grid[x-1][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-1] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-1][y-GridView2.rows] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y] == .Living){
                    neighborCells[x][y] += 1
                }
                if (GridView2.grid[x-GridView2.cols][y-1] == .Living){
                    neighborCells[x][y] += 1
                    
                    }
                default: true
                }
            }
        }
        for x in 0...GridView2.cols{
            for y in 0...GridView2.rows{
                if(GridView2.grid[x][y] == .Living){
                if(neighborCells[x][y]<2){
                    GridView2.grid[x][y] = .Empty
                } else if (neighborCells[x][y]>1&&neighborCells[x][y]<4){
                    GridView2.grid[x][y] = .Living
                }else if (neighborCells[x][y]>3){
                    GridView2.grid[x][y] = .Empty
            }
        } else {
            if(neighborCells[x][y]==3){
            GridView2.grid[x][y] = .Living
            }else {
                    GridView2.grid[x][y] = .Living
            }
        }
    }
}
    }
    
    
    
    @IBAction func Refresh(sender: AnyObject) {
        for a in 0...GridView2.cols{
            for b in 0...GridView2.rows{
                if arc4random_uniform(3) == 1 {
                    GridView2.grid[a][b] = .Living
                    }
                }
            }
        }
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ButtonClicked(sender: AnyObject) {
        
        for a in 0...GridView2.cols{
            for b in 0...GridView2.rows{
                    GridView2.grid[a][b] = GridView2.grid[a][b].toggle(GridView2.grid[a][b])
                }
            }
        
        GridView2.setNeedsDisplay()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

