//
//  HomeWondersPresenter.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Clase que contiene la comunicación entre la vista, los servicios y el router.
final class HomeWondersPresenter: HomeWondersPresenterProtocol {
    /// Referencia a la vista.
    var view: HomeWondersViewProtocol?
    /// Referencia al interactor.
    var interactor: HomeWondersInteractorInputProtocol?
    /// Referencia al router.
    var router: HomeWondersRouterProtocol?
    /// Variable que contiene la información a mostar.
    var wonderOfWorld: [WonderOfWorld]? = [WonderOfWorld(imageWonder: UIImage(named: "MurallaChina"), nameWonder: "MurallaChina".localized, despritionWonder: "MurallaChinaDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "TajMahal"), nameWonder: "TajMahal".localized, despritionWonder: "TajMahalDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "Coliseo"), nameWonder: "Coliseo".localized, despritionWonder: "ColiseoDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "CristoRedentor"), nameWonder: "CristoRedentor".localized, despritionWonder: "CristoRedentorDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "MachuPicchu"), nameWonder: "MachuPicchu".localized, despritionWonder: "MachuPicchuDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "Petra"), nameWonder: "Petra".localized, despritionWonder: "PetraDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "ChichenItza"), nameWonder: "ChichenItza".localized, despritionWonder: "ChichenItzaDescription".localized),
                                           WonderOfWorld(imageWonder:  UIImage(named: "Piramides"), nameWonder: "Piramides".localized, despritionWonder: "PiramidesDescription".localized)]
    /// Función que contiene la información seleccionada.
    /// - Parameters:
    ///    - wonder: Objeto que contiene la información seleccionada.
    func wonderOfWorld(wonder: WonderOfWorld) {
        router?.showDetailWonder(wonder: wonder)
    }
}
extension HomeWondersPresenter: HomeWondersInteractorOutputProtocol {
}
