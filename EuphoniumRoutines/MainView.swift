//
//  MainView.swift
//  EuphoniumRoutines
//
//  Created by Alex Burdiss on 5/1/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showDetail = false
    
    var body: some View {
        NavigationView() {
            VStack {
                NavigationLink(destination:
                    RoutineView(showSelf: $showDetail),
                               isActive: $showDetail
                ) {
                    HStack {
                        Text("Begin Routine")
                            .font(.title)
                        Image(systemName: "play")
                            .font(.title)
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.yellow, lineWidth: 2))
                    .padding()
                    
                }
            }
            
            .navigationBarTitle("Euphonium Routines")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
    

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
