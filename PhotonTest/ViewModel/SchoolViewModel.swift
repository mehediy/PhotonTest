//
//  SchoolViewModel.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

class SchoolViewModel: ObservableObject {
    
    @Published private(set) var schools: [School] = []
    @Published private(set) var isLoading: Bool = false
    
    func fetchSchools() {
        
        guard schools.isEmpty else { return }
        
        isLoading = true
        
        CommonService.fetchNYCSchools { [weak self] schools, err in
            
            guard let self = self else { return }
            
            self.isLoading = false
            
            if let error = err {
                print(error)
            } else {
                self.schools = schools
                print(schools.count)
            }
        }
    }
    
    
}




