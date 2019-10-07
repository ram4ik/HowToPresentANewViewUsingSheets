//
//  ContentView.swift
//  HowToPresentANewViewUsingSheets
//
//  Created by ramil on 07/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}

struct ContentView: View {
    @State var showingDetail = false

    var body: some View {
        Button(action: {
            self.showingDetail.toggle()
        }) {
            Text("Show Detail")
        }.sheet(isPresented: $showingDetail) {
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
