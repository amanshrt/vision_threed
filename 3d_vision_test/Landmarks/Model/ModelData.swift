//
//  Modeldata.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 20.05.24.
//

import Foundation

var landMarks: [Landmark] = load("landmarkData.json")


func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldnt fetch the file data from \(fileName) \(error)")
    }
    
    do{
        let decoder =  JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(error)")
   }
    
}
