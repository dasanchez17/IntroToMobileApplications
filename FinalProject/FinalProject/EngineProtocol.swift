//
//  EngineProtocol.swift
//  FinalProject
//
//  Created by Daniel Sanchez on 7/30/16.
//  Copyright © 2016 Squad. All rights reserved.
//

import Foundation

//protocol Engineprotocol{
//    var delegate2: EngineDelegate {get set}
//    var grid2: GridProtocol {get}
//    var refreshRate: Double {get set}
//    var refreshTimer: NSTimer? {get set}
//    var rows2: Int{get set}
//    var cols2: Int{get set}
//    init( rows2: Int, cols2: Int )
//    func step() -> GridProtocol
//}
//
//class StandardEngine: Grid, Engineprotocol {
//
//    private static var _sharedInstance = StandardEngine(rows: 10, cols: 10)
//    static var sharedInstance: StandardEngine {
//        get {
//            return _sharedInstance
//        }
//    }
//
//
//    var grid2: GridProtocol {
//        get{
//            return self.grid2
//
//        }
//    }
//        var refreshRate: Double{
//        get{
//            return (0.0)
//        }
//            set(newValue){
//                self.refreshRate = newValue
//            }
//    }
//
//
//    var refreshTimer: NSTimer?
//
//    var rows2: Int{
//        didSet {
//            if let delegate2 = delegate2 {
//                delegate2.EngineDidUpdate(self, GridProtocol: self.rows2)
//            }
//        }
//    }
//
//    var cols2: Int{
//        didSet {
//            if let delegate2 = delegate2 {
//                delegate2.EngineDidUpdate(self, GridProtocol: self.cols2)
//            }
//        }
//    }
//
//
//    required init( rows2: Int, cols2: Int ){
//        self.rows2 = rows2
//        self.cols2 = cols2
//    }
//
//    required init(rows: Int, cols: Int) {
//        fatalError("init(rows:cols:) has not been implemented")
//    }
//
//    var delegate2: EngineDelegate?
//        func step() -> GridProtocol {
//        var grid = Array(count: 10, repeatedValue: Array(count: 10, repeatedValue: CellState.Empty))
//        var neighborCells = neighbors ((0, 0))
//        for x in 0...rows{
//            for y in 0...cols{
//                if x<7{
//                if(grid[x][y] == .Living){
//                    if neighborCells[x]<2{
//                        grid[x][y] = .Empty
//                    } else if (neighborCells[x]>1&&neighborCells[x]<4){
//                        grid[x][y] = .Living
//                    }else if (neighborCells[x]>3){
//                        grid[x][y] = .Empty
//                    }
//                } else {
//                    if(neighborCells[x]==3){
//                        grid[x][y] = .Living
//                    }else {
//                        grid[x][y] = .Living
//                    }
//                }
//                }
//            }
//        }
//        return (grid2)
//    }
//}
//}