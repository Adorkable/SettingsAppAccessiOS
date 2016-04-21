//
//  UIApplication+SettingsAppAccess.swift
//  SettingsAppAccess
//
//  Created by Ian Grossberg on 4/20/16.
//  Copyright © 2016 Adorkable. All rights reserved.
//

import UIKit

extension UIApplication {

    /**
     Attempt to open iOS' Settings App to a specified location

     - parameter location: location to open the iOS Settings App to

     - throws: if there was an issue creating the NSURL needed to open the location we throw an NSError

     - returns: if we can successfully open iOS' Settings App return true, otherwise return false.
     
        Usually a return value of false indicates a URL Type to handle 'prefs', the iOS Settings App's URL protocol, has not been created for the current app.
                
        Just like UIApplication's openURL(...) a return value of true does not indicate that we've successfully reached the expected path within iOS' Settings App, if the path is invalid we will open the iOS Settings App to the last open location and return true.

     */
    public func settingsAppAccess_openLocation(location : SettingsAppLocation) throws -> Bool {
        return self.openURL(try location.URL())
    }
}
