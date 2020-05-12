//
//  SettingsView.swift
//  EuphoniumRoutines
//
//  Created by Alex Burdiss on 5/1/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var settings = settingsModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Fundamentals")) {
                        Toggle(isOn: $settings.longTonesToggle) {
                            Text("Long Tones")
                        }
                        Toggle(isOn: $settings.slowLipSlursToggle) {
                            Text("Slow Lip Slurs")
                        }
                        Toggle(isOn: $settings.fastLipSlursToggle) {
                            Text("Fast Lip Slurs")
                        }
                        Toggle(isOn: $settings.staticArticulationToggle) {
                            Text("Single Note Articulation")
                        }
                        Toggle(isOn: $settings.variableArticulationToggle) {
                            Text("Changing Note Articulation")
                        }
                        Toggle(isOn: $settings.majorScalesToggle) {
                            Text("Major Scales")
                        }
                        Toggle(isOn: $settings.highRangeToggle) {
                            Text("High Range")
                        }
                        Toggle(isOn: $settings.lowRangeToggle) {
                            Text("Low Range")
                        }
                    }
                    Section(header: Text("Resources")) {
                        Button(action: {
                            let url = URL(string: "https://apps.apple.com/us/app/scale-practice-randomizer/id1496727056")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Download Scale Practice - Randomizer")
                        }
                        Button(action: {
                            let url = URL(string: "http://www.arsnovapublishing.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Visit Ars Nova Publishing")
                        }
                        Button(action: {
                            let url = URL(string: "http://www.bandroomonline.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Visit Band Room Online")
                        }
                    }
                    Section(header: Text("About")) {
                        Text("©2020 Alexander Burdiss and Qian Yu")
                        Button(action: {
                            let url = URL(string: "mailto:aburdiss@gmail.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Send Feedback")
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            }
            .navigationBarTitle("Settings")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
