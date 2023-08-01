//
//  HomeView.swift
//  Login_mpsd1
//
//  Created by Wan Adam on 19/11/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showUnlock = false
    @State private var showThermostat = false
    @EnvironmentObject var service: SessionServiceImpl
    
    var body: some View {
            VStack(alignment: .leading,
                   spacing: 16) {
                
                VStack(alignment: .leading,
                       spacing: 16) {
                    Text("First Name: \(service.userDetails?.firstName ?? "N/A")")
                    Text("Last Name: \(service.userDetails?.lastName ?? "N/A")")
                    Text("Occupation: \(service.userDetails?.occupation ?? "N/A")")
                }
                    
                    ButtonView(title: "Logout") {
                        service.logout()
                    }
                ButtonView(title: "Unlock Room",
                           background: .clear,
                           foreground: .blue,
                           border: .blue) {
                           showUnlock.toggle()
                }
                .sheet(isPresented: $showUnlock) {
                        UnlockView()
                }
                ButtonView(title: "Thermostat",
                           background: .clear,
                           foreground: .blue,
                           border: .blue) {
                           showThermostat.toggle()
                }
                .sheet(isPresented: $showThermostat) {
                        ThermometerView()
                }
                    
                
            }
            .padding(.horizontal, 16)
            .navigationTitle("Home Page")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .environmentObject(SessionServiceImpl())
        }
    }
}

