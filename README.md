# SwiftUI Settings Sample

SwiftUI practice project  
iOSアプリにおける設定画面を想定し、SwiftUIで構成したサンプルアプリです。

## Features
- SwiftUI + Form による設定画面
- enum を使った外観（ライト / ダーク / システム）の管理
- List + Checkmark による選択UI
- UserDefaults による設定の永続化
- 起動時に設定を復元

## Screens
- 設定画面（Form）
- 外観切り替え（ライト / ダーク / システム）

## Tech Stack
- Swift
- SwiftUI
- Xcode

## Notes
SwiftUIの状態管理（@StateObject / @EnvironmentObject）と  
設定の永続化の理解を目的として作成しました。

## 工夫した点
- 設定項目の追加・変更を想定し、Viewを分割
- SwiftUIの状態管理を意識して実装

## 今後の改善
- 設定内容の永続化
- テストコードの追加
