//
//  UUIDMakerApp.swift
//  UUIDMaker
//
//  Created by Gary on 12/21/22.
//

import SwiftUI

@main
struct UUIDMakerApp: App {
    
    let pasteboard = NSPasteboard.general
    
    @State var currentNumber: String = "1"
    
    @State private var id = UUID().uuidString

    var body: some Scene {
        MenuBarExtra(currentNumber, systemImage: "number.square") {
            Button("Generate UUID") {
                id = UUID().uuidString
                pasteboard.clearContents()
                pasteboard.setString("\(id)", forType: .string)
            }.keyboardShortcut("U")
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
