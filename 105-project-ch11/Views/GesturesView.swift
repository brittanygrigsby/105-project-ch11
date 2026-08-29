//
//  GesturesView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/17/26.
//

import SwiftUI

struct GesturesView: View {
    let paragraph: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus."
   
    @State private var isExpanded: Bool = false
    @State private var isLiked: Bool = false
    
    
    var body: some View {
        
        //MARK: - Exercise 1: Tap
        // .onTapGesture -> Text, Image, Stack (V,H,Z)
        Text("Tap Me")
            .onTapGesture {
                print("Tapped")
            }
        
        // MARK: - Exercise 2: Tap
        VStack(alignment:.leading, spacing:10){
            
            Text(paragraph)
                .lineLimit(isExpanded ? nil : 2)
            
            
            Text("Show More")
                .italic()
                .foregroundStyle(.blue)
                .onTapGesture {
                    isExpanded.toggle()
                }
            
        }
        .padding()
        
        //MARK: - Exercise 3: Double Tap
        Text("Double Tap Me")
            .onTapGesture(count: 2) {
                print("Double Tapped!")
            }
        
        //MARK - Exercise 4: Double Tap -Like/Fav
        Image(systemName: isLiked ? "heart.fill" : "heart")
            .foregroundStyle(isLiked ? .red : .gray)
            .padding()
            .onTapGesture(count:2){
                isLiked.toggle()
            }
        
    }
}

#Preview {
    GesturesView()
}
