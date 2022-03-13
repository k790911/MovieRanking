//
//  ViewControllerTable.swift
//  MovieRanking
//
//  Created by 김재훈 on 2022/03/12.
//

import UIKit

class ViewControllerTable: UIViewController, UITableViewDelegate {
    
    var datePicked: String = "20210310"
    var movieURL: String { return "https://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=e06b39ec9f04a2c50b9db8057ab7cd56&targetDt=\(datePicked)"
    }
    var movieData: MovieData?
    
    @IBOutlet var myTableView: UITableView!
    @IBOutlet var datePickerTable: UIDatePicker!
    @IBOutlet var labelTable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myTableView.delegate = self
        myTableView.dataSource = self
        
        labelTable.text = "\(datePicked) 기준 영화 순위"
        
        getData()
        
    }
    
    func getData() {
        guard let url = URL(string: movieURL) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error != nil {
                print(error!)
                return
            }
            guard let jsonData = data else { return }
            
            do {
                let decodedData = try JSONDecoder().decode(MovieData.self, from: jsonData)
                self.movieData = decodedData
                DispatchQueue.main.async {
                    // 테이블 리로드 데이터는 메인쓰레드에서 처리 해야함.
                    // 하지만 본 클로져는 백그라운드 쓰레드(네트워크 처리) 이므로 메인쓰레드로 올려야 함.
                    self.myTableView.reloadData()
                }
            } catch {
                print(error)
            }
            
        }
        task.resume()
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
        return movieData?.boxOfficeResult.dailyBoxOfficeList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.textLabel?.text = movieData?.boxOfficeResult.dailyBoxOfficeList[indexPath.row].movieNm
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
