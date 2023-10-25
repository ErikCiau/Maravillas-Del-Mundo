//
//  HomeWondersProtocol.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Protocolo que define los métodos y atributos para el view de HomeWonders
protocol HomeWondersViewProtocol {
    // PRESENTER -> VIEW
}
/// Protocolo que define los métodos y atributos para el routing de HomeWonders
protocol HomeWondersRouterProtocol {
    // PRESENTER -> ROUTING
    /// Función que muestra el detalle de la opción seleccionada.
    /// - Parameters:
    ///    - wonder: Objeto que contiene la información..
    func showDetailWonder(wonder: WonderOfWorld)
}
/// Protocolo que define los métodos y atributos para el Presenter de HomeWonders
protocol HomeWondersPresenterProtocol {
    // VIEW -> PRESENTER
    /// Arreglo con la información.
    var wonderOfWorld: [WonderOfWorld]? { get set }
    /// Función que muestra el detalle de la opción seleccionada.
    /// - Parameters:
    ///    - wonder: Objeto que contiene la información..
    func wonderOfWorld(wonder: WonderOfWorld)
}
/// Protocolo que define los métodos y atributos para el Interactor de HomeWonders
protocol HomeWondersInteractorInputProtocol {
    // PRESENTER -> INTERACTOR
}
/// Protocolo que define los métodos y atributos para el Interactor de HomeWonders
protocol HomeWondersInteractorOutputProtocol {
    // INTERACTOR -> PRESENTER
}

