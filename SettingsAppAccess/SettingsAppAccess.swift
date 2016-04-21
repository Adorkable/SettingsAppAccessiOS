//
//  SettingsAppAccess.swift
//  SettingsAppAccess
//
//  Created by Ian Grossberg on 4/20/16.
//  Copyright © 2016 Adorkable. All rights reserved.
//

import Foundation

/// SettingsAppLocation is our collection of paths within iOS' Settings App
public enum SettingsAppLocation : String {

    // List originally collected by Sofia Swidarowicz ( http://phyline.com ), https://gist.github.com/phynet/471089a51b8f940f0fb4

    /// Root Settings
    case Settings = "prefs:"

    /// About
    case About = "prefs:root=General&path=About"
    /// Accessibility
    case Accessibility = "prefs:root=General&path=ACCESSIBILITY"
    /// Auto-Lock
    case AutoLock = "prefs:root=General&path=AUTOLOCK"
    /// Bluetooth
    case Bluetooth = "prefs:root=Bluetooth" // 	Bluetooth iOS >= 9
    /// Configuration Profiles
    case ConfigurationProfiles = "prefs:root=General&path=ManagedConfigurationList"
    /// Date & Time
    case DateandTime = "prefs:root=General&path=DATE_AND_TIME"
    /// FaceTime
    case FaceTime = "prefs:root=FACETIME"
    /// General
    case General = "prefs:root=General"
    /// iCloud
    case iCloud = "prefs:root=CASTLE"
    /// iCloud Storage
    case iCloudStorage = "prefs:root=CASTLE&path=STORAGE_AND_BACKUP"
    /// iTunes & App Stores
    case iTunesandAppStores = "prefs:root=STORE"
    /// Keyboards
    case Keyboards = "prefs:root=General&path=Keyboard"
    /// Keyboards list with the Keyboards menu
    case KeyboardsKeyboards = "prefs:root=General&path=Keyboard/KEYBOARDS"
    /// Language & Region
    case LanguageandRegion = "prefs:root=General&path=INTERNATIONAL"
    /// Location Services
    case LocationServices = "prefs:root=LOCATION_SERVICES"
    /// Mail, Contacts, Calendars ie: Account Settings
    case MailContactsCalendars = "prefs:root=ACCOUNT_SETTINGS"
    /// Music
    case Music = "prefs:root=MUSIC"
    /// Notes
    case Notes = "prefs:root=NOTES"
    /// Notifications
    case Notifications = "prefs:root=NOTIFICATIONS_ID"
    /// Personal Hotspot
    case PersonalHotspot = "prefs:root=INTERNET_TETHERING"
    /// Phone
    case Phone = "prefs:root=Phone"
    /// Photos & Camera
    case PhotosandCamera = "prefs:root=Photos"
    /// Reset phone and settings
    case Reset = "prefs:root=General&path=Reset"
    /// Ringtones
    case Ringtone = "prefs:root=Sounds&path=Ringtone"
    /// Sounds
    case Sounds = "prefs:root=Sounds"
    /// Software Update
    case SoftwareUpdate = "prefs:root=General&path=SOFTWARE_UPDATE_LINK"
    /// Twitter
    case Twitter = "prefs:root=TWITTER"
    /// Videos
    case Videos = "prefs:root=VIDEO"
    /// Wallet & Apple Pay
    case WalletandApplePay = "prefs:root=PASSBOOK"
    /// Wallpaper
    case Wallpaper = "prefs:root=Wallpaper"
    /// Wi-Fi
    case WiFi = "prefs:root=WIFI"

