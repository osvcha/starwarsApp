//
//  SplashViewController.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 09/12/2020.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let SEGUE_TO_TABBAR = "SEGUE_FROM_MAIN_TO_TABBAR"
    
    @IBOutlet var actIndicator: UIActivityIndicatorView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actIndicator?.startAnimating()
        
        navigateNext()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
    private func navigateNext() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in

            let storyboardMain = UIStoryboard(name: "Main",
                                              bundle: nil)
            
            let nextViewcontroller = storyboardMain.instantiateViewController(withIdentifier: "TabBarViewController")
            
            self?.navigationController?.setViewControllers([nextViewcontroller],
                                                               animated: true)
        }
    }
    
}
