## セットアップ用mitamae
サクッと環境構築してくれるやつ

### Usage

最初に実行

```shell
git clone <this repository>
cd <this repository>

cp node.yml.sample node.yml
# node.ymlを必要に応じて修正

bash setup.sh
```

#### run
```shell
/usr/local/bin/mitamae local --node-yaml ./node.yml my-mitamae/mitamae/roles/darwin/default.rb
```

#### dry-run
```shell
/usr/local/bin/mitamae local --dry-run --node-yaml ./node.yml my-mitamae/mitamae/roles/darwin/default.rb
```

### 参考
- [ローカルの開発環境構築に mitamae を導入した](https://lime1024.hateblo.jp/entry/2021/05/12/233622)
- [k0kubun/dotfiles](https://github.com/k0kubun/dotfiles)
