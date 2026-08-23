---
name: figure
description: 評価結果の npz から論文用の図表を作る。matplotlib の設定、出力先、LaTeX 表の書き出し。図やテーブルを生成・修正するときに読む。
---

# 図表の生成

## 分離

- 評価して npz に保存する処理と、npz から図表を作る処理を別ファイルにする。図表の
  作り直しに再評価を要求しない。
- 入力は `out/npz/`、出力は図が `out/img/`、表が `out/table/`。カレントディレクトリや
  リポジトリ直下に書き出さない。

## 図

- pdf で保存する。
- スタイルは scienceplots に揃える。

```python
import matplotlib.pyplot as plt
import scienceplots
plt.style.use(['science', 'ieee', 'grid', 'high-vis'])
```

- 文字サイズは、論文に貼った状態で本文と同程度になるようにする。図ごとに縮小率を
  変えない。
- 位置や大きさの微調整は、`constrained_layout` など標準の機能で自動的に決まる形にする。
  手動で座標を指定するのは他に手段が無い場合だけで、その旨を明示する。

## 表

- pandas の `to_latex` で書き出す。数値を手で tex に転記しない。
