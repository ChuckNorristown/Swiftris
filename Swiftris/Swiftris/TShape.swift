//
//  TShape.swift
//  Swiftris
//
//  Created by Sean Shields on 8/7/15.
//  Copyright (c) 2015 Sean Shields. All rights reserved.
//

class TShape:Shape {

    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, roeDiff: Int)>] {
        return [
            Orientation.Zero: [(1, 0), (0, 1), (1, 1), (2, 1)],
            Orientation.OneEighty: [(2, 1), (1, 0), (1, 1), (1, 2)],
            Orientation.Ninety: [(1, 2), (0, 1), (1, 1), (2, 1)],
            Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
        ]
    }
}
