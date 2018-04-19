//
//  Room_List.swift
//  Sensor_Design_App
//
//  Created by Zifan Wang on 4/18/18.
//  Copyright © 2018 Zifan Wang. All rights reserved.
//

import UIKit
//import CoreData

class Room_List: UITableViewController {
    
    // MARK: - Core Data Properties
//    var resultsController: NSFetchedResultsController<RoomList>!
//    let CoreDataStack = coreDataStack()
    
    

    
    // Display the installation guide
    let pdf = "Installation Guide"
    @IBAction func To_Installation_Guide(_ sender: Any) {
        if let url = Bundle.main.url(forResource: pdf, withExtension: "pdf") {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            //self.view.addSubview(webView)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdf
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        // Request
//        let request: NSFetchRequest<RoomList> = RoomList.fetchRequest()
//
//        resultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: CoreDataStack.managedContext, sectionNameKeyPath: nil, cacheName: nil)
//
//        do {
//            try resultsController.performFetch()
//        } catch {
//            print("Perform fetch error: \(error)")
//        }
//
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // return resultsController.sections?[section].objects?.count ?? 0
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell", for: indexPath)

//        // Configure the cell
//        let room = resultsController.object(at: indexPath)
//        cell.textLabel?.text = room.title

        return cell
    }
    
    
    // MARK: - Table view delegate
    // Delete Mark
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completion) in
            // TODO: Delete todo
            completion(true)
        }
        action.image = #imageLiteral(resourceName: "trash")
        action.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let _ = sender as? UIBarButtonItem, let vc = segue.destination as? Room_popup_list {
//            vc.managedContext = CoreDataStack.managedContext
//        }
//    }
    

}
