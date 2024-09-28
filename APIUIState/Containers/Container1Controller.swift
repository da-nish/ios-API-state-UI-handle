//
//  Container1Controller.swift
//  APIUIState
//
//  Created by PropertyShare on 28/09/24.
//

import UIKit

class Container1Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //we can set here also instead setting it from prepare segue
        view.translatesAutoresizingMaskIntoConstraints = false
        showLoading()
        executeStates()
    }
    

    
    @IBOutlet var loadingView: AppLoadingState!
    @IBOutlet var emptyView: AppEmptyState!
    @IBOutlet var errorView: AppErrorState!
    @IBOutlet var successView: AppSuccessState!
    
  
    func setView(){
        print("setting view")
    }
    
    func executeStates(){
//        showEmptyState()
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            print("Tasking is running")
            self.showLoading()
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+4){
            print("Tasking is running")
            self.showError(message: "sdf")
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+6){
            print("Tasking is running")
            self.showEmptyState()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+8){
            print("Tasking is running")
            self.showData()
        }
        
    }
    
    func showLoading() {
        loadingView.isHidden = false
        errorView.isHidden = true
        emptyView.isHidden = true
        successView.isHidden = true
    }

    func showData() {
        loadingView.isHidden = true
        errorView.isHidden = true
        emptyView.isHidden = true
        successView.isHidden = false
    }

    func showError(message: String) {
        loadingView.isHidden = true
        emptyView.isHidden = true
        successView.isHidden = true
        errorView.isHidden = false
    }

    func showEmptyState() {
        loadingView.isHidden = true
        successView.isHidden = true
        errorView.isHidden = true
        emptyView.isHidden = false
    }
    


}
