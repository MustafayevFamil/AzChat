//
//  SignUpViewController.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 29.01.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var txtFirstName: DTTextField!
    @IBOutlet weak var txtLastName: DTTextField!
    @IBOutlet weak var txtEmail: DTTextField!
    @IBOutlet weak var txtPassword: DTTextField!
    @IBOutlet weak var txtConfirmPassword: DTTextField!
    
    let firstNameMessage        = NSLocalizedString("First name is required.", comment: "")
    let lastNameMessage         = NSLocalizedString("Last name is required.", comment: "")
    let emailMessage            = NSLocalizedString("Email is required.", comment: "")
    let passwordMessage         = NSLocalizedString("Password is required.", comment: "")
    let confirmPasswordMessage  = NSLocalizedString("Confirm password is required.", comment: "")
    let mismatchPasswordMessage = NSLocalizedString("Password and Confirm password are not matching.", comment: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBtnSubmitClicked(_ sender: Any) {
        
        guard validateData() else { return }
        
        let alert = UIAlertController(title: "Congratulations", message: "Your registration is successful!!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (cancel) in
            DispatchQueue.main.async { self.clearForm() }
            self.performSegue(withIdentifier: "segiTabBar", sender: self)
        }))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func clearForm() {
        self.txtFirstName.text       = ""
        self.txtLastName.text        = ""
        self.txtEmail.text           = ""
        self.txtConfirmPassword.text = ""
        self.txtPassword.text        = ""
    }
}

