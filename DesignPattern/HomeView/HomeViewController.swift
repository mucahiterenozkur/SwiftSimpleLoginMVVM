//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Mücahit Eren Özkur on 30.03.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupBinders()
        viewModel.getLoggedInUser()
    }
    
    private func setupBinders() {
        viewModel.welcomeMessage.bind { [weak self] message in
            self?.welcomeLbl.text = message
        }
    }
    

}
