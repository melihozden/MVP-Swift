//
//  ViewController.swift
//  MVP-Swift
//
//  Created by Melih ÖZDEN on 18.01.2022.
//

import UIKit

class ViewController: UIViewController,BankViewDelegate {
    
    @IBOutlet weak var bankNameLabel: UILabel!
    private let bankPresenter = BankPresenter(bankService: BankService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bankPresenter.setViewDelegate(bankViewDelegate: self)
    }
   
    @IBAction func halkbankButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Halkbank")
    }
    
    @IBAction func akbankButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Akbank")
    }
    
    @IBAction func vakifbankButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Vakifbank")
    }
    
    @IBAction func isbankasiButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Isbank")
    }
    
    @IBAction func garantibankasiButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Garantibank")
    }
    
    @IBAction func ziraatbankasiButtonTapped(_ sender: Any) {
        bankPresenter.selectedBankName(bankName: "Ziraatbank")
    }
    
    func showBankDescription(bankDesc: String) {
        bankNameLabel.text = bankDesc
    }
}

