//
//  ViewController.swift
//  Public Data Listing Consolidator
//
//  Created by Michael Pulsifer on 1/2/15.
//  Copyright (c) 2015 U.S. Department of Labor. Public Domain.
//

import Cocoa

class ViewController: NSViewController {

   
    @IBOutlet var jsonDisplay: NSTextView?
    
    let publicDataListings : PDL = PDL()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateJSONTextWindow", name: "dataJSONUpdated", object: nil)
 
            NSLog("old way")
        
            /*
            var d1 = ["a": "b"]
            var d2 = ["c": "e"]
            
            d1.merge(d2)
            
            NSLog("%@", d1)
            */
            
            //benefitsGovJSON.merge(blsJSON)

        }
    
    func updateJSONTextWindow () {
        jsonDisplay?.insertText(publicDataListings.dataListingAsText())
        
    }
}
    

     var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    



extension Dictionary {
    mutating func merge<K, V>(dict: [K: V]){
        for (k, v) in dict {
            self.updateValue(v as Value, forKey: k as Key)
        }
    }
}

