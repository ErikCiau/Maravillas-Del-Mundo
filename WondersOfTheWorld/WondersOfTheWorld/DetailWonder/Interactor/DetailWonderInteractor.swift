//
//  DetailWonderInteractor.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//

import UIKit
/// Clase que contiene la comunicación de los servicios hacia el presenter.
final class DetailWonderInteractor {
    /// Refrencia al presenter.
    var presenter: DetailWonderInteractorOutputProtocol?
}
extension DetailWonderInteractor: DetailWonderInteractorInputProtocol {
}
