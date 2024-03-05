//
//  SchoolDetail.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

struct SchoolDetail: View {
    
    let school: School
    
    var body: some View {
        
        ScrollView(.vertical) {
            
            LazyVStack(alignment: .leading, content:  {
                Text(school.dbn)
                Text(school.name)
                    .fontWeight(.semibold)
                    .padding(.bottom, 12)
                
                
                Label("Overview", systemImage: "graduationcap.fill")
                    .fontWeight(.semibold)
                
                Text(school.overview ?? "")
                    .padding(.bottom, 12)
                

                Label("Address", systemImage: "location")
                    .fontWeight(.semibold)
                Text(school.address)
                Text(school.city + ", " + school.state + " " + school.zip)
                    .padding(.bottom, 12)
                
            })
            .padding()
            
        }

    }
}

//#Preview {
//    SchoolDetail()
//}
