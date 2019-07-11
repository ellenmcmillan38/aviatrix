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
    var running = false
    var currentLocation = "St Louis"
    var author : String
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    
    //Saying who created this plane and airline
    init(myAuthor : String){
        author = myAuthor
        
    }
    
    //Tells us if it's running or not
    
    
    
    //Starts airplane
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double{
        
        return 5000.0
        
    }
    
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: currentLocation)
        fuelLevel -= Double(distanceTraveled) * milesPerGallon
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
        let data = AviatrixData()
        return Array(data.knownDistances.keys)
        
    }
}
