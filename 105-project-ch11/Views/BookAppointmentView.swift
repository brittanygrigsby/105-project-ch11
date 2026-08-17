//
//  BookAppointmentView.swift
//  105-project-ch11
//
//  Created by Brittany Grigsby on 8/15/26.
//

import SwiftUI

struct BookAppointmentView: View {
    var body: some View {
        
        VStack(spacing:20) {
            Image(systemName: "progress.indicator")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Text("Book Appointment")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Text("Under construction")
                .foregroundStyle(.white)
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .background(Color("BackgroundColor"))
    }
}

#Preview {
    BookAppointmentView()
}
