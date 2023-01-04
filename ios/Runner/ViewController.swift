//
//  ViewController.swift
//  Runner
//
//  Created by iMac on 2023/01/03.
//


import UIKit
import RxSwift

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Selectors
    @objc func handleLogin() {

        
        print("aaaㅁㅁㅁㅁaa")
    }
    
    //MARK: - Helpers
    func configureUI() {
        view.addSubview(loginButton)
        loginButton.anchor( left: view.leftAnchor,bottom: view.bottomAnchor,right: view.rightAnchor ,paddingLeft: 40, paddingRight: 40)
        
    }

    
}
