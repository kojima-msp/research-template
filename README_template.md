PROJECT_NAME
====

[![paper-info](https://img.shields.io/badge/VENUE-Accepted-gray?labelColor=00629B)]()
[![doi](https://img.shields.io/badge/DOI-XXXX-gray?labelColor=FCB61F)]()
[![arXiv](https://img.shields.io/badge/arXiv-XXXX-gray?labelColor=b31b1b)]()
[![Python](https://custom-icon-badges.herokuapp.com/badge/Python-3572A5?logo=Python&logoColor=white)]()
[![our-page](https://img.shields.io/badge/Our_Homepage-green)](https://www.sip.comm.eng.osaka-u.ac.jp/)

Official PyTorch implementation of the paper "[TITLE]()" (VENUE).

## Abstract
> 論文の abstract をそのまま貼る。

## Install
We use [uv](https://docs.astral.sh/uv/) to manage the Python environment.

```bash
git clone https://github.com/<user>/<repo>.git
cd <repo>
uv sync
```

データセットや学習済み重みを配布する場合は、その取得コマンドをここに書く。

## Usage

実行コマンドはすべてここに書く。論文の図表と、それを再生成するコマンドを対応させる。

### Make datasets (Optional)
```bash
uv run python datasets/make_xxx.py
```

### Train models
```bash
#     --dataset {a, b}
uv run python src/exp/train/train_proposed.py --dataset a
```

### Evaluate models
```bash
#     --dataset {a, b}
uv run python src/exp/eval/eval.py --dataset a
```

### Table 1 and 2
```bash
uv run python src/exp/eval/print_scores.py --dataset a
```

### Figure 3
```bash
uv run python src/exp/eval/visualization.py --dataset a
```

## Citation
```
```
