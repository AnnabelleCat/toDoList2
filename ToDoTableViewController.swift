//
//  ToDoTableViewController.swift
//  toDoList2
//
//  Created by Apple on 6/24/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    var toDos : [ToDo] = []
    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return [swift, dog]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }


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

    /*

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
