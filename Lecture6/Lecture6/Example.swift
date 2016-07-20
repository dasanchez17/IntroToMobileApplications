//
//  ExampleProtocol.swift
//  Lecture6
//
//  Created by Van Simmons on 7/11/16.
//  Copyright © 2016 S65g. All rights reserved.
//

import Foundation

enum ExampleEnum {
    case A
    case B
    case C
    case D
}

protocol ExampleProtocol {
    var rows: UInt { get set }
    var cols: UInt { get set }
    var delegate: ExampleDelegateProtocol? { get set }
    var refreshInterval: NSTimeInterval { get set }
    func step() -> [[Bool]]
    subscript(row: UInt, col: UInt) -> ExampleEnum? { get set }
}

protocol ExampleDelegateProtocol {
    func example(example: Example, didUpdateRows:UInt)
    func example(example: Example, didUpdateColumns:UInt)
}


class Example : ExampleProtocol {

    private static var _sharedInstance = Example()
    static var sharedInstance: Example {
        get {
            return _sharedInstance
        }
    }
    
    private var cells : [ExampleEnum] =  Array<ExampleEnum>(count: 100, repeatedValue: .A)
    subscript(row: UInt, col: UInt) -> ExampleEnum? {
        get {
            if cells.count < Int(row*col) { return nil }
            return cells[Int(row * col + col)]
        }
        set (newValue) {
            if newValue == nil { return }
            if row < 0 || row >= rows || col < 0 || col >= cols { return }
            let cellRow = row * cols + col
            cells[Int(cellRow)] = newValue!
        }
    }

    private var timer:NSTimer?
    
    var refreshInterval: NSTimeInterval = 0 {
        didSet {
            if refreshInterval != 0 {
                if let timer = timer { timer.invalidate() }
                let sel = #selector(Example.timerDidFire(_:))
                timer = NSTimer.scheduledTimerWithTimeInterval(refreshInterval,
                                                               target: self,
                                                               selector: sel,
                                                               userInfo: ["name": "fred"],
                                                               repeats: true)
            }
            else if let timer = timer {
                timer.invalidate()
                self.timer = nil
            }
        }
    }
    
    var rows: UInt = 10 {
        didSet {
            if let delegate = delegate {
                delegate.example(self, didUpdateRows: self.rows)
            }
        }
    }
    var cols: UInt = 10 {
        didSet {
            if let delegate = delegate {
                delegate.example(self, didUpdateColumns: self.rows)
            }
        }
    }

    var delegate: ExampleDelegateProtocol?
    func step() -> [[Bool]] {
        return [[false]]
    }
    
    @objc func timerDidFire(timer:NSTimer) {
        self.rows += 1
        let center = NSNotificationCenter.defaultCenter()
        let n = NSNotification(name: "ExampleNotification",
                               object: nil,
                               userInfo: ["name": "fred"])
        center.postNotification(n)
        print ("\(timer.userInfo?["name"] ?? "not fred")")
    }
}



