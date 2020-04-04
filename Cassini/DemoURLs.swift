//
//  DemoURLs.swift
//  Cassini
//
//  Created by krupakhar gandeepan on 03/04/20.
//  Copyright © 2020 krupakhar. All rights reserved.
//

import Foundation

struct DemoURLs {
    static let stanford = Bundle.main.url(forResource: "anime", withExtension: "jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini":"https://picsum.photos/200/300",
            "test":"https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth":"https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn":"https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
       var urls = Dictionary<String,URL>()
        for (key,value) in NASAURLStrings{
            urls[key] = URL(string: value)
        }
        return urls
    }()
    
}
