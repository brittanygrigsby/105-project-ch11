//
//  CategoryView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/16/26.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "progress.indicator")
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            
            Text("Category Details")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Text("Under Construction...")
                .foregroundStyle(.white)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BackgroundColor"))
    }
}

#Preview {
    CategoryView()
}
