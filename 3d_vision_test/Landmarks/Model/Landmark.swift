//
//  Landmark.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 20.05.24.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String;
    
    var image: Image{
        Image(imageName)
    }
    
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.longitude,
            longitude: coordinates.latitude
        )
    }
    
}
