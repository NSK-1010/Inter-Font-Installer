# Inter-Font-Installer
Inter UIフォントをLinuxに簡単にインストールするためのスクリプトです。

### 依存関係

`bash`,`mv`,`wget`,`unzip`,`mkdir`,`rm`

### インストール方法

ターミナルでこちらのコマンドを入力してください。

sudo権限が必要です。

#### 通常インストール

```
git clone https://github.com/NSK-1010/Inter-Font-Installer.git
cd Inter-Font-Installer
sudo bash ./install.sh
```

#### debファイルを作成してインストール

Debian系またはUbuntu系のみで使用できます。

```
git clone https://github.com/NSK-1010/Inter-Font-Installer.git
cd Inter-Font-Installer
sudo bash ./install-deb.sh
```

#### debファイルの作成のみ

```
git clone https://github.com/NSK-1010/Inter-Font-Installer.git
cd Inter-Font-Installer
sudo bash ./build-deb.sh
```

### 更新履歴について

[changelog.txt](./changelog.txt)に書いてあります。
