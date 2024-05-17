//
//  SplashView.swift
//  MemoApp
//
//  Created by Eita Hayashizaki on 2024/05/13.
//

import SwiftUI

struct SplashView: View {
    @State private var isLoading = true
    
    var body: some View {
        if isLoading{
            // 重ねる箱
            ZStack{
                Image("memo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    withAnimation{
                        isLoading = false
                    }
                }
            }
        }else{
            ContentView()
        }
    }
}
