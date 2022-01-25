//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_sceneName___Routing: AnyObject {
    func navigate(to destination: ___VARIABLE_sceneName___.RouteDestination, animated: Bool)
}

protocol ___VARIABLE_sceneName___DataPassing: AnyObject {
    var dataStore: ___VARIABLE_sceneName___DataStorable? { get }
}

final class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___DataPassing {

    private weak var viewController: ___VARIABLE_sceneName___ViewController?
    private(set) weak var dataStore: ___VARIABLE_sceneName___DataStorable?
    
    init(viewController: ___VARIABLE_sceneName___ViewController?, dataStore: ___VARIABLE_sceneName___DataStorable?) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

// MARK: - Routing

extension ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___Routing {

    func navigate(to destination: ___VARIABLE_sceneName___.RouteDestination, animated: Bool) {
        
        //guard let dataStore = dataStore else { return }
        
        let destinationViewController = ___VARIABLE_sceneName___Configurator.create()
        viewController?.navigationController?.pushViewController(destinationViewController, animated: animated)
    }
}
