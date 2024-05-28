import SwiftUI

struct ContentsView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack {
                    Spacer().frame(height: 210) // 固定ヘッダー分のスペースを確保
                    NavigationLink(destination: Income().navigationBarHidden(true)) {
                        Text("収入")
                            .frame(width: 300, height: 70)
                            .font(.system(size: 40))
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding(.bottom, 50)
                    }
//                    NavigationLink(destination: Outcome()) {
//                        Text("支出")
//                            .frame(width: 300, height: 70)
//                            .font(.system(size: 40))
//                            .background(Color.green)
//                            .cornerRadius(10)
//                            .padding(.bottom, 50)
//                    }
//                    NavigationLink(destination: HowTo()) {
//                        Text("使い方")
//                            .frame(width: 300, height: 70)
//                            .font(.system(size: 40))
//                            .background(Color.green)
//                            .cornerRadius(10)
//                            .padding(.bottom, 50)
//                    }
                }
                ContentsHeaderView() // 固定ヘッダー
            }
        }
    }
}

// ヘッダーカスタム
struct ContentsHeaderView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                // 左ボタン
                Image(systemName: "arrowshape.left.circle")
                    .font(.system(size: 30))
                    .padding(.leading, 20)
                Spacer()
                Text("管理アプリ")
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
    ContentsView()
}
