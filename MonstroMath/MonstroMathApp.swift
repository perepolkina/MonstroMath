//
//  MonstroMathApp.swift
//  MonstroMath
//
//  Created by Halyna on 05/03/2021.
//

import SwiftUI

@main
struct MonstroMathApp: App {
    var body: some Scene {
        WindowGroup {
            ViewSwitcher(views: [
                AnyView(FirstPage()),
                //AnyView(Test())
                AnyView(MainPage())
                    ])
        }
    }
}
