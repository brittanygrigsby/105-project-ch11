//
//  CategoryCardView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct CategoryCardView: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width:80, height:80)
                    .foregroundStyle(Color("BackgroundColor"))
                
                Image(systemName:"eye")
                    .resizable()
                    .scaledToFill()
                    .frame(width:40, height:40)
                    .foregroundStyle(Color.white)
                
                
                
            }
            
            Text("Haircut")
        }
        .frame(width:100, height:100)
        .padding(10)
        .background(.white)
        .cornerRadius(20)
    }
}

#Preview {
    CategoryCardView()
}
