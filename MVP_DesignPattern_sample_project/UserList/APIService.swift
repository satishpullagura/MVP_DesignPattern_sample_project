//
//  APIService.swift
//  MVP_DesignPattern_sample_project
//
//  Created by Sathish Pullagura on 25/05/25.
//

import Foundation
class ServerError: Error {
    var errorMessage: String?
    init(_ errorMessage: String? = nil) {
        self.errorMessage = errorMessage
    }
}


class APIService {
    func fetchUserList(complitionHandler: @escaping(Result<[UserModel], Error>) -> Void) {
        let userList = [
            UserModel(name: "Sathish", email: "sathish@gmail.com"),
            UserModel(name: "Sudheer", email: "sudheer@gmail.com")
        ]
        if userList.count > 0 {
            complitionHandler(.success(userList))
        }
        else {
            let error = ServerError("Failed to fetch user list")
            complitionHandler(.failure(error))
        }
        
    }
}
