//
//  ___FILEHEADER___
//  Created by Christian Contreras
//
import Foundation
import Combine

protocol ___VARIABLE_productName:identifier___ViewModelProtocol: ObservableObject {
}

final class ___VARIABLE_productName:identifier___ViewModel: ObservableObject, ___VARIABLE_productName:identifier___ViewModelProtocol, I___VARIABLE_productName:identifier___FlowStateProtocol {
    // MARK: - Properties
    @Published private(set) var state: LoadableState<___VARIABLE_productName:identifier___> = .idle
    @Published var activeLink: ___VARIABLE_productName:identifier___NavigationLink?
    private let useCase: ___VARIABLE_productName:identifier___UseCase
        
    init(useCase: ___VARIABLE_productName:identifier___UseCase) {
        self.useCase = useCase
    }
    
    // MARK: - Public
    /*func exampleInvocation() {
        state = .loading
        
        useCase
            .execute()
            .delay(for: 1.5, scheduler: RunLoop.main)
            .assign(to: &$state)
    }*/
}
