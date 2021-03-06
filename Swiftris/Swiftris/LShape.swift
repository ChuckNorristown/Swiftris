//
//  LShape.swift
//  Swiftris
//
//  Created by Sean Shields on 8/7/15.
//  Copyright (c) 2015 Sean Shields. All rights reserved.
//

class LShape:Shape {
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, roeDiff: Int)>] {
        return [
            Orientation.Zero: [(0, 0), (0, 1), (0, 2), (1, 2)],
            Orientation.OneEighty: [(1, 1), (0, 1), (-1, 1), (-1, 2)],
            Orientation.Ninety: [(0, 2), (0, 1), (0, 0), (-1, 0)],
            Orientation.TwoSeventy: [(-1, 1), (0, 1), (1, 1), (1, 0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[ThirdBlockIdx]]
        ]
    }
}
