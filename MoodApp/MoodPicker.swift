//
//  MoodPicker.swift
//  MoodApp
//
//  Created by PATTY, SCOTT on 4/16/25.
//

import SwiftUI

struct MoodPicker: View {
    var mood: Mood = .happy
    var body: some View {
        HStack {
            Text(mood.emoji)
                .font(.system(size: 72))
                .padding(.trailing, 16)
            Text(mood.rawValue)
                .font(.system(size: 48).bold())
        }.padding(16)
            .background(Color.cyan.opacity(0.5))
            .cornerRadius(24)
    }
}

#Preview {
    MoodPicker()
}
