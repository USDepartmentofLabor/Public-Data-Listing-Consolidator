//
//  pdl.swift
//  Public Data Listing Consolidator
//
//  Created by Michael Pulsifer on 1/14/15.
//  Copyright (c) 2015 U.S. Department of Labor. All rights reserved.
//

import Foundation

class PDL: NSObject {
    
    class var sharedInstance: PDL {
        //2
        struct Singleton {
            //3
            static let instance = PDL()
        }
        //4
        return Singleton.instance
    }

    
    var path = ""
    var rootPath = ""
    var dolDataJSON = Dictionary<String, AnyObject>()
    
    override init() {

        super.init()
    }

    func collectPublicDataListingFiles ()  {

        var data: NSData = NSFileManager.defaultManager().contentsAtPath(self.path)!

        var dolJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        // Benefits.gov data.json
        var benefitsGovPath = self.rootPath.stringByAppendingPathComponent("benefits-gov/data.json")
        var benefitsGovData: NSData = NSFileManager.defaultManager().contentsAtPath(benefitsGovPath)!
        var benefitsGovJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(benefitsGovData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var benefitsGovDataSets : Array = benefitsGovJSON["dataset"] as Array<AnyObject>
        // BLS data.json
        var blsPath = self.rootPath.stringByAppendingPathComponent("bls/data.json")
        var blsData: NSData = NSFileManager.defaultManager().contentsAtPath(blsPath)!
        var blsJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(blsData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var blsDataSets : Array = blsJSON["dataset"] as Array<AnyObject>
        // EBSA data.json
        var ebsaPath = self.rootPath.stringByAppendingPathComponent("ebsa/data.json")
        var ebsaData: NSData = NSFileManager.defaultManager().contentsAtPath(ebsaPath)!
        var ebsaJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(ebsaData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var ebsaDataSets : Array = ebsaJSON["dataset"] as Array<AnyObject>
        // ETA data.json
        var etaPath = self.rootPath.stringByAppendingPathComponent("eta/data.json")
        var etaData: NSData = NSFileManager.defaultManager().contentsAtPath(etaPath)!
        var etaJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(etaData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var etaDataSets : Array = etaJSON["dataset"] as Array<AnyObject>
        // Job Corps data.json
        var jobCorpsPath = self.rootPath.stringByAppendingPathComponent("job-corps/data.json")
        var jobCorpsData: NSData = NSFileManager.defaultManager().contentsAtPath(jobCorpsPath)!
        var jobCorpsJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(jobCorpsData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var jobCorpsDataSets : Array = jobCorpsJSON["dataset"] as Array<AnyObject>
        // MSHA data.json
        var mshaPath = self.rootPath.stringByAppendingPathComponent("msha/data.json")
        var mshaData: NSData = NSFileManager.defaultManager().contentsAtPath(mshaPath)!
        var mshaJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(mshaData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var mshaDataSets : Array = mshaJSON["dataset"] as Array<AnyObject>
        // OASP data.json
        var oaspPath = self.rootPath.stringByAppendingPathComponent("oasp/data.json")
        var oaspData: NSData = NSFileManager.defaultManager().contentsAtPath(oaspPath)!
        var oaspJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(oaspData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var oaspDataSets : Array = oaspJSON["dataset"] as Array<AnyObject>
        // OFCCP data.json
        var ofccpPath = self.rootPath.stringByAppendingPathComponent("ofccp/data.json")
        var ofccpData: NSData = NSFileManager.defaultManager().contentsAtPath(ofccpPath)!
        var ofccpJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(ofccpData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var ofccpDataSets : Array = ofccpJSON["dataset"] as Array<AnyObject>
        // OLMS data.json
        var olmsPath = self.rootPath.stringByAppendingPathComponent("olms/data.json")
        var olmsData: NSData = NSFileManager.defaultManager().contentsAtPath(olmsPath)!
        var olmsJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(olmsData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var olmsDataSets : Array = olmsJSON["dataset"] as Array<AnyObject>
        // OPA data.json
        var opaPath = self.rootPath.stringByAppendingPathComponent("opa/data.json")
        var opaData: NSData = NSFileManager.defaultManager().contentsAtPath(opaPath)!
        var opaJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(opaData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var opaDataSets : Array = opaJSON["dataset"] as Array<AnyObject>
        // OSHA data.json
        var oshaPath = self.rootPath.stringByAppendingPathComponent("osha/data.json")
        var oshaData: NSData = NSFileManager.defaultManager().contentsAtPath(oshaPath)!
        var oshaJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(oshaData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var oshaDataSets : Array = oshaJSON["dataset"] as Array<AnyObject>
        // OWCP data.json
        var owcpPath = self.rootPath.stringByAppendingPathComponent("owcp/data.json")
        var owcpData: NSData = NSFileManager.defaultManager().contentsAtPath(owcpPath)!
        var owcpJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(owcpData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var owcpDataSets : Array = owcpJSON["dataset"] as Array<AnyObject>
        // OWCP2 data.json
        var owcp2Path = self.rootPath.stringByAppendingPathComponent("owcp2/data.json")
        var owcp2Data: NSData = NSFileManager.defaultManager().contentsAtPath(owcp2Path)!
        var owcp2JSON: Dictionary = NSJSONSerialization.JSONObjectWithData(owcp2Data, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var owcp2DataSets : Array = owcp2JSON["dataset"] as Array<AnyObject>
        // SOL data.json
        var solPath = self.rootPath.stringByAppendingPathComponent("sol/data.json")
        var solData: NSData = NSFileManager.defaultManager().contentsAtPath(solPath)!
        var solJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(solData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var solDataSets : Array = solJSON["dataset"] as Array<AnyObject>
        // WHD data.json
        var whdPath = self.rootPath.stringByAppendingPathComponent("whd/data.json")
        var whdData: NSData = NSFileManager.defaultManager().contentsAtPath(whdPath)!
        var whdJSON: Dictionary = NSJSONSerialization.JSONObjectWithData(whdData, options: NSJSONReadingOptions.MutableContainers, error: nil) as Dictionary<String, AnyObject>
        var whdDataSets : Array = whdJSON["dataset"] as Array<AnyObject>
        
        var dolDataSetsA = benefitsGovDataSets + blsDataSets
        var dolDataSetsB = dolDataSetsA + ebsaDataSets
        var dolDataSetsC = dolDataSetsB + etaDataSets
        var dolDataSetsD = dolDataSetsC + jobCorpsDataSets
        var dolDataSetsE = dolDataSetsD + mshaDataSets
        var dolDataSetsF = dolDataSetsE + oaspDataSets
        var dolDataSetsG = dolDataSetsF + ofccpDataSets
        var dolDataSetsH = dolDataSetsG + olmsDataSets
        var dolDataSetsI = dolDataSetsH + opaDataSets
        var dolDataSetsJ = dolDataSetsI + oshaDataSets
        var dolDataSetsK = dolDataSetsJ + owcpDataSets
        var dolDataSetsL = dolDataSetsK + owcp2DataSets
        var dolDataSetsM = dolDataSetsL + solDataSets
        var dolDataSetsN = dolDataSetsM + whdDataSets
        
        //var dolDataJSON = Dictionary<String, AnyObject>()
        
        dolDataJSON["@context"] = dolJSON["@context"]
        dolDataJSON["@type"] = dolJSON["@type"]
        dolDataJSON["conformsTo"] = dolJSON["conformsTo"]
        dolDataJSON["describedBy"] = dolJSON["describedBy"]
        dolDataJSON["dataset"] = dolDataSetsN

        NSNotificationCenter.defaultCenter().postNotificationName("dataJSONUpdated", object: self)
        //return dolDataJSON
        
    }
        // Call the delegate call-back method
        //    self.delegate?.PublicDataListingWithResults()
    
    
    func dataListingAsText() -> String {
        let dolDataJSONText = NSJSONSerialization.dataWithJSONObject(dolDataJSON, options: .PrettyPrinted, error: nil)
        var datastring: String = NSString(data:dolDataJSONText!, encoding:NSUTF8StringEncoding)!
        if NSJSONSerialization.isValidJSONObject(dolDataJSONText!) {
            println("valid json")
        } else {
            println("not valid json")
        }
        NSLog("%@", dolDataJSONText!)
        return datastring
    }
    
    func writeDataJSONToFile() {
        let dolDataJSONText = NSJSONSerialization.dataWithJSONObject(dolDataJSON, options: nil, error: nil)
        
        var dolDataJSONPath = self.rootPath.stringByAppendingPathComponent("data.json")
        
        dolDataJSONText?.writeToFile(dolDataJSONPath, options: nil, error: nil)

    }
    
}
