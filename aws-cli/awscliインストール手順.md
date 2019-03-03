# aws cliのインストール手順（Mac）

以下のサイトを参考にawscliのインストールを実行

【初心者向け】MacユーザがAWS CLIを最速で試す方法
https://dev.classmethod.jp/cloud/aws/mac-aws-cli/

```bash
# pipのインストール
sudo easy_install pip

# インストール確認
which pip
pip --version

# awscliのインストール
sudo pip install awscli

# インストール確認
which aws
aws --v
```

エラーその１
```
matplotlib 1.3.1 requires nose, which is not installed.
matplotlib 1.3.1 requires tornado, which is not installed.
```

エラーその２
```
Cannot uninstall 'six'. It is a distutils installed project and thus we cannot accurately determine which files belong to it which would lead to only a partial uninstall.
```

・解決方法

エラーその１
Python初心者:[pip install requests]実行時の[matplotlib 1.3.1 requires nose, which is not installed.]の対処方法
https://qiita.com/Atsushi_/items/f10a6790972528682d25

```
sudo easy_install nose
sudo easy_install tornado
```

エラーその２
OS X EI Caption(10.11.1)でAWS CLIのインストールエラー
https://qiita.com/kawashinji/items/98fd8a917a17c3476091

```
sudo pip install awscli --upgrade --ignore-installed six
```

# aws cliのタブ補完を有効化する

公式ドキュメント

https://docs.aws.amazon.com/fr_fr/cli/latest/userguide/cli-configure-completion.html

[自分メモ]AWS CLI使うならタブ補完を有効に
https://qiita.com/isobecky74/items/211f87bc04206801bf10

```bash
# AWSコンプリータのパスを確認
which aws_completer

# タブ補完を有効化
complete -C '/usr/local/bin/aws_completer' aws

# ~/.bashrcに追記
#aws cli
complete -C '/usr/local/bin/aws_completer' aws
```

# テンプレートを検証する

```bash
# バックスラッシュ(\)は改行して記述する場合に必要
# テンプレートの検証
aws cloudformation validate-template \
  --template-body file://template_name.yml
```

# Stackを作成、削除をする

```bash
# 作成
aws cloudformation create-stack \
  --stack-name stack_name \
  --template-body file://template_name.yml

# 削除
aws cloudformation delete-stack \
  --stack-name stack
```

# パラメータをJSONで渡してStackを作成する

```bash
# 作成
aws cloudformation create-stack \
    --template-body file://template_name.yml \
    --cli-input-json file://parameter.json
```

# Stackを更新する

```bash
# 更新
aws cloudformation deploy \
  --stack-name stack_name \
  --template-file template_name.yml
```