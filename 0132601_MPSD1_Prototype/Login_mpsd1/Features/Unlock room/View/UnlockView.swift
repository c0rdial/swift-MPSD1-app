//
//  UnlockView.swift
//  Login_mpsd1
//
//  Created by Wan Adam on 18/11/2022.
//

import SwiftUI

struct UnlockView: View {
    
    @State var unlock = false
    
    var body: some View {
        VStack (spacing: 50) {
            Header()
            ZStack {
                
                ZStack {
                   
                 
                    Image(systemName: unlock ? "lock.open.fill" : "lock.fill")
                        .font(.system(size: 38))
                        .foregroundColor(.white)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.3), radius: 10, x: 0, y: 5)
                       
                    
                }
                .frame(width: 80, height: 80)
                .background(unlock ? Color(#colorLiteral(red: 0.2297588818, green: 0.8914938262, blue: 0.5035064947, alpha: 1)) : Color(#colorLiteral(red: 0.5341926217, green: 0.3033408523, blue: 0.9998784661, alpha: 1)))
                .cornerRadius(25)
                .shadow(color: unlock ? Color(#colorLiteral(red: 0.193517231, green: 0.7435112385, blue: 0.425035557, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 0.5341926217, green: 0.3033408523, blue: 0.9998784661, alpha: 1)).opacity(0.25), radius: 30, x: 0, y: 15)
                .animation(.spring(), value: 0)
            }
            .frame(width: 120, height: 120)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(40)
            .shadow(color: unlock ? Color(#colorLiteral(red: 0.193517231, green: 0.7435112385, blue: 0.425035557, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 0.5341926217, green: 0.3033408523, blue: 0.9998784661, alpha: 1)).opacity(0.3), radius: 30, x: 3, y: 20)
            .animation(.spring(), value: 0)
            
            .onTapGesture {
                self.unlock.toggle()
            }
            
            VStack {
                Text("Your home has been unlocked!")
                    .bold()
            }
            .offset(y: -10)
            .opacity(unlock ? 1 : 0.0)
            .animation(.spring() , value: 0)
            BottomContent()
        }
       
    }
}

struct Unlock_Previews: PreviewProvider {
    static var previews: some View {
        UnlockView()
    }
}

struct Header: View {
    
    @EnvironmentObject var service: SessionServiceImpl
    var body: some View {
        VStack (spacing: 10) {
            Image("Avatar")
                .resizable()
                .frame(width: 70, height: 70)
            Text("Welcome home,")
                .font(.system(size: 17, weight: .medium, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5609561801, green: 0.6064473391, blue: 0.6951050162, alpha: 1)))
            Text("\(service.userDetails?.firstName ?? "N/A")")
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5148662329, green: 0.2772977352, blue: 0.9931133389, alpha: 1)))
        }
    }
}

struct BottomContent: View {
    var body: some View {
        VStack (spacing: 10){
            Text("Unlock Door")
                .font(.system(size: 19, weight: .bold, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            Text("Please unlock this door to use your hotel utilities.")
                .font(.system(size: 15, weight: .medium, design: .default))
                .foregroundColor(Color(#colorLiteral(red: 0.5609561801, green: 0.6064473391, blue: 0.6951050162, alpha: 1)))
                .frame(width: 220)
                .multilineTextAlignment(.center)
        }
    }
}
