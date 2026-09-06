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
    var description: String
    
    //Initializer
    init(name: String, specialty: String, minPrice: Double, maxPrice: Double, rating: Double, image: String, description: String) {
        self.name = name
        self.specialty = specialty
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.rating = rating
        self.image = image
        self.description = description
    }
    
}

// Extension
extension Specialist {
    
    //Mock data  - Testing data
    
    static let mocks: [Specialist] = [
        
        Specialist(name: "Josh Gee", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Molly White", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Lisa Strand", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Elliot Jo", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Joe Bob", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "John Wick", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Person 1", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Person 2", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Person 3", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."),
        
        Specialist(name: "Person 4", specialty: "Hair", minPrice: 50.99, maxPrice: 199.99, rating: 4.84, image: "person", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus.")
        
    ]
    
}
