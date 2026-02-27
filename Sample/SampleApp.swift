//
//  SampleApp.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/24.
//

import SwiftUI

@main
struct SampleApp: App {
    @StateObject private var settings = SettingsModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
                .preferredColorScheme(settings.theme.colorScheme)
        }
    }
}
