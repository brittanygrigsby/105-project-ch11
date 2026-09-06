//
//  SpecialistCardView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct SpecialistCardView: View {
    
    //let icon: String
    let specialist: Specialist
    
    @State private var isExpanded: Bool = false
    @State private var isLiked: Bool = false
    
    var body: some View {
        //MARK: new card
        VStack(alignment: .leading, spacing:10){
            HStack(alignment: .top){
                Image(systemName: specialist.image)
                    .resizable( )
                    .scaledToFit()
                    .frame(width: 40, height:40)
                    .clipShape(Circle())
                    .foregroundStyle(Color("BackgroundColor"))
                VStack(alignment:.leading, spacing:4){
                    //Specialist Name
                    Text(specialist.name)
                        .font(.headline)
                        .foregroundStyle(Color("BackgroundColor"))
                    
                    //Specialty Category
                    Text(specialist.specialty)
                        .font(.subheadline)
                    
                    //Rating
                    HStack(alignment: .center){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.caption)
                        
                        Text(String(specialist.rating))
                            .font(.caption)
                        
                    }
                }
                Spacer()
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundStyle(isLiked ? .red : .gray)
                    .padding()

            }
            
            Text(specialist.description)
                .lineLimit(isExpanded ? nil : 2)
                .font(.callout)
            
            Text(isExpanded ? "See Less" : "See More")
                .font(.headline)
                .foregroundStyle(Color("BackgroundColor"))
                .onTapGesture {
                    isExpanded.toggle()
                }

            
            HStack{
                //Price range -
                Text("$\(specialist.minPrice, specifier: "%.2f") - $\(specialist.maxPrice, specifier: "%.2f") ")
                    .font(.footnote)
                    .bold()
                
                Spacer()
                
                NavigationLink(destination:BookAppointmentView()){
                    Text("Book")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(Color("BackgroundColor"))
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                    
                    
                }
            }
            
        }//End VStack
        .padding()
        .background(.white)
        .cornerRadius(14)
        .onTapGesture(count:2){
            isLiked.toggle()
        }
        // MARK: old card
        /*HStack{
            Image(systemName: specialist.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 40, maxHeight:40)
                .padding(10)
            VStack(alignment:.leading){
                //Specialist Name
                Text(specialist.name)
                    .foregroundStyle(Color.black)
                    .fontWeight(.bold)
                
                //Specialty Category
                Text(specialist.specialty)
                
                //Price range
                Text("$\(specialist.minPrice, specifier: "%.2f") - $\(specialist.maxPrice, specifier: "%.2f") ")
                    .font(.footnote)
                    .bold()

                Spacer()
                
                VStack{
                    //Rating display
                    HStack{
                        // Specialist Icon
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                        
                        Text(String(specialist.rating))
                            .font(.caption)
                    }
                    
                    //Navigation to booking screen
                    NavigationLink(destination:BookAppointmentView()){
                        Text("Book")
                        
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                            .background(Color("BackgroundColor"))
                            .foregroundStyle(.white)
                            .cornerRadius(10)
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel("Booking Screen")
                            .accessibilityHint("Booking an appointment with \(specialist.name)")
                        
                    }
                    //Card styling
                    .padding()
                    .background(Color.white)
                    .cornerRadius(14)
                    
                }
                
            }
        }*/
    }
}
#Preview {
    SpecialistCardView(
        specialist: Specialist(
            name: "Brittany Grigsby",
            specialty: "Lashes",
            minPrice: 100,
            maxPrice: 200,
            rating: 4.8,
            image: "person",
        description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis ante ac dui laoreet tempus. Donec nec consectetur nisl. Duis porta scelerisque eros ut egestas. Duis suscipit dignissim risus, eu cursus dolor vulputate nec. Mauris vel aliquet purus.")
    )
}
