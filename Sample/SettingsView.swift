//
//  SettingsView.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/24.
//

import Foundation

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var settings: SettingsModel
    
    var body: some View {
        Form {
            Section(header: Text("外観")) {
                ForEach(Theme.allCases) { theme in
                    Button {
                        settings.setTheme(theme)
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(theme.title)
                                Text(theme.description)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            if settings.theme == theme {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            }
            Section {
                Button(role: .destructive) {
                    settings.logout()
                } label: {
                    Text("ログアウト")
                }
                .foregroundColor(.red)
            }
        }
        .navigationTitle("設定")
        
    }
}
