//
//  EditButtonView.swift
//  ButtonsDemo
//
//  Created by OreChou on 2022/4/13.
//

import SwiftUI

struct EditButtonView: View {
    
    @State private var animals = ["Cats", "Dogs", "Goats"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }.onDelete(perform: removeAnimal)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("EditButtonView"), displayMode: .inline)
        }
    }
    
    func removeAnimal(at offsets: IndexSet) {
        animals.remove(atOffsets: offsets)
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
