//
//  ToDoViewController.swift
//  ToDoList
//
//  Created by user198727 on 5/6/23.
//

import UIKit

class ToDoViewController: UIViewController {
    
    var selectedTodo :TodoEntity!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedTodo.title
        statusLabel.text = selectedTodo.status
        descriptionLabel.text = selectedTodo.description
        dateLabel.text = selectedTodo.date
        timeLabel.text = selectedTodo.time
        priorityLabel.text = selectedTodo.priority
        
    
        titleLabel.minimumScaleFactor = 0.5
        titleLabel.adjustsFontSizeToFitWidth = true;
        
        if selectedTodo.status == "Active" {
            titleLabel.backgroundColor = UIColor.systemGray
        }
        
        if  selectedTodo.status == "Completed"  {
            titleLabel.backgroundColor = UIColor.green
        }
        
        if  selectedTodo.status == "Canceled"  {
            titleLabel.backgroundColor = UIColor.red
        }


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

}
