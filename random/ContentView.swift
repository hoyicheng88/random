//
//  ContentView.swift
//  random
//
//  Created by User20 on 2021/1/1.
//

import SwiftUI

struct ContentView: View {
    @State private var  choice = ["紅茶", "奶茶", "咖啡", "熱可可", "綠茶", "紅茶拿鐵", "豆漿", "柳橙汁", "蘋果汁"]
    @State var num = 0
    var body: some View {
        
        
        ZStack {
            Image("back")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("今天早上 我想喝點")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Image(String(num))
                .resizable()
                    .frame(width: 150, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //Text(String(num))
                Text(choice[num])
                    .font(.headline)
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                Button(action: {num = Int.random(in: 0...7)}) {
                    HStack {
                        Image(systemName: "goforward")
                        Text("不要這個 再抽一次")
                            .fontWeight(.black)
                            
                        Image(systemName: "goforward")
                    }
                    
                }
                .padding(.all)
                .foregroundColor(.orange)
                
                .background(Color.black)
                .cornerRadius(20)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                
            }
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
