//
//  BankService.swift
//  MVP-Swift
//
//  Created by Melih ÖZDEN on 18.01.2022.
//

import Foundation

class BankService{
    
    func getBankInformation(bankName:String?, callBack:(Bank?) -> Void){
        
        let banks = [Bank(bankName: "Halkbank", bankDesc: "Halkbank A.Ş"),
                     Bank(bankName: "Akbank", bankDesc: "Akbank A.Ş"),
                     Bank(bankName: "Vakifbank", bankDesc: "Vakifbank A.Ş"),
                     Bank(bankName: "Isbank", bankDesc: "İş Bankası A.Ş"),
                     Bank(bankName: "Garantibank", bankDesc: "Garanti Bankası A.Ş"),
                     Bank(bankName: "Ziraatbank", bankDesc: "Ziraat Bank A.Ş"),
        ]
        
        if let foundBank = banks.first(where: {$0.bankName == bankName}){
            callBack(foundBank)
        }
        else{
            callBack(nil)
        }
    }
}
