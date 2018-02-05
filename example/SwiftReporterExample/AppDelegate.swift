
/*
Copyright (C) 2018 Michael Kapelko <kornerr@gmail.com>

This software is provided 'as-is', without any express or implied
warranty.  In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.
2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.
3. This notice may not be removed or altered from any source distribution.
*/

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - SETUP

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        // Create main window.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard
            let window = self.window
        else {
            fatalError("Could not create UIWindow!")
        }

        self.setupAppCoordinator(window: window)

        // Configure and display main window.
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        return true
    }

    // MARK: - APP COORDINATOR

    var appCoordinator: AppCoordinator!

    private func setupAppCoordinator(window: UIWindow) {
        self.appCoordinator = AppCoordinator(window: window)
    }

}
