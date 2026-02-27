//
//  ThemeSelectionView.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/26.
//

import Foundation

import SwiftUI

struct ThemeSelectionView: View {
    
    @EnvironmentObject var settings: SettingsModel
    
    var body: some View {
            List {
                ForEach(Theme.allCases) { theme in
                    HStack {
                        VStack(alignment: .leading) {
                                Text(theme.title)
                                Text(theme.description)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }

                            Spacer()

                            if settings.theme == theme {
                                Image(systemName: "checkmark")
                            }
                        }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        settings.theme = theme
                        
                    }
                }
            }
            .navigationTitle("テーマ")
    }
}
