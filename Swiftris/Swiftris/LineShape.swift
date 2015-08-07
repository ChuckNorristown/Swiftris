//
//  LineShape.swift
//  Swiftris
//
//  Created by Sean Shields on 8/7/15.
//  Copyright (c) 2015 Sean Shields. All rights reserved.
//

class LineShape:Shape {
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, roeDiff: Int)>] {
        return [
            Orientation.Zero: [(0, 0), (0, 1), (1, 2), (0, 3)],
            Orientation.OneEighty: [(-1, 0), (0, 0), (1, 0), (2, 0)],
            Orientation.Ninety: [(0, 0), (0, 1), (1, 2), (0, 3)],
            Orientation.TwoSeventy: [(-1, 0), (0, 0), (1, 0), (2, 0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[FourthBlockIdx]],
            Orientation.OneEighty:  blocks,
            Orientation.Ninety:     [blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: blocks
        ]
    }
}
