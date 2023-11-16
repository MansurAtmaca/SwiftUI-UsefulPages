//
//  ContentView.swift
//  ErrorPage
//
//  Created by Mansurcan ATMACA on 15.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundImageView()
            VStack(alignment:.center,spacing: 30){
                Spacer()
                Text("Payment Failed")
                    .font(.title)
                Text("Your card was rejected, Please try again")
                    .multilineTextAlignment(.center).opacity(0.5)
                Button(action: {
                    
                }, label: {
                    Text("Retry")
                        .frame(width: 200,height: 50)
                        .background(.pink)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                })
                .padding(.horizontal,70)
                .padding(.bottom,150)
            }
            .padding(.horizontal,70)
        }
    }
}

#Preview {
    ContentView()
}

struct BackgroundImageView: View {
    var body: some View {
        Image("15_Payment Error")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea(.all)
    }
}
