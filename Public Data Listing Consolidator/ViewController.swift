//
//  ViewController.swift
//  Public Data Listing Consolidator
//
//  Created by Michael Pulsifer on 1/2/15.
//  Copyright (c) 2015 U.S. Department of Labor. Public Domain.
//

import Cocoa

class ViewController: NSSplitViewController, NSSplitViewDelegate {

   
    @IBOutlet weak var pdlSplitView: NSSplitView!
    
    let publicDataListings : PDL = PDL()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pdlSplitView.delegate = self
        
        }

    override func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat {
        return proposedMinimumPosition + 200
    }

}
