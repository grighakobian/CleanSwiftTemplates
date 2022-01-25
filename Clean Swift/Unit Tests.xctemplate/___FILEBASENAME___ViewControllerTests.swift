//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {

    // MARK: - Subject under test

    var sut: ___VARIABLE_sceneName___ViewController!
    var interactor: ___VARIABLE_sceneName___InteractorSpy!
    var router: ___VARIABLE_sceneName___RouterSpy!
    var window: UIWindow!

    // MARK: - Test lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: - Test setup

    func setup___VARIABLE_sceneName___ViewController() {
        sut = ___VARIABLE_sceneName___ViewController()  // replace with proper instantiation
        interactor = ___VARIABLE_sceneName___InteractorSpy()
        router = ___VARIABLE_sceneName___RouterSpy()
        sut.interactor = interactor
        sut.router = router
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: - Test doubles

    class ___VARIABLE_sceneName___InteractorSpy: ___VARIABLE_sceneName___Interaction {

        var processCalled = false

        func process(request: ___VARIABLE_sceneName___.Request) {
            processCalled = true
        }
    }

    class ___VARIABLE_sceneName___RouterSpy: ___VARIABLE_sceneName___DataPassing, ___VARIABLE_sceneName___Routing {

        let dataStore: ___VARIABLE_sceneName___DataStorable? = nil

        func navigate(to destination: ___VARIABLE_sceneName___.RouteDestination, animated: Bool) {
            //...
        }
    }

    // MARK: - Tests

    func testShouldDoSomethingWhenViewIsLoaded() {
        // Given
        //...

        // When
        loadView()

        // Then
        XCTAssertTrue(interactor.processCalled, "viewDidLoad() should ask the interactor to do something")
    }

    func testDisplaySomething() {
        // Given
        let viewModel = ___VARIABLE_sceneName___.ViewModel.presentData([""])

        // When
        loadView()
        sut.display(viewModel: viewModel)

        // Then
        //XCTAssertEqual(sut.nameTextField.text, "", "display(viewModel:) should update the name text field")
    }
}
