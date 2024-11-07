//
//  DateButton.swift
//  e-channelling
//
//  Created by COCOBSCCOMPY4231P-035 on 2024-11-07.
//

import Foundation
import SwiftUI

struct DateButton: View {
    let day: Int
    let dayText: String
    
    var body: some View {
        VStack {
            Text("\(day)")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            Text(dayText)
                .font(.subheadline)
                .foregroundColor(Color.gray)
        }
        .frame(width: 50, height: 70)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct DateButton_Previews: PreviewProvider {
    static var previews: some View {
        DateButton(day: 9, dayText: "MON")
    }
}

