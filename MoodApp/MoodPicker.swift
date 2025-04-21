//
//  MoodPicker.swift
//  MoodApp
//
//  Created by PATTY, SCOTT on 4/16/25.
//

// TODO: Ensure that the page dismisses correctly and updates the selected mood on the dashboard

import SwiftUI

struct MoodPicker: View {
    @Binding var currentlySelectedMood: Mood
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Select your mood!")
                .font(.system(size: 36).bold())
            VStack {
                ForEach(Mood.allCases) { mood in
                    MoodPickerElement(mood, 300)
                    .onTapGesture {
                        currentlySelectedMood = mood
                        dismiss()
                    }
                }
            }
        }
    }
}

/* This is the code that was inside of the for loop. I moved this out for two reasons:
    1. Cleanliness. I like extracting repeatable code.
    2. I had to set the preferred width for each of them using a frame.*/
struct MoodPickerElement: View {
    init(_ mood: Mood, _ preferredWidth: CGFloat) {
        self.mood = mood
        self.preferredWidth = preferredWidth;
    }
    // Preferred width ensures that all of the elements are the same size
    var preferredWidth: CGFloat
    var mood: Mood
    var body: some View {
        HStack {
            Text(mood.emoji)
                .font(.system(size: 48))
                .padding(.trailing, 16)
            Text(mood.rawValue)
                .font(.system(size: 24).bold())
        }.padding(16)
            .frame(minWidth: preferredWidth)
            .background(Color(red: 0.827, green: 0.922, blue: 0.486))
            .cornerRadius(24)
    }
}

#Preview {
    // Preview stopped working
    //MoodPicker()
}
