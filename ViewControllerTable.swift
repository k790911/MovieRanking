//
//  ViewControllerTable.swift
//  MovieRanking
//
//  Created by 김재훈 on 2022/03/12.
//

import UIKit

class ViewControllerTable: UIViewController, UITableViewDelegate {

    var datePicked: String = "00000000"
    
    @IBOutlet var myTableView: UITableView!
    @IBOutlet var datePickerTable: UIDatePicker!
    @IBOutlet var labelTable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myTableView.delegate = self
        myTableView.dataSource = self
        
        labelTable.text = "\(datePicked) 기준 영화 순위"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewControllerTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        return cell
    }
    
    
}
