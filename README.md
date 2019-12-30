# chrome2explorer
Configuration enable to open Windows Explorer via Google Chrome

## 動作確認環境

* Windows 10 Pro (version1903)
* Google Chrome (バージョン: 79.0.3945.88)

## インストール手順

1. install.bat を右クリックで選択して管理者権限で実行
2. Windowsキー + r で regedit を起動して protocl.reg をインポート
3. chrome2explorer.bat を C:\ にコピー
4. PC 再起動

## 使い方

### ローカルファイルパスの場合

リンク設定（例）

    <a href="chrome2explorer:Documents\">ドキュメント</a>
    <a href="chrome2explorer:Desktop\">デスクトップ</a>
    <a href="chrome2explorer:Pictures\">ピクチャ</a>

### ネットワークファイルパスの場合

chrome2explorer.bat のコメントアウトを変更

    @rem local file path
    SET s3=%USERPROFILE%\%s2%
    @rem network file path
    @rem SET s3=\\server\%s2%
    ↓
    @rem local file path
    @rem SET s3=%USERPROFILE%\%s2%
    @rem network file path
    SET s3=\\server\%s2%

リンク設定（例）

    <a href="chrome2explorer:2019\">2019</a>
    <a href="chrome2explorer:2019\01\">2019-01</a>
    <a href="chrome2explorer:2019\02\">2019-02</a>
    <a href="chrome2explorer:2019\03\">2019-03</a>
    <a href="chrome2explorer:2019\04\">2019-04</a>

## 参考

* https://support.google.com/chrome/forum/AAAAG2Advoc8NprOkomryo/?hl=ja&gpf=%23!topic%2Fchrome-ja%2F8NprOkomryo
