//
//  ___FILEHEADER___
//  Created by Cristian Contreras 
//
import SwiftUI

struct ___VARIABLE_productName:identifier___ViewController<Model>: View where Model: ___VARIABLE_productName:identifier___ViewModelProtocol {
    @StateObject private var viewModel: ___VARIABLE_productName:identifier___ViewModel

    // MARK: - Init
    
    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body
    
    var body: some View {
        ___VARIABLE_productName:identifier___Coordinator(state: viewModel, content: content)
    }

    @ViewBuilder private func content() -> some View {
        ZStack {
            switch viewModel.state {
                case .idle, .loading: Text("Loading....")
                case .failed(_): Text("Failed....")
                case .result(_): Text("Result")
            }
        }
    }
}

struct ___VARIABLE_productName:identifier___ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName:identifier___ViewController(viewModel:
            ___VARIABLE_productName:identifier___ViewModelMockup())
    }
}

private class ___VARIABLE_productName:identifier___ViewModelMockup: ___VARIABLE_productName:identifier___ViewModelProtocol {
    var state: LoadableState<___VARIABLE_productName:identifier___> = .result(___VARIABLE_productName:identifier___())
    func loadInfo() {
    }
    var activeLink: ___VARIABLE_productName:identifier___NavigationLink?
}