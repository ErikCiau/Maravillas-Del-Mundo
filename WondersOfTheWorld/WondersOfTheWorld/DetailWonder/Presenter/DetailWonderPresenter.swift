//
//  DetailWonderPresenter.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Clase que contiene la comunicación entre la vista, los servicios y el router.
final class DetailWonderPresenter {
    /// Referencia a la vista.
    var view: DetailWonderViewProtocol?
    /// Referencia al interactor.
    var interactor: DetailWonderInteractorInputProtocol?
    /// Referencia al router.
    var router: DetailWonderRouterProtocol?
}
extension DetailWonderPresenter: DetailWonderPresenterProtocol {
}
extension DetailWonderPresenter: DetailWonderInteractorOutputProtocol {
}
