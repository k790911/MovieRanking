//
//  ViewControllerCollection.swift
//  MovieRanking
//
//  Created by 김재훈 on 2022/03/12.
//

import UIKit

class ViewControllerCollection: UIViewController {

    @IBOutlet var myCollectionView: UICollectionView!
    @IBOutlet var datePickerCollection: UIDatePicker!
    @IBOutlet var labelCollection: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeDatePickerForCollection(_ sender: UIDatePicker) {
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
