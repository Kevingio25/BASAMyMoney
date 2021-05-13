//
//  Bundle.swift
//  BASASearchContacts
//
//  Created by Branchbit on 13/05/21.
//


import Foundation

extension Bundle {
    //la constante local es la inicialización de nuestro router
    static let local = Bundle.init(for: BASASearchContactsRouter.self)
}
