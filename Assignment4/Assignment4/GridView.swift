//
//  GridView.swift
//  Assignment4
//
//  Created by Daniel Sanchez on 7/15/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import UIKit

@IBDesignable
class GridView: UIView {
    
    
    
    
    
        @IBInspectable var rows: Int = 20{
            didSet{
                /*var grid =  Array(count: rows, repeatedValue: Array(count: cols, repeatedValue: CellState.Empty))*/
            }}
        @IBInspectable var cols: Int = 20{
            didSet{
                /*var grid =  Array(count: rows, repeatedValue: Array(count: cols, repeatedValue: CellState.Empty))*/
            }}
        
        @IBInspectable var grid = Array(count: 01134, repeatedValue: Array(count: 01134,
            repeatedValue: CellState.Empty))
        
        
        @IBInspectable var livingColor: UIColor?{
            didSet{
                layer.backgroundColor = UIColor.greenColor().CGColor
                
            }
        }
        
        @IBInspectable var bornColor: UIColor?{
            didSet{
                layer.backgroundColor = UIColor.greenColor().CGColor
            }
        }
        @IBInspectable var gridColor: UIColor?{
            didSet{
                layer.backgroundColor = UIColor.greenColor().CGColor
            }
        }
        
        @IBInspectable var diedColor: UIColor?{
            didSet{
                layer.backgroundColor = UIColor.blueColor().CGColor
            }
        }
        
        @IBInspectable var emptyColor: UIColor?{
            didSet{
                layer.backgroundColor = UIColor.grayColor().CGColor
            }
        }
        @IBInspectable var gridWidth: CGFloat = 20
        
        
        
        override func drawRect(rect: CGRect) {
            var count = 0
            
            while count<=rows+1 {
                
                let path = UIBezierPath()
                
                path.lineWidth = 2
                
                //move the initial point of the path
                //to the start of the horizontal stroke
                path.moveToPoint(CGPoint(
                    x:CGFloat(count)*(bounds.height/CGFloat(rows)),
                    y:0))
                
                //add a point to the path at the end of the stroke
                path.addLineToPoint(CGPoint(
                    x:CGFloat(count)*(bounds.height/CGFloat(rows)),
                    y:bounds.height))
                
                //Vertical Line
                UIColor.blackColor().setStroke()
                
                path.stroke()
                count+=1
            }
            count = 0
            while count <= cols+1 {
                
                let path = UIBezierPath()
                
                path.lineWidth = 2
                
                //move the initial point of the path
                //to the start of the horizontal stroke
                path.moveToPoint(CGPoint(
                    x:0,
                    y:CGFloat(count)*(bounds.height/CGFloat(cols))))
                
                //add a point to the path at the end of the stroke
                path.addLineToPoint(CGPoint(
                    x:bounds.width,
                    y:CGFloat(count)*(bounds.height/CGFloat(cols))))
                
                //Vertical Line
                UIColor.blackColor().setStroke()
                
                path.stroke()
                count+=1
            }
            
            //Circles
            // var grid = initializegrid()
            /*for a in 0...rows{
             for b in 0...cols{
             if arc4random_uniform(3) == 1 {
             grid[a][b] = .Living
             count+=1
             }
             }danny boy
             }*/
            for index in 0...rows{
                for index2 in 0...cols{
                    let paths = UIBezierPath(arcCenter: CGPoint(x: CGFloat(index)*bounds.width/CGFloat(rows)-bounds.width/(CGFloat(rows)*2.0),y: CGFloat(index2)*bounds.width/CGFloat(cols)-bounds.width/(CGFloat(cols)*2.0)), radius: bounds.width/CGFloat(rows)/2.5, startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
                    switch grid[index][index2] == .Living{
                    case true:
                        livingColor!.setFill()
                    default:
                        emptyColor!.setFill()
                    }
                    paths.fill()
                }
            }
            
            
            
            
            
        }


}
