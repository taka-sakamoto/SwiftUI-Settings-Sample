# SwiftUI Settings Sample

SwiftUI practice project  
iOSアプリにおける設定画面を想定し、
実務アプリで一般的な構成を意識してSwiftUIで実装しました。

## Features
- SwiftUI + Form による設定画面
- enum を使った外観（ライト / ダーク / システム）の管理
- List + Checkmark による選択UI
- 設定変更時に UserDefaults へ保存し、アプリ起動時に初期化処理で復元
- 画面間共有のために @EnvironmentObject を利用

## Screens
- 設定画面（Form）
- 外観切り替え（ライト / ダーク / システム）

## Tech Stack
- Swift
- SwiftUI
- Xcode

## Notes
- 設定情報を管理するために ObservableObject を定義
- View の再生成時にも状態が保持されるよう @StateObject を使用
- 画面間共有のために @EnvironmentObject を利用

## 工夫した点
- 設定項目の追加・変更を想定し、Viewを分割
- SwiftUIの状態管理を意識して実装

## 今後の改善
- MVVM構成をより明確にし、ViewModel単体でテスト可能な設計へ改善予定
- 設定項目増加時の構成整理
