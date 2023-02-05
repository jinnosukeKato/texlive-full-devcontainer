# texlive-full-devcontainer

## 使い方

1. テンプレートリポジトリとして、または単にクローン
2. コマンドパレットから、`Reopen in Container`
3. 任意の`.tex`ファイルを編集、保存することでビルド可能

## 背景となる課題

- TeXが書けるdevcontainerテンプレートが(観測範囲に)ない
  - コンテナイメージはあるが、devcontainerに適した構成になっていない
- texliveがフルで入っているイメージはない
  - (と、作ったときには思ってたけど、[公式であったり](https://hub.docker.com/r/texlive/texlive)した)
- `.latexmkrc`とかが何なのか意味わからん(ので1回しか書きたくない)
- pLaTeXとかバージョンが色々あって意味わからん

以上の課題をもとに、テンプレートを作りました。

## 特徴

vscodeのdevcontainerをサポートして、その環境下で以下のサポートを受けられます。

- ベースイメージはmicrosoftのdevcontainer向けdebian-11
- save時に自動でビルド
- 拡張機能の自動導入
- ghcrにビルド済みイメージを配置しているため、手元でのビルドが不要
  - イメージサイズは約3.7GB

## Contribution

正直TeXの環境、ビルド周りについては何も理解していないので、特に改善があればPRをください。

- `.latexmkrc`の改良
- lualatex以外のサポート追加
- 良い感じのサンプル`.tex`ファイルの追加

## LICENCE

これらの設定、Dockerfile、texのサンプルなどについて、著作権が発生するかどうかは判断が付きません。
もし発生する場合、[CC0](https://creativecommons.jp/sciencecommons/aboutcc0/)とします。
