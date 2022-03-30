//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Mücahit Eren Özkur on 30.03.2022.
//

import Foundation

final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
