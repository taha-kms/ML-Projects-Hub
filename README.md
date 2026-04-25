# ML-Projects-Hub

A curated collection of machine-learning projects, organized as Git submodules. Each submodule is an independent, self-contained repository — this hub provides a single entry point for cloning, browsing, and keeping them up to date.

## Projects

| Project | Domain | Stack | Description |
|---|---|---|---|
| [CLASSMATE-RAG](https://github.com/taha-kms/CLASSMATE-RAG) | NLP / RAG | Python, ChromaDB, llama.cpp | Local-first retrieval-augmented generation system for course materials. Hybrid BM25 + vector retrieval with subject-aware routing, multilingual embeddings, and offline GGUF LLMs. |
| [Speech-Digit-Classification](https://github.com/taha-kms/Speech-Digit-Classification) | Audio / CV | TensorFlow, CNN | Spoken-digit (0–9) classifier trained on Mel-spectrogram features from the Free Spoken Digit Dataset. |
| [Health-Risk-Predictor](https://github.com/taha-kms/Health-Risk-Predictor) | Healthcare / DL | TensorFlow | Clinical survival prediction using a deep neural network. |
| [Tweet-Sentiment-Analysis](https://github.com/taha-kms/Tweet-Sentiment-Analysis) | NLP | Python | Predicting emotional polarity in tweets. |

## Getting Started

Clone with all submodules:

```sh
git clone --recurse-submodules https://github.com/taha-kms/ML-Projects-Hub.git
```

If you've already cloned without submodules:

```sh
make init
```

## Common Tasks

A `Makefile` wraps the common submodule chores:

```sh
make init      # initialize submodules after a plain clone
make update    # pull the latest commit on main for every submodule
make status    # show submodule status
make foreach CMD="git log -1 --oneline"   # run a command in each submodule
```

All submodules track their `main` branch (configured in `.gitmodules`), so `make update` advances each one to the latest upstream commit and stages the new pointers in this repo.

## Repository Layout

```
ML-Projects-Hub/
├── CLASSMATE-RAG/                (submodule)
├── Health-Risk-Predictor/        (submodule)
├── Speech-Digit-Classification/  (submodule)
├── Tweet-Sentiment-Analysis/     (submodule)
├── .github/workflows/            CI to keep submodules fresh
├── CONTRIBUTING.md
├── LICENSE
├── Makefile
└── README.md
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). New ML projects, fixes, and documentation improvements are welcome.

## License

The hub itself is released under the [MIT License](LICENSE). Each linked submodule is governed by its own license — check the individual repository.
