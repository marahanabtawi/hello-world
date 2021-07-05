//
//  ViewController.swift
//  secondApp
//
//  Created by marah anabtawi on 3/25/21.
//  Copyright © 2021 marah anabtawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item: Item?

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
        let isInAddMode = presentingViewController is UINavigationController
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
            
        }
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item{
            nameTextField.text = item.name
        }
        
    }


}









