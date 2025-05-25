//
//  Presenter.swift
//  MVP_DesignPattern_sample_project
//
//  Created by Sathish Pullagura on 25/05/25.
//
/// -> Presenter is works as mediator between View and Model
/// -> All the business logic's takes place here
/// -> Main difference between MVC and MVP is Presentper it will take responsible for manage service calls and Data binding where as in MVC ViewControll takes all responsible for User interface and Business logic so the coupling between VIEW and Model is stong hence the testing is too complicated because of view lifecycle
/// -> Here in Presenter it is decoupled with UserInterface and having only business logics so it is easy to write mokeData to test the busines logics

import Foundation
import UIKit

class Presenter {
    
    var serverClass: APIService?
    init(server: APIService?) {
        self.serverClass = server
    }
    //self.serverClass = server
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fetchUserList(complition: @escaping ([UserModel]) -> Void) {
        serverClass?.fetchUserList(complitionHandler: { result in
            switch result {
            case .success(let userList):
                print(userList)
                complition(userList)
            case .failure(let error):
                print(error)
            }
        })
        
    }
    
}
