import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WelcomeView()
        }
    }
}

@main
struct ECareApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

