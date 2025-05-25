//
//  ViewController.swift
//  MVP_DesignPattern_sample_project
//
//  Created by Sathish Pullagura on 25/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter: Presenter?
    var server: APIService?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.server = APIService()
        self.presenter = Presenter(server: self.server)
        self.showUserList()
        // Do any additional setup after loading the view.
    }
    
    func showUserList() {
        self.presenter?.fetchUserList(complition: { userList in
            print(userList)
        })
    }


}

