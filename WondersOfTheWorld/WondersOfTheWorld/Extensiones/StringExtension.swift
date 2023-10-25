//
//  StringExtension.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 24/10/23.
//
import UIKit
extension String {
    /// Función que encapsula la llamada al archivo Localizable.strings del proyecto.
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
