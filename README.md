# vagrant-box-ubuntu-develop

基本的な開発環境をインストールした CentOS 8

## ボックスを自前で作成する

### クローン

```bash
git clone https://gitlab.com/takahiro-itou/vagrant-box-centos8-develop.git
cd  vagrant-box-centos8-develop
```

### ボックス作成

```bash
./setup.sh
```

### 作成したボックスを登録する。

```bash
vagrant box add  --name <yourname>/centos8-develop  centos8-develop.box
```

## 作成済みのボックスをダウンロードして使う

takahiro-itou/centos8-develop
- https://app.vagrantup.com/takahiro-itou/boxes/centos8-develop

