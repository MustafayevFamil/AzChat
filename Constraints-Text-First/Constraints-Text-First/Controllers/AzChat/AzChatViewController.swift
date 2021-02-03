//
//  AzChatViewController.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 2.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class AzChatViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var menuButton: UIButton!
    fileprivate lazy var presentationAnimator = GuillotineTransitionAnimation()

    var index: Int = 0
    
    let imageData = ["Chloe", "Daniel", "Jack", "John", "Jonathan", "Mark", "Maykl", "Chloe", "Daniel", "Jack", "John", "Jonathan", "Mark", "Maykl"]
    let messaje = ["First name is required.",
                   "Last name is required.",
                   "Email is required.",
                   "Password is required.",
                   "Password is required.",
                   "Confirm password is required.",
                   "Password and Confirm password are not matching.",
                   "Password and Confirm password are not matching.",
                   "Email is required.",
                   "Password is required.",
                   "Password is required.",
                   "Confirm password is required.",
                   "Password is required.",
                   "Password and Confirm password are not matching.",]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openMenuButton(_ sender: UIButton) {
        let menuViewController = storyboard!.instantiateViewController(withIdentifier: "MenuViewController")
        menuViewController.modalPresentationStyle = .custom
        menuViewController.transitioningDelegate = self
        
        presentationAnimator.animationDelegate = menuViewController as? GuillotineAnimationDelegate
        presentationAnimator.supportView = navigationController!.navigationBar
        presentationAnimator.presentButton = sender
        
        
        present(menuViewController, animated: true, completion: nil)
    }
}
extension AzChatViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .presentation
        return presentationAnimator
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .dismissal
        return presentationAnimator
    }
}
