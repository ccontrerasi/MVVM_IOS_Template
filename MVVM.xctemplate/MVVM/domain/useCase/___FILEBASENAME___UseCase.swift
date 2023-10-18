//
//  ___FILEHEADER___
//
import Foundation
import Combine

protocol I___VARIABLE_productName:identifier___UseCase {
    func execute(name: String?) -> AnyPublisher<LoadableState<___VARIABLE_productName:identifier___>, Never>
}

class ___VARIABLE_productName:identifier___UseCase: I___VARIABLE_productName:identifier___UseCase {
    
    private let repository: I___VARIABLE_productName:identifier___Repository
    
    // MARK: init
    func execute(name: String? = nil) -> AnyPublisher<LoadableState<___VARIABLE_productName:identifier___>, Never> {
        // TODO: Example to calling to the service
        return repository.fetch(name: name).compactMap {
            $0.results.compactMap { dto in
            ___VARIABLE_productName:identifier___(dto: dto)
            }
        }.convertToLoadedState()
            .eraseToAnyPublisher()
    }
}
