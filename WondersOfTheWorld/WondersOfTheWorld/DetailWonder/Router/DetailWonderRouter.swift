//
//  DetailWonderRouter.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Clase que contiene la navegación del módulo.
final class DetailWonderRouter {
    /// Refrencia a la vista.
    var view: DetailWonderVC
    /// Referencia al presenter.
    var presenter: DetailWonderPresenter
    /// Referencia al interactor.
    var interactor: DetailWonderInteractor
    /// Inicializador del objeto.
    init(wonder: WonderOfWorld) {
        self.view = DetailWonderVC()
        self.presenter = DetailWonderPresenter()
        self.interactor = DetailWonderInteractor()
        view.wonder = wonder
        view.presenter = self.presenter
        presenter.view = self.view
        presenter.interactor = self.interactor
        presenter.router = self
        interactor.presenter = self.presenter
    }
}
extension DetailWonderRouter: DetailWonderRouterProtocol {
}

