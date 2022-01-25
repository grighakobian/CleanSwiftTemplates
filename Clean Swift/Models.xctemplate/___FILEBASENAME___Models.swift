//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

enum ___VARIABLE_sceneName___ {

    // MARK: - Interactor

    enum Request {
        case viewDidLoad
    }
    
    // MARK: - Presenter
    
    enum Response {
        case failure(Error)
        case data([Any])
    }
    
    // MARK: - View Controller
    
    enum ViewModel {
        case presentError(Error)
        case presentData([Any])
    }
    
    // MARK: - Router
    
    enum RouteDestination {
        
    }
}
