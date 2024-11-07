//
//  TabBarItem.swift
//  e-channelling
//
//  Created by COCOBSCCOMPY4231P-035 on 2024-11-07.
//

import Foundation
import SwiftUI 
struct TabBarItem: View {
    let icon: String
    let title: String
    let tab: CustomTabBar.Tab
    @Binding var selectedTab: CustomTabBar.Tab
    
    var body: some View {
        Button(action: {
            selectedTab = tab
        }) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(selectedTab == tab ? .blue : .gray)
                Text(title)
                    .font(.footnote)
                    .foregroundColor(selectedTab == tab ? .blue : .gray)
            }
        }
    }
}
