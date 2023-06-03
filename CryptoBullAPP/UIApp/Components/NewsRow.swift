////
////  CryptoNewsRow.swift
////  Crypto Bull
////
////  Created by Tegar Marino on 03/06/23.
////
//
//import SwiftUI
//
//
//struct NewsRow: View {
//
//    @StateObject var viewModel = NewsViewModel()
//
//    var body: some View {
//        VStack(alignment: .leading){
//            upperColumn
//                .padding(.bottom,20)
//            middleColumn
//        }
//        .background(
//            Color.theme.background.opacity(0.001)
//        )
//    }
//}
//
//struct CryptoNewsRow_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsRow()
//            .previewLayout(.sizeThatFits)
//    }
//}
//
//extension NewsRow {
//    private var upperColumn: some View{
//        VStack(alignment: .leading){
//            HStack{
//                Text("\(viewModel.title)")
//                    .fontWeight(.light)
//                    .foregroundColor(Color.theme.accent)
//                Image(systemName: "clock")
//                    .padding(.leading)
//                    .foregroundColor(Color.theme.secondaryText)
//                Text("\(viewModel.publishedAt)")
//                    .fontWeight(.light)
//            }
//            .font(.system(size: 10))
//
//        }
//        .padding(.horizontal)
//    }
//
//    private var middleColumn: some View{
//        HStack{
//            Text("\(viewModel.title)")
//                .font(.title)
//                .foregroundColor(Color.theme.secondaryText)
//                .frame(minWidth: 30)
//                .fontWeight(.bold)
//        }
//        .padding(.horizontal)
//    }
//}
