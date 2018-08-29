//
//  TaskDetailTableViewController.swift
//  Task
//
//  Created by Kamil Wrobel on 8/29/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func cancelButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
