import SwiftUI

@main
struct _80App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashView()
            
        }
    }
}
