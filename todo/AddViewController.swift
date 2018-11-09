//
//  AddViewController.swift
//  todo
//
//  Created by Ayako Nago on 2018/11/02.
//  Copyright © 2018年 Ayako Nago. All rights reserved.
//

import UIKit

class AddViewController: UIViewController{
    
    var todoListArray = [String]()
    
    var saveData : UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var addTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            todoListArray = saveData.object(forKey: "TodoList") as! [String]
        }
        
        
    }
    
    @IBAction func save(_ sender: Any) {
        
        todoListArray.append(addTextField.text!)
        
        addTextField.text=""
        
        saveData.set(todoListArray, forKey: "todoList")
        
        self.dismiss(animated: true, completion: nil)
        
        print(todoListArray)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
