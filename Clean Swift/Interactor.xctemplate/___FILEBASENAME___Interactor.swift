//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_sceneName___Interaction: AnyObject {
    func process(request: ___VARIABLE_sceneName___.Request)
}

protocol ___VARIABLE_sceneName___DataStorable: AnyObject {
    
}

final class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___DataStorable {

    private let presenter: ___VARIABLE_sceneName___Presentation
    private let worker: ___VARIABLE_sceneName___Worker

    init(presenter: ___VARIABLE_sceneName___Presentation, worker: ___VARIABLE_sceneName___Worker) {
        self.presenter = presenter
        self.worker = worker
    }
}

// MARK: - BusinessLogic

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___Interaction {

    func process(request: ___VARIABLE_sceneName___.Request) {
        switch request {
        case .viewDidLoad:
            viewDidLoad()
        }
    }
}

// MARK: - Private

private extension ___VARIABLE_sceneName___Interactor {

    func viewDidLoad() {
        //...
    }
}
