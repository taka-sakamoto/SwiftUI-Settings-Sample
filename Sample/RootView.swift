//
//  RootView.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/03/03.
//

import SwiftUI

struct RootView: View {
    @StateObject private var vm = SettingsModel()
    
    var body: some View {
        if vm.isLoggedIn {
            SettingsView()
                .environmentObject(vm)
        } else {
            LoginView()
                .environmentObject(vm)
        }
    }
}

#Preview {
    RootView()
}
