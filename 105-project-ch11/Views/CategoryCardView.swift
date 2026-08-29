//
//  CategoryCardView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct CategoryCardView<Destination: View>: View {
    
    let icon: String
    let category: String
    let destination: Destination
    
    var body: some View {
        
        NavigationLink {
            //Navigates to?
            destination
        }label : {
            
            VStack(spacing:8){
                
                Image(systemName:icon)
                    .resizable()
                    .scaledToFill()
                    .frame(width:20, height:20)
                    .padding()
                    .background(Color("BackgroundColor"))
                    .clipShape(.circle)
                    .foregroundStyle(Color("SurfaceColor"))
                
                
                Text(category)
                    .font(.headline)
                    .foregroundStyle(.black)
                
            }
            .frame(width:100, height:100)
            .background(.white)
            .cornerRadius(20)
        }
        .accessibilityLabel(Text(category))
        .accessibilityHint(Text("Displaying the \(category) page."))
    }//END:body
}//END:CategoryCardView

#Preview {
    CategoryCardView(icon: "eye", category: "Lashes", destination: CategoryView())
}
