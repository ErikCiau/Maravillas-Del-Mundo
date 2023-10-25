//
//  ListWonderTableViewCell.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//
import UIKit
/// Clase que contiene la vista.
final class ListWonderTableViewCell: UITableViewCell {
    /// Imagen a mostar.
    @IBOutlet private weak var imgDetail: UIImageView!
    /// Label que contiene el nombre,
    @IBOutlet private weak var titleDetail: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    /// Función que configura los datos de la celda.
    /// - Parameters:
    ///    - data: Objeto de tipo **WonderOfWorld** con información a mostrar.
    func configureCell(data: WonderOfWorld) {
        imgDetail.image = data.imageWonder
        titleDetail.text = data.nameWonder
        imgDetail.layer.cornerRadius = 15
    }
}
