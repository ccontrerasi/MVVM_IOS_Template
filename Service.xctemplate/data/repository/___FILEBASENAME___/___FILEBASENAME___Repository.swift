//
//  ___FILEHEADER___
//  Created by Cristian Contreras 
//
import Foundation
import Combine
import Moya

protocol ___VARIABLE_productName:identifier___Repository {
    // TODO: Example of method
    func fetch(name: String?) -> AnyPublisher<___VARIABLE_productName:identifier___DTO, Error>
}
class ___VARIABLE_productName:identifier___Repository: I___VARIABLE_productName:identifier___Repository {
    private let provider: MoyaProvider<ApiServices>
    
    // MARK: - Init
    init(provider: MoyaProvider<ApiServices>){
        self.provider = provider
    }
    
    // MARK: - Methods
    
    func fetch(name: String?) -> AnyPublisher<___VARIABLE_productName:identifier___DTO, Error> {
        // TODO: set ApiService method
        provider.requestPublisher(.METHOD_OF_API(name: name), typeResult: ___VARIABLE_productName:identifier___DTO.self)
    }
}

struct ___VARIABLE_productName:identifier___ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName:identifier___ViewController(
                            viewModel: ___VARIABLE_productName:identifier___ViewModel())
    }
}
