//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Mücahit Eren Özkur on 30.03.2022.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private var user: User?
    
    private init() { }
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "demo@gmail.com" && password == "password" {
                self?.user = User(firstName: "Mücahit Eren", lastName: "ÖZKUR", email: "demo@gmail.com", age: 23)
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        }
        
    }
    
    func getLoggedInUser() -> User {
        guard let user = user else {
            return User(firstName: "Unknown", lastName: "Unknown", email: "Unknown", age: 0)
        }
        return user
    }
}
