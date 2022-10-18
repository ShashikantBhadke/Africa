//
//  ContentView.swift
//  Africa
//
//  Created by Shashikant Bhadke on 26/09/22.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        VStack{
            CoverImageView()
                .frame(height: 300)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            Spacer()
            ForEach(animals) { animal in
                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                    AnimalListItemView(animal: animal)
                }
            }
        }
//        NavigationView {
//            List {
//                CoverImageView()
//                    .frame(height: 300)
//                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
//                ForEach(animals) { animal in
//                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
//                        AnimalListItemView(animal: animal)
//                    }
//                }
//            }
//        }
        .background {Color.red}
        .navigationTitle("Africa")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
