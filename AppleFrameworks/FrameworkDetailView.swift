//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Aaron Ward on 2021-08-20.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        
        VStack(spacing: 20){
        
            Spacer()
            
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
                .padding(.horizontal)
                .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            
            Text(framework.name)
                .font(.system(size: 32, weight: .light, design: .default))
                
                
            
    
            Text(framework.description)
                .font(.body)
                .padding() // this makes the text look a lot more clean
            
            Spacer()
            Button{
                isShowingSafariView = true
                print("button being pressed")
            } label: {
                AFButton(title: "Learn More")

            }
        }
        
           
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
    }


struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


