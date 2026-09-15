# 英文 house style

IEEE 向け英文原稿の基準。`SKILL.md` で足りないときに読む。

## 変えてはいけないもの

言い換えの過程で次を変えない。変える必要があると判断したら、直さずに書き手に返す。

- 貢献・新規性・主張の範囲
- 仮定、条件、定義域、量化子、例外、否定
- 因果関係
- 比較の向きと強さ
- 実験設定、データセット、比較手法、指標、数値、単位
- 理論的な位置づけ (exact / equivalent / approximate / sufficient / necessary /
  optimal / convex / convergent)
- 定義、記法、略語、変数の役割、アルゴリズムの意味
- 引用の範囲と帰属

足りない前提・比較対象・説明・限界・結果を、書いて補わない。

## 節ごとの型

原稿に既にその要素があるときだけ、この順に整える。無い要素を作らない。

- **Title**: 範囲をそのまま保つ。宣伝的な形容詞を足さない。`time-varying`,
  `graph-based`, `eigendecomposition-free` のような確立した複合語は崩さない。
- **Abstract**: `In this paper,` → 実世界の問題 → 既存手法の限界 → 提案 → 機構・仮定 → 評価設定 → 根拠に見合う結果。
  引用・数式・未定義の略語を入れない。`Recently`, `With the rapid development of` で
  始めない。`The effectiveness of the proposed method is verified` で終えない。
- **Introduction**: 実世界の問題 → 具体的な欠落 → 手法 → 貢献。関連研究は引用の列挙ではなく、
  仮定・能力・限界・計算量・信号モデルで書く。既存手法は適切に分類して表記する。`To the best of our knowledge` を入れない。
  貢献の箇条書きは並列にし、それぞれ単独で確認できる形にする。
- **Related work**: 引用とそれが支える文の対応を保つ。`some` / `most` / `many` /
  `existing` の範囲を確認せずに変えない。限定的な記述を分野全体の結論に書き換えない。
- **Method**: 対象・入力・出力・仮定・目的・制約を、実装の詳細より先に置く。
  framework / formulation / method / algorithm / architecture / estimator / filter /
  implementation を区別する。実装の工夫を理論的貢献のように書かない。
- **Theory**: 量化子・条件・定理間の依存を保つ。`under Assumption 1` を落とさない。
  散文の要約を形式的な主張より広くしない。`obvious` / `trivial` を足さない。
- **Experiments**: 手順 → 観測 → 範囲を限った解釈。結果を報告する文と、理由を説明する文を
  分ける。選んだデータでの結果を普遍的な主張にしない。
- **Conclusion**: 新しい貢献・結果・限界・引用を出さない。完了した結果と今後の課題を
  区別する。限界を読みやすさのために消さない。

## 動詞

| 動詞 | 用途 | 注意 |
| --- | --- | --- |
| `consider` | 設定・モデル・問題クラスを置く | 範囲を保つ |
| `assume` | 明示的なモデル仮定 | 仮定の追加・削除・拡大は書き手に返す |
| `formulate` | 数学的に定式化する | 言葉の説明だけに使わない |
| `propose` | 実際の貢献を出す | 繰り返さない。新規性を足さない |
| `present` | 中立な提示 | `propose` が言い過ぎのときに使う |
| `derive` | 解析的に導く | exact / approximate の別を保つ |
| `show` | 理論的・実験的な直接の根拠 | 根拠の主体を明示する |
| `prove` | 形式的証明 | 実験の言い換えに使わない |
| `demonstrate` | 強い直接の根拠 | 実験では範囲を確認する |
| `indicate` | 限定的な実験的根拠 | `show` に強めない |
| `suggest` | 間接的・予備的な根拠 | 不確かさを保つ |
| `validate` | 定義された性質・実装を検証する | 「性能が良い」の代用にしない |
| `evaluate` | 実験的評価の手続き | 指標・設定を示す |
| `compare` | 範囲を限った比較 | 比較対象と向きを保つ |
| `outperform` | 明示された設定での優位 | 比較対象・指標・条件を一般化しない |
| `achieve` / `obtain` | 得られた結果 | 指標・値・条件をそのまま残す |

## 主張の強さ

弱い順に `may suggest` → `suggests` → `indicates` → `shows` → `demonstrates` →
`establishes` / `proves` / `guarantees`。法助動詞も同じで、`may` / `can` /
`is expected to` / `will` / `does` は別物として扱う。

根拠が原稿に無いまま使わない語:

- `first`, `for the first time`, `novel`
- `always`, `all`, `any`, `regardless of`, `universally`
- `optimal`, `exact`, `guaranteed`, `provably`
- `state-of-the-art`, `superior to existing methods`
- `significantly` (有意性の根拠が無いとき)、`robust` (頑健性の実験が無いとき)

指標や基準が無いまま使うと曖昧になる語: `effective`, `efficient`, `promising`,
`reasonable`, `remarkable`, `substantial`, `better performance`, `high accuracy`,
`low complexity`。原稿にある測定可能な記述に置き換える。

## 比較と根拠の型

必要な情報が原稿にあるときだけ使う。

- `Compared with [baseline], the method reduces [metric] by [value] under [setting].`
- `Experiments on [dataset] show that [bounded result] for [metric/condition].`
- `The result indicates [limited interpretation], but does not establish [broader claim].`
- `Under [assumption], Proposition X shows that [exact formal consequence].`

避ける: `The method is better than existing methods.` /
`The experiments prove the effectiveness of the method.`

## 表記

- 米式綴りを使う (投稿先が指定する場合を除く)。
- 曖昧さを防ぐときは serial comma を使う。
- `work`, `research` は不可算として扱う。
- データセット・アルゴリズム・定理・指標・変換の大文字表記を保つ。
- 単複を読みやすさのために変えない。1 つのグラフか、グラフ列か、信号のクラスかが
  変わる。
- 複合語: `time-varying`, `graph-based`, `data-driven`, `model-based`, `end-to-end`,
  `real-world`, `large-scale`, `matrix-free`, `eigendecomposition-free`,
  `closed-form`。形容詞のときは `vertex-domain` / `spectral-domain`、名詞句のときは
  `in the vertex domain` / `in the spectral domain`。
- 分野で定着した綴りを、一般的な辞書に合わせるためだけに変えない。

## GSP の用語

次を混同しない。

- graph signal processing (GSP)
- graph Fourier transform (GFT)
- graph Laplacian と variation operator
- vertex domain / graph spectral domain / graph frequency domain
- graph signal / signal on a graph / a class of graph signals
- sampling set / sampled signal / downsampling / upsampling / reconstruction
- graph filter / correction filter / sampling filter / reconstruction filter
- graph smoothness / smoothness prior / subspace prior / bandlimitedness
- static graph / time-varying graph / temporal graph sequence
