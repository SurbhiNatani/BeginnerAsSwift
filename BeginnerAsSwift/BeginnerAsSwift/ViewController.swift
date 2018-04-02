//
//  ViewController.swift
//  BeginnerAsSwift
//
//  Created by ionic on 02/04/18.
//  Copyright © 2018 Claritus Consulting. All rights reserved.
//

import UIKit

@objcMembers
class ViewController: UIViewController {
    
    var loginBtn:UIButton=UIButton()
    @IBOutlet weak var loginBtnOutlet: UIButton!
    @IBOutlet weak var signUpBtnOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(statusManager), name: .flagsChanged, object: Network.reachability)
        updateUserInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Button Methods
    @IBAction func loginBtnAction(_ sender: Any) {
        
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
    }
    
    // MARK: Network Methods
    func updateUserInterface() {
        guard let status = Network.reachability?.status else { return }
        switch status {
        case .unreachable:
            view.backgroundColor = .red
        case .wifi:
            view.backgroundColor = .green
        case .wwan:
            view.backgroundColor = .yellow
        }
        print("Reachability Summary")
        print("Status:", status)
        print("HostName:", Network.reachability?.hostname ?? "nil")
        print("Reachable:", Network.reachability?.isReachable ?? "nil")
        print("Wifi:", Network.reachability?.isReachableViaWiFi ?? "nil")
    }
    func statusManager(_ notification: Notification) {
        updateUserInterface()
    }


}

