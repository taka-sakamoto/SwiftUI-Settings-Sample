//
//  LoginView.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/03/03.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var vm: SettingsModel
    
    var body: some View {
        VStack {
            Text("Login")
            Button("ログイン") {
                vm.login()
            }
        }
    }
}

#Preview {
    LoginView()
}
