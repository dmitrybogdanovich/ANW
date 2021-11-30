//
//  SSVC.swift
//  StudentList
//
//  Created by Дмитрий Богданович on 29.11.21.
//


import UIKit

class SSVC: UIViewController {
    
    @IBOutlet weak var selectedButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func selectedButtonTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
    
}
    var setStudentList = Set<String>()
    var arrayStudentList: [String] = []

extension SSVC: ViewControllerDelegate {
    func didSelectStudent(_ student: String) {
        setStudentList.insert(student)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
}

extension SSVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        setStudentList.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if setStudentList.isEmpty {
            return nil
        } else {
        return "Кол-во: \(arrayStudentList.count)"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        arrayStudentList = Array(setStudentList).sorted()
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell1", for: indexPath) as! StudentCell1
        cell.labelName.text = arrayStudentList[indexPath.row]

        return cell
    }


}

