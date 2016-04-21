//
//  ViewController.swift
//  SettingsAppAccessExample
//
//  Created by Ian Grossberg on 4/20/16.
//  Copyright © 2016 Adorkable. All rights reserved.
//

import UIKit

import SettingsAppAccess

// No great way to iterate enums yet :( :( :(
// Wonderfully hacky iterate from http://stackoverflow.com/a/28341290
func iterateEnum<T: Hashable>(_: T.Type) -> AnyGenerator<T> {
    var i = 0
    return AnyGenerator {
        let next = withUnsafePointer(&i) { UnsafePointer<T>($0).memory }

        let value : T?
        if next.hashValue == i {
            value = next
        } else {
            value = nil
        }
        i = i + 1
        return value
    }
}

class ViewController: UIViewController {

    let locations : [SettingsAppLocation]
    @IBOutlet internal weak var locationsTableView : UITableView?

    required init?(coder aDecoder: NSCoder) {
        var locations : [SettingsAppLocation] = []
        for value in iterateEnum(SettingsAppLocation.self) {
            locations.append(value)
        }
        self.locations = locations

        super.init(coder: aDecoder)
    }
}

class SettingsAppLocationCell : UITableViewCell {

    @IBOutlet internal weak var locationLabel : UILabel?

    func populate(location : SettingsAppLocation) {
        self.locationLabel?.text = location.humanReadableString
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.locations.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("Location", forIndexPath: indexPath)

        guard indexPath.row >= 0 && indexPath.row < locations.count else {
            NSLog("ERROR: cellForRowAtIndexPath is asking for row \(indexPath.row), beyond locations.count \(locations.count)")
            return cell
        }
        let location = self.locations[indexPath.row]

        guard let locationCell = cell as? SettingsAppLocationCell else {
            NSLog("ERROR: while attempting to populate location cell, unable to retrieve cell of type \(SettingsAppLocationCell.self)")
            return cell
        }

        locationCell.populate(location)
        return locationCell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        guard indexPath.row >= 0 && indexPath.row < locations.count else {
            NSLog("ERROR: cellForRowAtIndexPath is asking for row \(indexPath.row), beyond locations.count \(locations.count)")
            return
        }
        let location = self.locations[indexPath.row]

        do {
            if try UIApplication.sharedApplication().settingsAppAccess_openLocation(location) == false {
                NSLog("ERROR: unable to open location '\(location.humanReadableString), make sure app has a URL Type set for 'prefs'")
            }
        } catch let error as NSError {
            NSLog("ERROR: while attempting to open location \(location.rawValue): \(error)")
        }
    }
}
