//
//  Room_popup_list.swift
//  Sensor_Design_App
//
//  Created by Zifan Wang on 4/18/18.
//  Copyright © 2018 Zifan Wang. All rights reserved.
//

import UIKit
// import CoreData

class Room_popup_list: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - Core Data Properties
    // var managedContext: NSManagedObjectContext!
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var PickerView: UIPickerView!
    
    // Define picker input data
    let rooms = ["Living Room", "Main Bedroom", "Kids Bedroom", "Guest Bedroom", "Kitchen", "Bathroom"]
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // The bumber of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return rooms.count
    }
    // The data to return for the row and component(column) tha's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return rooms[row]
    }
    // Set the label to data
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = rooms[row]
    }
    
    // Save data to the room list and back to room list
    @IBAction func SaveRoom(_ sender: Any) {
//        if label.text != nil {
//            let room = RoomList(context: managedContext)
//            room.title = label.text
//
//            do {
//                try managedContext.save()
//                dismiss(animated: true)
//            } catch {
//                print("Error saving todo: \(error)")
//            }
//        } else {
//            print("Error in load text")
//        }
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Connect data:
        self.PickerView.delegate = self
        self.PickerView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
