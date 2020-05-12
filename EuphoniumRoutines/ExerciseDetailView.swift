//
//  ExerciseDetailView.swift
//  EuphoniumRoutines
//
//  Created by Alex Burdiss on 5/1/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ExerciseDetailView: View {
    var image: String
    var body: some View {
        VStack{
            Image(self.image)
                .resizable()
                .scaledToFit()
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(image: "0")
    }
}

