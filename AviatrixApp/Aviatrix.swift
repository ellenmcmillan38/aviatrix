//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    //Objects
    var currentLocation = "St Louis"
    var author : String
    
    //Saying who created this plane and airline
    init(myAuthor : String){
        author = myAuthor
        
    }
    
    //Tells us if it's running or not
    
    var running = false
    
    //Starts airplane
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    
    func flyTo(destination : String) {
        currentLocation = destination
        
    }
    //tells planes how far things are
    func distanceTo(target : String, current : String) -> Int{
        //get data from aviatrix file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    
    }
    
    func knownDestinations() -> [String] {
        //Returns all the options for destinations
        //get info from the data file
        
        return ["St. Louis", "Pheonix", "Denver", "SLC"]
    }
}
