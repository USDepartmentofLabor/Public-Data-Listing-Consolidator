//
//  AppDelegate.swift
//  Public Data Listing Consolidator
//
//  Created by Michael Pulsifer on 1/2/15.
//  Copyright (c) 2015 U.S. Department of Labor. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    @IBAction func openPDL(sender: AnyObject) {
        // do stuff
        println("it worked")
        let myFiledialog:NSOpenPanel = NSOpenPanel()
        myFiledialog.allowsMultipleSelection = false
        myFiledialog.canChooseDirectories = false
        myFiledialog.runModal()
        var chosenfile = myFiledialog.URL
        if (chosenfile != nil) {
            // main data.json
            // may not do anything with this
            var path = chosenfile?.path
            var rootPath = path?.stringByDeletingLastPathComponent
            
            let publicDataListings : PDL = PDL()
            
            publicDataListings.path = path!
            publicDataListings.rootPath = rootPath!
            
            publicDataListings.collectPublicDataListingFiles()
            
            publicDataListings.writeDataJSONToFile()
            
        }
        
    }

}

