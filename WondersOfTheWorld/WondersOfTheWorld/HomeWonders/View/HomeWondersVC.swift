//
//  HomeWondersVC.swift
//  WondersOfTheWorld
//
//  Created by KARILU GUTIERREZ VICENTE on 27/09/23.
//  
//
import UIKit
/// Clase que contiene la vista.
final class HomeWondersVC: UIViewController {
    /// Arreglo con la información.
    var wonderOfWorld: [WonderOfWorld]?
    /// Tabla para mostrar la lista con la información.
    @IBOutlet weak var tvListWonders: UITableView!
    /// refrencia al presenter.
    var presenter: HomeWondersPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MaravillasDelMundo".localized
        navigationController?.navigationBar.prefersLargeTitles = true
        tvListWonders.delegate = self
        tvListWonders.dataSource = self
        tvListWonders.separatorStyle = .none
        tvListWonders.register(UINib(nibName: "ListWonderTableViewCell", bundle: nil), forCellReuseIdentifier: "ListWonderTableViewCell")
    }
}
extension HomeWondersVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.wonderOfWorld?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tvListWonders.dequeueReusableCell(withIdentifier: "ListWonderTableViewCell", for: indexPath) as? ListWonderTableViewCell else { return UITableViewCell() }
        guard let wonderOfWorlds = presenter?.wonderOfWorld?[indexPath.row] else { return UITableViewCell() }
        cell.configureCell(data: wonderOfWorlds)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let wonderOfWorlds = presenter?.wonderOfWorld?[indexPath.row] else { return }
        presenter?.wonderOfWorld(wonder: wonderOfWorlds)
    }
}
///Protocolo para recibir datos de presenter.
extension HomeWondersVC: HomeWondersViewProtocol {
}
