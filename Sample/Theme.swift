//
//  Theme.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/24.
//

import Foundation
import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case system
    case light
    case dark
    
    //var id: Self { self }
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .system: return "システム"
        case .light: return "ライト"
        case .dark: return "ダーク"
        }
    }
    
    var description: String {
        switch self {
        case .system: return "端末の外観規定に従います"
        case .light: return "常に明るい外観で表示します"
        case .dark: return "常に暗い外観で表示します"
        }
    }
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system: return nil
        case .light:  return .light
        case .dark:   return .dark
        }
    }
    
}
