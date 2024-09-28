//
//  ViewController.swift
//  APIUIState
//
//  Created by PropertyShare on 28/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: Container1Controller?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        controller?.setView()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        controller?.setView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
//
        if let childViewController = segue.destination as? Container1Controller {
//            childViewController.view.translatesAutoresizingMaskIntoConstraints = false
            
            controller = childViewController
        }
//        if let childViewController = segue.destination as? APPContainerViewController {
//            childViewController.view.translatesAutoresizingMaskIntoConstraints = false
//        }
    }


}

