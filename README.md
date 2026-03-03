# SwiftUI Settings Sample

SwiftUI practice project  
iOSアプリにおける設定画面を想定し、
実務アプリで一般的な構成を意識してSwiftUIで実装しました。

## Features
- SwiftUI + Form による設定画面
- enum を使った外観（ライト / ダーク / システム）の管理
- List + Checkmark による選択UI
- 設定変更時にUserDefaultsへ保存し、アプリ起動時に初期化処理で復元する設計としました
- 起動時に設定を復元

## Screens
- 設定画面（Form）
- 外観切り替え（ライト / ダーク / システム）

## Tech Stack
- Swift
- SwiftUI
- Xcode

## Notes
設定情報を管理するためにObservableObjectを定義し、Viewの再生成時にも状態が保持されるよう@StateObjectを使用しました。  
画面間共有のために@EnvironmentObjectを利用しています。

## 工夫した点
- 設定項目の追加・変更を想定し、Viewを分割
- SwiftUIの状態管理を意識して実装

## 今後の改善
- MVVM構成をより明確にし、ViewModel単体でテスト可能な設計へ改善予定です。
- 設定項目増加時の構成整理
