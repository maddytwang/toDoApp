//
//  AddToDoViewController.swift
//  toDoApp
//
//  Created by Maddy Wang on 7/14/20.
//  Copyright © 2020 Maddy Wang. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = TableViewController()
    
    @IBOutlet weak var addToDo: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newToDo(_ sender: UIButton) {
        let ToDo = toDo()
        
        if let addToDoText = addToDo.text {
            ToDo.name = addToDoText
            ToDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(ToDo)
        previousVC.tableView.reloadData()
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let addVC = segue.destination as? AddToDoViewController {
//            addVC.previousVC = self
    }

}
