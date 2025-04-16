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
                VStack()
                {
                    Text("today's mood")
                    Text("\(selectedMood.emoji)")
                    Text("\(selectedMood.message)")
                    NavigationLink(){}
                }
            }
            Tab("About", systemImage:"info.circle")
            {
                AboutView()
            }
        }
    }
}

#Preview {
    
}
