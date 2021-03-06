//
//  BSSASearchContactsRouter.swift
//  BSSASearchContacts
//
//  Created Branchbit on 12/05/21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

open class BASASearchContactsRouter: BASASearchContactsWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    public static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = BASASearchContactsViewController(nibName: "BASASearchContactsViewController", bundle: Bundle.local)
        let interactor = BASASearchContactsInteractor()
        let router = BASASearchContactsRouter()
        let presenter = BASASearchContactsPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
