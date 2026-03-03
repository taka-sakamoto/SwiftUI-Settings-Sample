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
    
    @Published var theme: Theme
    @Published var isLoggedIn: Bool
    
    init() {
        // themeとisLoggedInを初期化
        self.theme = .system
        self.isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        
        // そのあとAppStrageから値を読み込む
        if let savedTheme = Theme(rawValue: storedTheme) {
            self.theme = savedTheme
        }
    }
    
    func setTheme(_ newTheme: Theme) {
        theme = newTheme
        storedTheme = newTheme.rawValue
    }
    
    func login() {
        isLoggedIn = true
    }
    
    func logout() {
        isLoggedIn = false
        UserDefaults.standard.set(false, forKey: "isLoggedIn")
    }
}
