//
//  SchoolViewModel.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

class SchoolViewModel: ObservableObject {
    
    @Published var schools: [School] = []
    
    func fetchSchools() {
        
        guard schools.isEmpty else { return }
        
        CommonService.fetchNYCSchools { schools, err in
            if let error = err {
                print(error)
            } else {
                self.schools = schools
                print(schools.count)
            }
        }
    }
    
    
}




