//
//  model.swift
//  memo
//
//  Created by 203a13 on 2022/06/09.
//

import Foundation

class Memo {
    var content : String
    var insertDate : Date
    
    init(content : String){
        self.content = content
        insertDate = Date()
    }
    static var dummyMemoList = [
    Memo(content: "첫번째 메모"),
    Memo(content: "두번째 메모")
    ]
    
}
