//
//  TaskDetailTableViewController.swift
//  Task
//
//  Created by Kamil Wrobel on 8/29/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {
    
    //MARK: - Properties
    var task : Task?
    var dueDateValue : Date?
    

    //MARK: - Outlets
    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet var dueDatePicker: UIDatePicker!
    
    
    
    //MARK: - LifeCycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        dueDateTextField.inputView = dueDatePicker
        updateViews()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    //MARK: - Methods
    func updateTask(){
        
        
    }
    
    func updateViews() {
        guard let task = task else {return}
        taskNameTextField.text = task.name
        notesTextView.text = task.notes
        //FIXME: Keep an eye on this:
        dueDateTextField.text = "\(task.due)"

        
    }
    

    //MARK: - Actions
    @IBAction func cancelButtonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        let date = dueDatePicker.date
        dueDateTextField.text = date.stringValue()
    }
    
    //FIXME: not resigning the view
    @IBAction func userTappedView(_ sender: UITapGestureRecognizer) {
        self.resignFirstResponder()
    }
    
    
    
  
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = taskNameTextField.text else {return}
        let notes = notesTextView.text
        //FIXME: were taking date feom dueDateProperty, this is not set up yet and its optional
        let date = dueDateValue
        
        //FIXME: read the section SetuUP TASKDETAILTVC under #3 they talking about updateTask() function - not sure what that is
        if let task = task {
            // update
            TaskController.shared.update(task: task, name: name, notes: notes, due: date)
        } else {
            //create new one
            TaskController.shared.add(taskWithName: name, notes: notes, due: date)
        }
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
