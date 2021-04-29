//
//  ViewController.swift
//  Timer
//
//  Created by aluno on 15/04/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

   
    var selecao: Int = 5
    var pickerSeg = ["1 segundo", "5 segundos", "10 segundos", "15 segundos", "30 segundos", "60 segundos"]
    
    @IBOutlet weak var segundos: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.segundos.delegate = self
        self.segundos.dataSource = self
        
        
        
    }
    
    func numberOfComponents(in segundos: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ segundos: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerSeg.count
    }
    func pickerView(_ segundos: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerSeg[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        selecao = row
        print(row)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let timerViewController = segue.destination as! TimerViewController
        
        if selecao == 0{
            timerViewController.cont = 1
        }
        
        if selecao == 1{
            timerViewController.cont = 5
        }
        if selecao == 2{
            timerViewController.cont = 10
        }
        if selecao == 3{
            timerViewController.cont = 15
        }
        if selecao == 4{
            timerViewController.cont = 30
        }
        if selecao == 5{
            timerViewController.cont = 60
        }
    
    }
    
    
        
        
    
    @IBAction func comecar(_ sender: Any) {
        
        
        
        guard let timerViewInit = self.storyboard?.instantiateViewController(withIdentifier: "timerScreen") else {
            fatalError("não encontrou a tela ")
        }

      
        
        timerViewInit.modalPresentationStyle = .fullScreen

        self.present(timerViewInit, animated: false, completion: nil)
    }
    
    
    
}

