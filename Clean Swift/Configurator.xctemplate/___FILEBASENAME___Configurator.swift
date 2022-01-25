//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

struct ___VARIABLE_sceneName___Configurator {
    
    static func create() -> ___VARIABLE_sceneName___ViewController {
        let viewController = ___VARIABLE_sceneName___ViewController()  // replace with proper instantiation
        let presenter = ___VARIABLE_sceneName___Presenter(viewController: viewController)
        let worker = ___VARIABLE_sceneName___WorkerImpl()
        let interactor = ___VARIABLE_sceneName___Interactor(presenter: presenter, worker: worker)
        let router = ___VARIABLE_sceneName___Router(viewController: viewController, dataStore: interactor)
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
