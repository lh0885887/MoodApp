//
//  dashBoardUi.swift
//  MoodApp
//
//  Created by GAINER, FRANKLIN L. on 4/16/25.
//

import SwiftUI

struct dashBoardUi: View {
    @State var selectedMood: Mood
    var body: some View {
        TabView {
            Tab("Dashboard", systemImage:"person.crop.circle.fill")
            {
                NavigationStack{
                    VStack()
                    {
                        Text("today's mood")
                        Text("\(selectedMood.emoji)")
                        Text("\(selectedMood.mood_description)")
                        NavigationLink("Pick your mood: ")
                        {
                            MoodPicker()
                        }
                    }
                }
            }
            Tab("About", systemImage:"info.circle")
            {
                NavigationStack(
                    AboutView()
                )
            }
        }
    }
}

#Preview {
    
}