    /// Return a human readable string
    public var humanReadableString : String {
        let settingsAppAccessBundle = NSBundle(forClass: SettingsAppAccess.self)

        switch self {
        case .Settings:
            return NSLocalizedString("Settings menu title", value: "Settings", bundle: settingsAppAccessBundle, comment: "main Settings menu title")

        case .About:
            return NSLocalizedString("About menu title", value: "About", bundle: settingsAppAccessBundle, comment: "")

        case .Accessibility:
            return NSLocalizedString("Accessibility menu title", value: "Accessibility", bundle: settingsAppAccessBundle, comment: "")

        case .AutoLock:
            return NSLocalizedString("Auto-Lock menu title", value: "Auto-Lock", bundle: settingsAppAccessBundle, comment: "")

        case .Bluetooth:
            return NSLocalizedString("Bluetooth menu title", value: "Bluetooth", bundle: settingsAppAccessBundle, comment: "")

        case .ConfigurationProfiles:
            return NSLocalizedString("Configuration Profiles menu title", bundle: settingsAppAccessBundle, value: "Configuration Profiles", comment: "")

        case .DateandTime:
            return NSLocalizedString("Date & Time menu title", bundle: settingsAppAccessBundle, value: "Date & Time", comment: "")

        case .FaceTime:
            return NSLocalizedString("FaceTime menu title", bundle: settingsAppAccessBundle, value: "FaceTime", comment: "")

        case .General:
            return NSLocalizedString("General menu title", bundle: settingsAppAccessBundle, value: "General", comment: "")

        case .iCloud:
            return NSLocalizedString("iCloud menu title", bundle: settingsAppAccessBundle, value: "iCloud", comment: "")

        case .iCloudStorage:
            return NSLocalizedString("iCloud Storage menu title", bundle: settingsAppAccessBundle, value: "iCloud Storage", comment: "")

        case .iTunesandAppStores:
            return NSLocalizedString("iTunes & App Stores menu title", bundle: settingsAppAccessBundle, value: "iTunes & App Stores", comment: "")

        case .Keyboards:
            return NSLocalizedString("Keyboards menu title", bundle: settingsAppAccessBundle, value: "Keyboards", comment: "Keyboards settings menu")

        case .KeyboardsKeyboards:
            return NSLocalizedString("Keyboards -> Keyboards menu title", bundle: settingsAppAccessBundle, value: "Keyboards -> Keyboards", comment: "Keyboards list within Keyboards menu")

        case .LanguageandRegion:
            return NSLocalizedString("Language & Region menu title", bundle: settingsAppAccessBundle, value: "Language & Region", comment: "")

        case .LocationServices:
            return NSLocalizedString("Location Services menu title", bundle: settingsAppAccessBundle, value: "Location Services", comment: "")

        case .MailContactsCalendars:
            return NSLocalizedString("Mail, Contacts, Calendars menu title", bundle: settingsAppAccessBundle, value: "Mail, Contacts, Calendars", comment: "")

        case .Music:
            return NSLocalizedString("Music menu title", bundle: settingsAppAccessBundle, value: "Music", comment: "")

        case .Notes:
            return NSLocalizedString("Notes menu title", bundle: settingsAppAccessBundle, value: "Notes", comment: "")

        case .Notifications:
            return NSLocalizedString("Notifications menu title", bundle: settingsAppAccessBundle, value: "Notifications", comment: "")

        case .PersonalHotspot:
            return NSLocalizedString("Personal Hotspot menu title", bundle: settingsAppAccessBundle, value: "Personal Hotspot", comment: "")

        case .Phone:
            return NSLocalizedString("Phone menu title", bundle: settingsAppAccessBundle, value: "Phone", comment: "")

        case .PhotosandCamera:
            return NSLocalizedString("Photos & Camera menu title", bundle: settingsAppAccessBundle, value: "Photos & Camera", comment: "")

        case .Reset:
            return NSLocalizedString("Reset menu title", bundle: settingsAppAccessBundle, value: "Reset", comment: "")

        case .Ringtone:
            return NSLocalizedString("Ringtone menu title", bundle: settingsAppAccessBundle, value: "Ringtone", comment: "")

        case .Sounds:
            return NSLocalizedString("Sounds menu title", bundle: settingsAppAccessBundle, value: "Sounds", comment: "")

        case .SoftwareUpdate:
            return NSLocalizedString("Software Update menu title", bundle: settingsAppAccessBundle, value: "Software Update", comment: "")

        case .Twitter:
            return NSLocalizedString("Twitter menu title", bundle: settingsAppAccessBundle, value: "Twitter", comment: "")

        case .Videos:
            return NSLocalizedString("Videos menu title", bundle: settingsAppAccessBundle, value: "Videos", comment: "")

        case .WalletandApplePay:
            return NSLocalizedString("Wallet & Apple Pay menu title", bundle: settingsAppAccessBundle, value: "Wallet & Apple Pay", comment: "")

        case .Wallpaper:
            return NSLocalizedString("Wallpaper menu title", bundle: settingsAppAccessBundle, value: "Wallpaper", comment: "")

        case .WiFi:
            return NSLocalizedString("Wi-Fi menu title", bundle: settingsAppAccessBundle, value: "Wi-Fi", comment: "")
        }
    }

    private func unableToCreateURLError() -> NSError {
        let descriptionFormat = NSLocalizedString("Unable to create NSURL for Settings App Location error description", comment: "")
        let description = String(format: descriptionFormat, self.rawValue)

        return NSError(domain: "com.adorkable.SettingsAppAccess", code: 1, userInfo: [
            NSLocalizedDescriptionKey : description
            ])
    }

    /**
     Attempt to create an NSURL with our path

     - returns: A new NSURL if one can be created with our path, otherwise nil
     */
    public func URL() -> NSURL? {
        return NSURL(string: self.rawValue)
    }

    /**
     Attempt to create an NSURL with out path

     - throws: If we cannot create an NSURL with our path we throw an NSError

     - returns: A new NURL with our path
     */
    public func URL() throws -> NSURL {
        
        guard let url = NSURL(string: self.rawValue) else {
            throw self.unableToCreateURLError()
        }
        
        return url
    }
}

/// SettingsAppAccess currently exists to identify our bundle for and retrieve our localization
private class SettingsAppAccess {

}