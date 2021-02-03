//
//  MenuViewController.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 3.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func dismissButtonMenu(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
