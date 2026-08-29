//
//  SpecialistModel.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/16/26.
//

class Specialist {
    //Properties
    var name: String
    var specialty: String
    var minPrice: Double
    var maxPrice: Double
    var rating: Double
    var image: String
    
    //Initializer
    init(name: String, specialty: String, minPrice: Double, maxPrice: Double, rating: Double, image: String) {
        self.name = name
        self.specialty = specialty
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.rating = rating
        self.image = image
    }
    
}

// Extension
extension Specialist {
    
    //Mock data  - Testing data
    
    static let mocks: [Specialist] = [
        
        Specialist(name: "Josh Gee", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Molly White", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Lisa Strand", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Elliot Jo", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Joe Bob", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "John Wick", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Person 1", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Person 2", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Person 3", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person"),
        Specialist(name: "Person 4", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person")
        
    ]
    
}
