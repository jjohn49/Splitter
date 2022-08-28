//
//  HomePageView.swift
//  Splitter App
//
//  Created by John Johnston on 8/28/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView{
            VStack {
                Form{
                    Section(header: Text("My Trips").foregroundColor(.blue)){
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack{
                                //where trips will be
                            }
                        }.frame(height: 100)
                        
                    }
                }
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
