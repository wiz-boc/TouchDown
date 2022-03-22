//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by wizz on 11/25/21.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
