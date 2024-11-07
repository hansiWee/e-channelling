//
//  customTabbar.swift
//  e-channelling
//
//  Created by COCOBSCCOMPY4231P-035 on 2024-11-07.
//

import Foundation
import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Tab

    enum Tab {
        case home, health, appointments, notifications, profile
    }

    var body: some View {
        HStack {
            TabBarItem(icon: "house.fill", title: "Home", tab: .home, selectedTab: $selectedTab)
            Spacer()
            TabBarItem(icon: "heart.fill", title: "Health", tab: .health, selectedTab: $selectedTab)
            Spacer()
            TabBarItem(icon: "calendar", title: "Appointments", tab: .appointments, selectedTab: $selectedTab)
            Spacer()
            TabBarItem(icon: "bell.fill", title: "Notifications", tab: .notifications, selectedTab: $selectedTab)
            Spacer()
            TabBarItem(icon: "person.fill", title: "Profile", tab: .profile, selectedTab: $selectedTab)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(Color.white.shadow(radius: 5))
    }
}
