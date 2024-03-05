//
//  ContentView.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

struct NYCSchoolView: View {
    
    @ObservedObject var viewModel: SchoolViewModel

    var body: some View {
        
        NavigationView {
            
            List(viewModel.schools) { school in
                NavigationLink {
                    SchoolDetail(school: school)
                } label: {
                    SchoolRow(school: school)
                }
            }
            .navigationTitle("NYC Schools")
        }
        .padding()
        .onAppear {
            viewModel.fetchSchools()
        }
        
    }

    
}


//#Preview {
//    ContentView()
//}
