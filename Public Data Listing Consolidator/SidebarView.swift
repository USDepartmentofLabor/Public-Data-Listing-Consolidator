//
//  SidebarView.swift
//  Public Data Listing Consolidator
//
//  Created by Michael Pulsifer on 1/18/15.
//  Copyright (c) 2015 U.S. Department of Labor. All rights reserved.
//

import Cocoa

class SidebarView: NSSplitView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat {
        return proposedMinimumPosition + 400
    }

}
