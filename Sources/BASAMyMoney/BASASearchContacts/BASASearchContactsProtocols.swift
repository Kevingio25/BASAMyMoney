//
//  BSSASearchContactsProtocols.swift
//  BSSASearchContacts
//
//  Created Branchbit on 12/05/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol BASASearchContactsWireframeProtocol: class {

}
//MARK: Presenter -
protocol BASASearchContactsPresenterProtocol: class {

}

//MARK: Interactor -
protocol BASASearchContactsInteractorProtocol: class {

  var presenter: BASASearchContactsPresenterProtocol?  { get set }
}

//MARK: View -
protocol BASASearchContactsViewProtocol: class {

  var presenter: BASASearchContactsPresenterProtocol?  { get set }
}
