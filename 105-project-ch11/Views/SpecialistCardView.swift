//
//  SpecialistCardView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct SpecialistCardView: View {
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 40, maxHeight:40)
                .padding(10)
            VStack(alignment:.leading){
                Text("Brittany G")
                    .foregroundStyle(Color.black)
                    .fontWeight(.bold)
                Text("Lashes")
                Text("$75 - $250")
                    .bold()
                
            }
            Spacer()
            
            VStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.7")
                }
                
                NavigationLink(destination:BookAppointmentView()){
                    Text("Book")
                }
                .padding()
                .background(Color("BackgroundColor"))
                .cornerRadius(10)
                .foregroundStyle(.white)
            }
        }
        .padding()
        .background(.blue)
        
    }
        
    }


#Preview {
    SpecialistCardView()
}
