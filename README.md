## セットアップ用mitamae
サクッと環境構築してくれるやつ

### Require
- git

### Usage

最初に実行

```shell
git clone <this repository>
cd <this repository>

cp node.yml.sample node.yml
# node.ymlを必要に応じて修正

# for vim submodule
git submodule init
git submodule update

bash setup.sh
```

#### run
```shell
/usr/local/bin/mitamae local --node-yaml ./node.yml ./mitamae/roles/darwin/default.rb
```

#### dry-run
```shell
/usr/local/bin/mitamae local --dry-run --node-yaml ./node.yml ./mitamae/roles/darwin/default.rb
```

### dotfiles/について

dotfiles/配下に.hogeファイルを設置すれば、`/Users/<your_name>/`配下からシンボリックリンクを貼って適応される。(config.fishだけ例外)

### lib/について

libs/配下に設置したスクリプトは `/Users/<your name>` 配下からシンボリックをはってPATHがとうされた状態になる

### 参考
- [ローカルの開発環境構築に mitamae を導入した](https://lime1024.hateblo.jp/entry/2021/05/12/233622)
- [k0kubun/dotfiles](https://github.com/k0kubun/dotfiles)
- [itamae-kitchen/itamae](https://github.com/itamae-kitchen/itamae)
