//
//  ViewController.swift
//  todo
//
//  Created by Ayako Nago on 2018/11/02.
//  Copyright © 2018年 Ayako Nago. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    
    
    
    var todoListArray = [String]()
    
    var saveData : UserDefaults = UserDefaults.standard
    
    @IBOutlet var table : UITableView!

    override func viewDidLoad() { 
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Did")
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            todoListArray = saveData.object(forKey: "TodoList") as! [String]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // todoListArray = saveData.object(forKey: "todoList") as! [String]
        if saveData.object(forKey: "todoList") != nil {
            todoListArray = saveData.object(forKey: "todoList") as! [String]
        }
        table.reloadData()
        print(todoListArray)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        TodoCell.textLabel!.text = todoListArray[indexPath.row]
        return TodoCell
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

