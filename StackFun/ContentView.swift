//
//  ContentView.swift
//  StackFun
//
//  Created by Kenneth Adams on 3/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var path = NavigationPath()
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                    Button(action: {
                        path.append(NextViewViewModel())
                    }) {
                        Text("Proceed")
                    }
                    Button(action: {
                        path.append(NextViewOptionTwoViewModel(name:"Esteban"))
                    }) {
                        Text("Maybe Proceed")
                    }
                    
                }
                .padding()
            }
            .navigationDestination(for: NextViewViewModel.self) { model in
                NextView(viewModel: model)
            }
            .navigationDestination(for: NextViewOptionTwoViewModel.self ) { model in
                NextViewOptionTwoView(viewModel: model, path: $path)
            }
        }
    }
}

struct NextView: View {
    @StateObject var viewModel: NextViewViewModel
    var body: some View {
        VStack {
            Text("\(viewModel.name), you are number \(viewModel.id)")
            Text("You reached it")
        }
    }
}

struct NextViewOptionTwoView: View {
    @StateObject var viewModel: NextViewOptionTwoViewModel
    @Binding var path: NavigationPath
    var body: some View {
        VStack {
            Text("\(viewModel.name), you are number \(viewModel.id)")
            Text("Maybe i made it")
            Button(action: {
                path.append(NextViewOptionThreeViewModel(name: viewModel.name))
            }) {
                Text("Do it Again")
            }
        }
        .navigationDestination(for: NextViewOptionThreeViewModel.self ) { model in
            NextViewOptionThreeView(viewModel: model, path: $path)
        }
        .navigationBarBackButtonHidden()
    }
}



struct NextViewOptionThreeView: View {
    @StateObject var viewModel: NextViewOptionThreeViewModel
    @Binding var path: NavigationPath
    var body: some View {
        VStack {
            Text("\(viewModel.name), you are number \(viewModel.id)")
            Text("Maybe i made it Again")
            Button(action: {
                path.append(NextViewOptionFourViewModel(name: "Dressorossa"))
            }) {
                Text("Do it Again")
            }
        }
        .navigationDestination(for: NextViewOptionFourViewModel.self) { model in
            NextViewOptionFourView(viewModel: model, path: $path)
        }
        .navigationBarBackButtonHidden()
    }
}

struct NextViewOptionFourView: View {
    @StateObject var viewModel: NextViewOptionFourViewModel
    @Binding var path: NavigationPath
    var body: some View {
        VStack {
            Text("\(viewModel.name), you are number \(viewModel.id)")
            Text("Maybe i made it Again Again")
            Button(action: {
                path.append(NextViewOptionFiveViewModel(name: "Trey"))
            }) {
                Text("Do it Again")
            }
        }
        .navigationDestination(for: NextViewOptionFiveViewModel.self) { model in
            NextViewOptionFiveView(viewModel: model, path: $path)
        }
        .navigationBarBackButtonHidden()
    }
}



struct NextViewOptionFiveView: View {
    @StateObject var viewModel: NextViewOptionFiveViewModel
    @Binding var path: NavigationPath
    var body: some View {
        VStack {
            Text("\(viewModel.name), you are number \(viewModel.id)")
            Text("Maybe i made it Again Again")
            Button(action: {
                
            }) {
                Text("Do it Again")
            }
        }
        .navigationBarBackButtonHidden()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
