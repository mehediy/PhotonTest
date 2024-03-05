//
//  PhotonTestApp.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import SwiftUI

@main
struct PhotonTestApp: App {
    
    @StateObject var schoolViewModel = SchoolViewModel()
    
    var body: some Scene {
        WindowGroup {
            NYCSchoolView(viewModel: schoolViewModel)
        }
    }
}
