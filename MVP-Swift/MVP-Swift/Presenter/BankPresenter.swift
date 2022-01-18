//
//  BankPresenter.swift
//  MVP-Swift
//
//  Created by Melih ÖZDEN on 18.01.2022.
//

import Foundation

protocol BankViewDelegate {
    func showBankDescription(bankDesc : String)
}

class BankPresenter{
    
    private let bankService:BankService
    private var bankViewDelegate : BankViewDelegate?
    
    init(bankService : BankService) {
        self.bankService = bankService
    }
    
    func setViewDelegate(bankViewDelegate : BankViewDelegate?){
        self.bankViewDelegate = bankViewDelegate
    }
    
    func selectedBankName(bankName : String){
        bankService.getBankInformation(bankName: bankName) { bank in
            if let bank = bank{
                self.bankViewDelegate?.showBankDescription(bankDesc: bank.bankDesc ?? "")
            }
        }
    }
    
}
