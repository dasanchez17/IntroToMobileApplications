//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var rows = 20
var cols = 20

func neighbors(coordinates: (x: Int,y: Int)) ->([(Int, Int)]){
    let prevRow = (coordinates.0 + rows - 1) % rows // =9
    let nextRow = (coordinates.0 + 1) % rows // =11
    let prevCol = (coordinates.1 + cols - 1) % cols // =9
    let nextCol = (coordinates.1 + 1) % cols // =11
    var imgoingtoreturnthis = Array(count: 8, repeatedValue: (0, 0))
    //10,9
    imgoingtoreturnthis[0].0 = prevRow
    imgoingtoreturnthis[0].1 = prevCol
    //11,9
    imgoingtoreturnthis[1].0 = coordinates.0
    imgoingtoreturnthis[1].1 = prevCol
    //12,9
    imgoingtoreturnthis[2].0 = nextRow
    imgoingtoreturnthis[2].1 = prevCol
    //10,10
    imgoingtoreturnthis[3].0 = prevRow
    imgoingtoreturnthis[3].1 = coordinates.1
    //12,10
    imgoingtoreturnthis[4].0 = nextRow
    imgoingtoreturnthis[4].1 = coordinates.1
    //10,11
    imgoingtoreturnthis[5].0 = prevRow
    imgoingtoreturnthis[5].1 = nextCol
    //11,11
    imgoingtoreturnthis[6].0 = coordinates.0
    imgoingtoreturnthis[6].1 = nextCol
    //12,11
    imgoingtoreturnthis[7].0 = nextRow
    imgoingtoreturnthis[7].1 = nextCol
    return imgoingtoreturnthis
}

var tuple = (15, 10)
tuple.0
tuple.1

print(neighbors(tuple))