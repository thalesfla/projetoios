//
//  TabBarViewController.swift
//  MyGames
//
//  Created by Gilmario Pereira dos Santos on 28/12/19.
//  Copyright © 2019 CESAR School. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {


    override func viewDidLoad() {
        super.viewDidLoad()

//        let storyboard = UIStoryboard(name: "OnbordingStoryboard", bundle: nil)
//        if let controller = storyboard.instantiateInitialViewController() as? OnbordingViewController {
//             controller.onBoardClose  = { [weak self] in
//                  self?.messageAlerta()
//                  }
//            DispatchQueue.main.async { [weak self] in
//                self?.present(controller, animated: true, completion: nil)
//            }
//        }
        
        
    }
    

    
    
    private func messageAlerta() {
               let alert = UIAlertController(title: "Onboard", message: "Onboard Finish", preferredStyle: UIAlertController.Style.alert)
                      alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
               self.present(alert, animated: true, completion: nil)
               
           }

}
