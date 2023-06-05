//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Tegar Marino on 26/05/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    @State private var showPortfolio: Bool = false // Animate right
    @State private var showPortfolioView: Bool = false // New sheet
    @State private var showSettingView: Bool = false // Setting
    
    @State private var showNews: Bool = false
    @State private var showHome: Bool = false
    
    @State private var selectedCoin: CoinModel? = nil
    @State private var showDetailView: Bool = false
    
    var body: some View {
        ZStack{
            // Background layer
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPortfolioView, content: {
                    PortfolioView()
                        .environmentObject(viewModel)
                })
             
            // Content layer
            
            VStack {
//                homeHeader
                        
                if showPortfolio && !showHome {
                    Text("Portfolio")
                        .font(.headline)
                        .foregroundColor(Color.theme.accent)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                    HomeStatsView(showPortfolio: $showPortfolio)
                    SearchBarView(searchText: $viewModel.searchText)
                    HStack{
                        if showPortfolio {
                            Button(action: {
                                showPortfolioView.toggle()
                            }, label: {
                                Text("Add new portfolio")
                                    .font(.headline)
                                    .foregroundColor(Color.theme.blue)
                            })
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0))
                    columnTitles
                    portfolioCoinList
                        .transition(.move(edge: .trailing))
                    
                } else if showHome || !showNews {
                    Text("Live crypto price")
                        .font(.headline)
                        .foregroundColor(Color.theme.accent)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                    HomeStatsView(showPortfolio: $showPortfolio)
                    SearchBarView(searchText: $viewModel.searchText)
                    columnTitles
                    allCoinList
                        .transition(.move(edge: .leading))
                } else if showNews {
                    NewsView()
                }
                        
                Spacer(minLength: 0)
                navigationBar
            }
            .sheet(isPresented: $showSettingView, content: {
                SettingView()
            })
        }
        .background(
            // init(destination:isActive:label:) was deprecated
            NavigationLink(
                destination: DetailLoadingView(coin: $selectedCoin),
                isActive: $showDetailView,
                label: {EmptyView()}
            )
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}

extension HomeView {
    
    private var navigationBar: some View {
        HStack {
            VStack {
                NavigationButtonView(iconName: "chart.bar")
                    // 'animation' was deprecated
                    .animation(.none)
                    .onTapGesture {
                        showHome = true
                        if showHome {
                            showPortfolio = false
                            showNews = false
                        }
                    }
                Text("Price")
                    .font(.system(size: 10))
            }
            Spacer()
            VStack {
                NavigationButtonView(iconName: "bitcoinsign.circle")
                    // 'animation' was deprecated
                    .animation(.none)
                    .onTapGesture {
                        showPortfolio = true
                        if showPortfolio {
                            showHome = false
                            showNews = false
                        }
                    }
                Text("Portfolio")
                    .font(.system(size: 10))
            }
            Spacer()
            VStack {
                NavigationButtonView(iconName: "newspaper")
                    // 'animation' was deprecated
                    .animation(.none)
                    .onTapGesture {
                        showNews = true
                        if showNews {
                            showHome = false
                            showPortfolio = false
                        }
                    }
                Text("News")
                    .font(.system(size: 10))
            }
        }
        .padding(.horizontal, 40)
        .padding(.top, 30)
    }
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                // 'animation' was deprecated
                .animation(.none)
                .onTapGesture {
                    if showPortfolio {
                        showPortfolioView.toggle()
                    } else {
                        showSettingView.toggle()
                    }
                }
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live price")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
    
    private var allCoinList: some View {
        List {
            ForEach(viewModel.allCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                    .onTapGesture {
                        segue(coin: coin)
                    }
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinList: some View {
        List {
            ForEach(viewModel.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                    .onTapGesture {
                        segue(coin: coin)
                    }
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private func segue(coin: CoinModel) {
        selectedCoin = coin
        showDetailView.toggle()
    }
    
    private var columnTitles: some View {
        HStack {
            HStack(spacing: 4) {
                Text("Coin")
                Image(systemName: "chevron.down")
                    .opacity((viewModel.sortOption == .rank || viewModel.sortOption == .rankReversed) ? 1.0 : 0.0)
                    .rotationEffect(Angle(degrees: viewModel.sortOption == .rank ? 0 : 180))
            }
            .onTapGesture {
                withAnimation(.default) {
                    viewModel.sortOption = viewModel.sortOption == .rank ? .rankReversed : .rank
                }            }
            Spacer()
            if showPortfolio {
                HStack(spacing: 4) {
                    Text("Holdings")
                    Image(systemName: "chevron.down")
                        .opacity((viewModel.sortOption == .holdings || viewModel.sortOption == .holdingReversed) ? 1.0 : 0.0)
                        .rotationEffect(Angle(degrees: viewModel.sortOption == .holdings ? 0 : 180))
                }
                .onTapGesture {
                    withAnimation(.default) {
                        viewModel.sortOption = viewModel.sortOption == .holdings ? .holdingReversed : .holdings
                    }
                }
            }
            HStack(spacing: 4) {
                Text("Price")
                Image(systemName: "chevron.down")
                    .opacity((viewModel.sortOption == .price || viewModel.sortOption == .priceReversed) ? 1.0 : 0.0)
                    .rotationEffect(Angle(degrees: viewModel.sortOption == .price ? 0 : 180))
            }
            .frame(width: UIScreen.main.bounds.width/3.5, alignment: .trailing)
            .onTapGesture {
                withAnimation(.default) {
                    viewModel.sortOption = viewModel.sortOption == .price ? .priceReversed : .price
                }
            }
            
            Button(action: {
                withAnimation(.linear(duration: 2.0)) {
                    viewModel.reloadData()
                }
            }, label: {
                Image(systemName: "goforward")
            })
            .rotationEffect(Angle(degrees: viewModel.isLoading ? 360 : 0), anchor: .center)
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .padding(.horizontal)
    }
}
