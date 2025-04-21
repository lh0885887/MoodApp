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
            Tab("Dashboard", systemImage:"face.smiling")
            {
                NavigationStack{
                    VStack()
                    {
                        Text("Today's Mood:").font(.title).bold(true)
                            .padding(20)
                        Text("\(selectedMood.emoji)")
                            .font(.system(size: 100))
                            .padding(20)
                        Text("\(selectedMood.mood_description)")
                            .padding(20)
                        
                        NavigationLink("--> Pick Your Mood <--")
                        {
                            MoodPicker(currentlySelectedMood: $selectedMood)
                        }
                    }
                }
            }
            Tab("About", systemImage:"info.circle")
            {
                NavigationStack {
                    AboutView()
                }
            }
        }
    }
}
#Preview {
    dashBoardUi(selectedMood: .happy)
}
