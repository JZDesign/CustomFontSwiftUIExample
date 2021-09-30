import SwiftUI
import JBMono

@main
struct CustomFontSwiftUIExampleApp: App {
    
    init() {
        JBMono.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
