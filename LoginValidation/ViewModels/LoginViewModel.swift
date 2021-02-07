//
//  LoginViewModel.swift
//  LoginValidation
//
//  Created by 송우진 on 2021/02/08.
//

import Foundation
import RxSwift
import RxCocoa

class LoginViewModel {
    // MARK: - Properties
    let idPublishSubjects = PublishSubject<String>()
    let pwPublishSubjects = PublishSubject<String>()
    
    // MARK: - Helpers
    func isValid() -> Observable<Bool> {
        Observable
            .combineLatest(idPublishSubjects.asObservable(), pwPublishSubjects.asObservable())
            .map{ id, pw in
                return id.count > 3 && pw.count > 3
            }
    }
    
}
