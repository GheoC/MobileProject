//
//  ViewController.swift
//  ToDoList
//
//  Created by user198727 on 5/5/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var user: User = User()


    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var errorTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        usernameTextField.layer.cornerRadius = 22
        usernameTextField.layer.borderColor = UIColor.systemRed.cgColor
        usernameTextField.layer.borderWidth = 2.0
        passwordTextField.layer.cornerRadius = 22
        passwordTextField.layer.borderColor = UIColor.systemRed.cgColor
        passwordTextField.layer.borderWidth = 2.0
        signInButton.layer.cornerRadius = 22
        
    }

    @IBAction func signIn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let todoListTableViewController = storyboard.instantiateViewController(withIdentifier: "todoListTableViewController")
        
        if (usernameTextField.text == "PAM" && passwordTextField.text == "PAM") {
            usernameTextField.text = ""
            passwordTextField.text = ""
            errorTextField.text = ""
            
            // varianta 1: folosim UINavigationController care "imbraca" programmatically viewControllerul "todoListTableViewController"
            // altfel spun folosim UINavigationController doar din viewul 2;
            // vroiam sa separ viewul de login de gruparea de viewuri TodoListTableViewController si ToDOViewController
            // adaptare dupa tutorialul acesta: https://youtu.be/Ime8NK5NLgc
            let navigationController = UINavigationController(rootViewController: todoListTableViewController)
            self.present(navigationController, animated: true, completion: nil)
            
            // varianta 2: varianta fara UINavigationController; imi place mai mult cum arata
            //self.present(todoListTableViewController, animated: true, completion: nil)
        } else
        {
            errorTextField.text = "Invalid credentials!"
        }
    }
}
