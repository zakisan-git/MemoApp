import SwiftUI




struct Income: View {
    @State
    private var items: [String] = []
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView {
                    VStack {
                        ForEach(items, id: \.self) {
                            item in
                            Text(item)
                                .frame(width: 300, height: 70)
                                .background(Color.green)
                                .cornerRadius(10)
                                .padding(.bottom, 10)
                                .font(.system(size: 25))
                        }
                        Spacer().frame(height: 80)
                    }
                    .padding(.top, 50)
                }
                IncomeHeaderView() // 固定ヘッダー
                
                GeometryReader {
                    geometry in
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {
                                addItem()
                            }){
                                Image(systemName:  "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
    func addItem() {
        items.append("New Item \(items.count + 1)")
    }
}

// ヘッダーカスタム
struct IncomeHeaderView: View {
    var body: some View {
        // "GeometryReader"は画面幅の取得に使う
        GeometryReader { geometry in
            HStack {
                // 遷移設定(navigationBarHidden:遷移後のbackボタンを表示するもの)
                NavigationLink(destination: ContentsView().navigationBarHidden(true)) {
                    // 左ボタン
                    Image(systemName: "arrowshape.left.circle")
                        .font(.system(size: 30))
                        .padding(.leading, 20)
                }
                Spacer()
                // 画面タイトル
                Text("収入")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Spacer()
                // 右ボタン
                Image(systemName: "arrowshape.right.circle")
                    .font(.system(size: 30))
                    .padding(.trailing, 20)
            }
            .frame(width: geometry.size.width, height: 50)
            .background(Color.gray)
        }
    }
}


#Preview {
    Income()
}
