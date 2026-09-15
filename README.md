研究リポジトリのテンプレート
====

1 フォルダ = 1 研究。新しい研究を始めるときの雛形。規約とエージェント向けの手順を含む。

## 使い方

```bash
gh repo create <name> --template kojima-msp/research-template --private --clone
cd <name>
mv README_template.md README.md
uv sync
```

`README.md` には、実行コマンドと、論文の図表番号との対応を書く。エージェントはここを
コマンドの参照先にするので、新しいコマンドを作ったら追記する。

## 中身

| | |
| --- | --- |
| `AGENTS.md` | 規約。エージェントが毎回読む。`CLAUDE.md` は symlink |
| `.claude/skills/paper/` | 論文の執筆・修正。英文の基準は `house-style.md` |
| `.claude/skills/polish/` | 論文の添削、差分の確認 |
| `.claude/skills/figure/` | npz から図表を作る |
| `.claude/skills/release/` | リポジトリの公開準備 |
| `README_template.md` | 公開用 README のひな形 |
| `pyproject.toml` | uv と ruff の設定 |
| `paper/RESULTS.md` | 図表と、その生成元の commit の対応表 |
| `paper/build.sh` | 本体の pdf を作る。`old.tex` があれば差分の pdf も作る |
| `paper/old.tex` | 添削に出した版。差分の比較元。git 管理下に置く |

## 構成

```
src/models/     モデル定義
src/utils/      共通処理
src/exp/train/  学習・パラメータ探索
src/exp/eval/   評価・図表生成
out/            プログラムの出力先 (npz / img / table)。git 管理外
datasets/       データ本体、ライブラリのキャッシュ先。git 管理外
paper/          論文
```

追加のファイル・フォルダを置いてよい。フォルダ名の厳密一致も不要。

## 外部への依存

paper skill は `~/paper/` に置いた添削済みの tex を参照する。無くても動くが、言い回しを
揃える機能は働かない。

`paper/build.sh` は TeX Live の `latexdiff` と `latexmk` を使う。
