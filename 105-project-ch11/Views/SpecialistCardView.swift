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
    
    var body: some View {
        HStack{
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
                
            }
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
                }
                .padding(.vertical, 6)
                .padding(.horizontal, 12)
                .background(Color("BackgroundColor"))
                .foregroundStyle(.white)
                .cornerRadius(10)
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Booking Screen")
                .accessibilityHint("Booking an appointment with \(specialist.name)")
            }
        }
        //Card styling
        .padding()
        .background(Color.white)
        .cornerRadius(14)

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
            image: "person")
    )
}
