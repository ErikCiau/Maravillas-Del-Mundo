//
//  HomeWondersInteractor.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import Foundation
/// Clase que contiene la comunicación de los servicios hacia el presenter.
final class HomeWondersInteractor {
    /// Referencia al presenter.
    var presenter: HomeWondersInteractorOutputProtocol?
}
extension HomeWondersInteractor: HomeWondersInteractorInputProtocol {
}
