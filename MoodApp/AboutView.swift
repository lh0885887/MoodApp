//
//  AboutView.swift
//  MoodApp
//
//  Created by PETERS, CARLIE E. on 4/16/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                Image("origami").resizable().frame(width: 100, height: 100).padding(.top, 30)
                VStack(spacing:10){
                    Text("About Us").font(.title).fontWeight(.bold)
                    Text("We are the Mushroom Hatted Frogs")
                    
                    Text("What is The Mood App").font(.headline).fontWeight(.bold).padding(.top, 20)
                    Text("This Mood Board is ment to help you reflect on your daily mood. Simply select your mood from our list and achieve self understanding.").padding(.leading, 30).padding(.trailing, 30)
                    Text("Developers:").font(.headline).fontWeight(.bold).padding(.top, 20)
                }
                
                HStack(spacing: 30){
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack{
                            Image(systemName: "person.fill")
                            Text("Carlie Peters")
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            Text("Scott Patty")
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            Text("Logan Hill")
                        }
                        HStack{
                            Image(systemName: "person.fill")
                            Text("Franklin Gainer")
                        }
                        
                    }
                    Divider().frame(width: 1,height : 100)
                    VStack(alignment: .leading, spacing: 10){
                        Text("About/Styling Lead")
                        Text("Mood Picker Lead")
                        Text("Enum/Data Lead")
                        Text("Dashboard Lead")
                    }
                }
                
            }
        }
        
            
    }
}

#Preview {
    AboutView()
}
