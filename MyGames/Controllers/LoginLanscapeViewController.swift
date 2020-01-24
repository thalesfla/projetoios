//
//  LoginLanscapeViewController.swift
//  MyGames
//
//  Created by aluno on 11/01/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class LoginLanscapeViewController: UIViewController {

    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        loadOnboarding()
        logoConfigure()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func LoginButtonPressed(_ sender: Any) {
               //creating one object for ViewController that we want to receive data
            
            let storyboard = UIStoryboard(name: "Tab", bundle: nil)
            if let controller = storyboard.instantiateInitialViewController() as? TabBarViewController {
    //             controller.onBoardClose  = { [weak self] in
    //                  self?.messageAlerta()
    //                  }
                DispatchQueue.main.async { [weak self] in
                    self?.present(controller, animated: true, completion: nil)
                }
            }
            
              
           }
        
           override func viewWillAppear(_ animated: Bool) {
                           navigationItem.title = "Login"
           }
           
           func logoConfigure() {
               logoImage.layer.cornerRadius=logoImage.frame.size.width/2
           }
        
        private func messageAlerta() {
            let alert = UIAlertController(title: "Onboard", message: "Onboard Finish", preferredStyle: UIAlertController.Style.alert)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
    
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { context in
            if UIApplication.shared.statusBarOrientation.isLandscape {
                // activate landscape changes
                print("LansScape")
                
                
                
                    
                
            } else {
                // activate portrait changes
                print("Portrait")
                
                
                self.dismiss(animated: true, completion: nil)
                
                
            }
        })
    }
    
    
//        private func loadOnboarding(){
//
//            let storyboard = UIStoryboard(name: "OnbordingStoryboard", bundle: nil)
//            if let controller = storyboard.instantiateInitialViewController() as? OnbordingViewController {
//                 controller.onBoardClose  = { [weak self] in
//                      self?.messageAlerta()
//                      }
//                DispatchQueue.main.async { [weak self] in
//                    self?.present(controller, animated: true, completion: nil)
//                }
//            }
//
//        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
