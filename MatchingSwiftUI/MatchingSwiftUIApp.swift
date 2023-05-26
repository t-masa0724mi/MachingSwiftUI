//
//  MatchingSwiftUIApp.swift
//  MatchingSwiftUI
//
//  Created by 飯塚政美 on 2023/05/25.
//

import SwiftUI

@main
struct MatchingSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(CardViewModel())
        }
    }
}
