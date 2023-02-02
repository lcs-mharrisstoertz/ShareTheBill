//
//  ShareTheBillApp.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

@main
struct ShareTheBillApp: App {
    
    //MARK: stored properties
    //SOURCE OF TRUTH: WHERE THE DATA IS CREATED
    @State var history: [Result] = []   // Begins as empty list
    
    //MARK: computed properties
    
    var body: some Scene {
        WindowGroup {
            TabView{
                CalculationView(history: $history)
                    .tabItem {
                        Text("Calculate")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Text("Review")
                    }
            }
        }
    }
}
