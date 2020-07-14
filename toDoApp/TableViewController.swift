//
//  TableViewController.swift
//  toDoApp
//
//  Created by Maddy Wang on 7/13/20.
//  Copyright © 2020 Maddy Wang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    func createToDos() -> [toDo] {

      let swift = toDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = toDo()
      dog.name = "Walk the Dog"

      return [swift, dog]
    }
    
    var toDos : [toDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }

    // MARK: - Table view data source

 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
//    override funcnumberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
        addVC.previousVC = self
    }
    }
}
