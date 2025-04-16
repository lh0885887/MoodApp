//
//  Mood.swift
//  MoodApp
//
//  Created by HILL, LOGAN on 4/16/25.
//

import SwiftUI

//Declare enum
enum Mood: String, CaseIterable, Identifiable {
    
    var id: Mood{self}
    
//  Define enum moods
    case happy = "Happy"
    case sad = "Sad"
    case angry = "Angry"
    case confused = "Confused"
    case sick = "Sick"
    case scared = "Scared"
    
//  Computed Properties
    var emoji: String {
        switch self {
        case .happy:
                return "😊"
        case .sad:
                return "😢"
        case .angry:
                return "😡"
        case .confused:
                return "😵‍💫"
        case .sick:
                return "🤒"
        case .scared:
                return "😟"
        }
    }
    
    var mood_description: String {
        switch self {
        case .happy:
            return "You are feeling quite chipper!"
        case .sad:
            return "You've had better days..."
        case .angry:
            return "Everyone better stay out of your way."
        case .confused:
            return "You don't know what's going on."
        case .sick:
            return "You feel under the weather..."
        case .scared:
            return "You want to run and hide!"
        }
    }
}
