//
//  SpecialistView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct SpecialistView: View {
    var body: some View {
        NavigationStack {
            
            VStack(spacing:40){
                
                //MARK: Title and search box
                VStack(spacing:30){
                    Text("Find Your \nBeauty Specialist!")
                        .font(.title.bold())
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    
                    TextField("type a specialist...", text: .constant(""))
                        .padding()
                        .background(.white)
                        .cornerRadius(4)
                        .padding(.horizontal, 40)
                    
                }//END: Title & Search box
                
                // MARK: - Categories & Top Specialist
                VStack(spacing: 30){
                    
                    VStack(spacing:20){
                        
                        HStack{
                            Text("Categories")
                                .font(.title2.bold())
                            
                            Spacer()
                            
                            NavigationLink(destination:AllCategoriesView()){
                                Text("See All")
                                    .foregroundStyle(Color.white)
                                    .bold()
                            }
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:20){
                                CategoryCardView()
                                CategoryCardView()
                                CategoryCardView()
                            }
                        }
                        
                    }//End: Categories
                    
                    //Top Specialists
                    VStack(alignment: .leading,spacing:20){
                        Text("Top Specialist")
                            .font(.title2.bold())
                        
                        ScrollView(.vertical, showsIndicators: false){
                            VStack(spacing:20){
                                SpecialistCardView()
                                SpecialistCardView()
                                SpecialistCardView()
                                SpecialistCardView()
                                
                            }
                        }
                    }
                    
                    
                }//END: Categories & Top Specialist
                .padding(30)
                .frame(maxWidth: .infinity)
                .background(Color("SurfaceColor"))
            
            }// END: VStack - Main
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }//End: Navigation Stack
        
        }// END: body
}// END: SpecialistView

#Preview {
    SpecialistView()
}
