# matsuu/wsl-isucon10-qualifier

## これはなに

ISUCON10予選の環境をWSL2上に構築するスクリプトです。

## 構築

PowerShell上で以下を実行します。

```
# ダウンロード
git clone https://github.com/matsuu/wsl-isucon10-qualifier.git

# ディレクトリに移動
cd wsl-isucon10-qualifier

# 一時的にPowerShell実行を許可
Set-ExecutionPolicy RemoteSigned -Scope Process

# 構築スクリプト実行(引数はDistro名、インストールパス)
.\build.ps1 isucon10-qualify .\isucon10-qualify
```

## 実行

```
wsl.exe -d isucon10-qualify
```

### サイト表示確認

http://localhost/

### ベンチマーク実行

```
cd ~/isuumo/bench
./bench -target-url http://127.0.0.1
```

## 関連

* [ISUCON10予選問題](https://github.com/isucon/isucon10-qualify)
* [matsuu/wsl-isucon9-qualifier](https://github.com/matsuu/wsl-isucon9-qualifier)

## TODO

* エラー制御
  * 二重実行の防止
* `/etc/resolv.conf` 周りの調整
* PowerShellなんもわからん
