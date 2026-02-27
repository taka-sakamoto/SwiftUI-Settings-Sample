//
//  SettingsModel.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/24.
//

import Foundation

import SwiftUI
import Combine

class SettingsModel: ObservableObject {
    
    @AppStorage("selectedTheme")
    private var storedTheme: String = Theme.system.rawValue
    
    @Published var theme: Theme = .system {
        didSet {
            storedTheme = theme.rawValue
        }
    }
    
    init() {
        theme = Theme(rawValue: storedTheme) ?? .system
    }
}
