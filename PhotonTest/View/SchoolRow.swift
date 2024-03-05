//
//  SchoolRow.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

struct SchoolRow: View {
    
    let school: School
    
    var body: some View {
        
        HStack {
            Text(school.dbn)
            
            Text(school.name)
        }
    }
}

//#Preview {
//    SchoolRow()
//}
