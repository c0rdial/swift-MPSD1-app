//
//  ThermometerView.swift
//  0132601_Group1_MPSD_Assignment_Protoype
//
//  Created by Wan Adam on 21/11/2022.
//

import SwiftUI

struct ThermometerView: View {
    var body: some View {
        VStack {
            NavigationView{
                ZStack{
                    Color("Background")
                        .ignoresSafeArea()
//                    ScrollView{
                        VStack(spacing: 0){
                            //MARK: Thermometer
                            Thermometer()
                                .padding(.top, 30)
                                .padding(.bottom, 60)
                            // MARK: Smart Systems
                            
                        }
//                    }
                }
                .navigationTitle("Thermostat")
                .navigationBarTitleDisplayMode(.inline)
            }.navigationViewStyle(.stack)
        }
    }
}

struct ThermometerView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometerView()
            .preferredColorScheme(.dark)
    }
}
