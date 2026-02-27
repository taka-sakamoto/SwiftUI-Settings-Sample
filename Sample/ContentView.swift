//
//  ContentView.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("ホーム画面")
                .tabItem {
                    Image(systemName: "house")
                    Text("ホーム")
                }
            NavigationStack {
                SettingsView()
            }
            .tabItem {
                Image(systemName: "gear")
                Text("設定")
            }
        }
    }
}



#Preview {
    NavigationStack {
        ThemeSelectionView()
        
            .environmentObject(SettingsModel())
    }
    
  
}
