//
//  DetailWonderVC.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Clase que contiene la vista.
final class DetailWonderVC: UIViewController {
    ///  información  selecciona mostrar.
    var wonder: WonderOfWorld?
    /// Referencia al presenter.
    var presenter: DetailWonderPresenterProtocol?
    /// Imagen de la información seleccionada a mostrar.
    @IBOutlet private weak var imgDetailWonder: UIImageView!
    /// Label que contiene el nombre.
    @IBOutlet private weak var lblNameWonder: UILabel!
    /// Label que contiene la descripción.
    @IBOutlet private weak var lblDescriptionWonder: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureinfo()
    }
    /// Función que confirgura la información seleccionada.
    func configureinfo() {
        imgDetailWonder.image = self.wonder?.imageWonder
        lblNameWonder.text = self.wonder?.nameWonder
        lblDescriptionWonder.text = self.wonder?.despritionWonder
        imgDetailWonder.layer.cornerRadius = 20
    }
}
///Protocolo para recibir datos de presenter.
extension DetailWonderVC: DetailWonderViewProtocol {
}
