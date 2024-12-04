//
//  FirebaseAssignmentApp.swift
//  FirebaseAssignment
//
//  Created by Gaming Lab on 1/12/24.
//

import SwiftUI
import Firebase
@main
struct FirebaseAssignmentApp: App {
    
    @StateObject var dataManager = DataManager()
    init()
    {
        FirebaseApp.configure()
        
        
    }
    
    var body: some Scene {
        WindowGroup {
            ListView().environmentObject(dataManager)
        }
    }
}
