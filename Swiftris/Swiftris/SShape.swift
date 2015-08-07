//
//  SShape.swift
//  Swiftris
//
//  Created by Sean Shields on 8/7/15.
//  Copyright (c) 2015 Sean Shields. All rights reserved.
//

class SShape:Shape {
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, roeDiff: Int)>] {
        return [
            Orientation.Zero: [(0, 0), (0, 1), (1, 1), (1, 2)],
            Orientation.OneEighty: [(2, 0), (1, 0), (1, 1), (0, 1)],
            Orientation.Ninety: [(0, 0), (0, 1), (1, 1), (1, 2)],
            Orientation.TwoSeventy: [(2, 0), (1, 0), (1, 1), (0, 1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
