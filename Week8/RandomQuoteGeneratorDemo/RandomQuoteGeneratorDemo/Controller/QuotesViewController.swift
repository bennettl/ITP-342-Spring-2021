//
//  QuotesViewController.swift
//  RandomQuoteGeneratorDemo
//
//  Created by Lee Bennett on 3/10/21.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var quotesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func editDidTapped(_ sender: UIBarButtonItem) {
        quotesTableView.isEditing = !quotesTableView.isEditing
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            // Delete the quote from the service
            QuoteService.shared.remove(at: indexPath.row)
            
            // Perform the animation to remove the cell from the tableview
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        quotesTableView.reloadData()
//    }
    
    // 1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! NewQuoteViewController
        
        // 2
        viewController.aRandomNumber = 10
        viewController.completionHandler = { quote in
            
            // 5
            self.quotesTableView.reloadData()
        }
        
    }
    
    
    // UITableViewDataSource - inform the tableview of the data to display
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1_000_000
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        // tableview is going to look at the "reuse pool" for eligble cells for reuse
//            // No -> create a brand new UITableViewCell
//            // yes -> reuse it!
//        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell")!
//
//        cell.textLabel?.text = "Hello | section: \(indexPath.section) row: \(indexPath.row)"
//        return cell
//    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteService.shared.numberOfQuotes()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableview is going to look at the "reuse pool" for eligble cells for reuse
            // No -> create a brand new UITableViewCell
            // yes -> reuse it!
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell")!
        let quote = QuoteService.shared.get(at: indexPath.row)
        
        cell.textLabel?.text = quote.message
        cell.detailTextLabel?.text = quote.author
        
        return cell
    }
    
    // UITableViewDelegate - inform the tableview on what to do when user interacts with tableview
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(#function)")
    }


}
