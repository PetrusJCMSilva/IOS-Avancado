//
//  TimerViewController.swift
//  Timer
//
//  Created by aluno on 26/04/21.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var visor: UILabel!
    var cont: Int = 5
    weak var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visor.text = String(cont)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
       
    
    }
    
    override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)

            timer?.invalidate()
        }
    
    
    @objc func fireTimer() {
        cont-=1
        visor.text = String(cont)
        if cont == 0{
            
            dismiss(animated: false, completion: nil)
            
        }
    }

    @IBAction func encerrar(_ sender: Any) {
   
        dismiss(animated: false, completion: nil)
    
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
