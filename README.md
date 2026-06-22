# Adé

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/) [![Adé Atlas: progress & invariants](https://img.shields.io/badge/Ad%C3%A9%20Atlas-progress%20%26%20invariants-blue)](https://wdm33.github.io/ade-atlas/)

> A Cardano-compatible node organized around singular authority, deterministic execution, replayable recovery, and mechanically enforced invariants.

This repository contains the **Adé** whitepaper. Adé is a sister project to the [Constitutional Verification Model (CVM)](https://github.com/vadrant-labs/cvm): it translates CVM's three foundations — invariant correctness, deterministic execution, and replayable history — into an engineering program for a verifiable Cardano node.

**📄 Read the paper:** [`paper/ade-cvm-whitepaper.md`](paper/ade-cvm-whitepaper.md)

**🗺️ Follow progress & view the invariants:** [Adé Atlas →](https://wdm33.github.io/ade-atlas/)

## Abstract

Cardano's security depends not only on consensus and cryptography, but on the ability of independent implementations, operators, and auditors to establish what a node decided, why it decided it, and whether the same evidence would produce the same result again.

Adé is a new Cardano-compatible node effort built around that requirement. It does not seek to reproduce the internal structure of the existing Haskell node. Instead, it treats the deployed Cardano implementation as a compatibility oracle for externally observable behavior while organizing its own architecture around singular authority, deterministic execution, replayable recovery, and mechanically enforced invariants.

The project is inspired by the Constitutional Verification Model (CVM): a framework that separates legitimate rule authority from evidence that execution followed those rules. CVM identifies three jointly necessary foundations for independent verification: invariant correctness, deterministic execution, and replayable history. Adé translates these foundations into an engineering program for a Cardano node: authoritative state transitions are pure and replayable; hash-critical wire bytes are preserved; storage recovery is replay-equivalent; protocol and ledger failures are structured; and every significant invariant is expected to have a concrete enforcement point in tests, CI, or reproducible evidence.

This paper describes the relationship between CVM and Adé, the project's constitutional architecture, its compatibility obligations, and a roadmap toward autonomous critical infrastructure: infrastructure capable of operating, recovering, upgrading, and producing auditable evidence without relying on hidden operator judgment or irreproducible local state.

## Contents

- [Abstract](paper/ade-cvm-whitepaper.md#abstract)
- [1. The Problem: A Node Can Agree Without Being Easy to Verify](paper/ade-cvm-whitepaper.md#1-the-problem-a-node-can-agree-without-being-easy-to-verify)
- [2. CVM as the Conceptual Foundation](paper/ade-cvm-whitepaper.md#2-cvm-as-the-conceptual-foundation)
- [3. From Model to Node Architecture](paper/ade-cvm-whitepaper.md#3-from-model-to-node-architecture)
- [4. Compatibility Without Architectural Imitation](paper/ade-cvm-whitepaper.md#4-compatibility-without-architectural-imitation)
- [5. Byte Authority: Preserving Protocol Truth and Replay Truth](paper/ade-cvm-whitepaper.md#5-byte-authority-preserving-protocol-truth-and-replay-truth)
- [6. Constitutional Verification in Practice](paper/ade-cvm-whitepaper.md#6-constitutional-verification-in-practice)
- [7. Replay as the Integration Contract](paper/ade-cvm-whitepaper.md#7-replay-as-the-integration-contract)
- [8. Evidence Rather Than Assertion](paper/ade-cvm-whitepaper.md#8-evidence-rather-than-assertion)
- [9. Current Groundwork and Honest Scope](paper/ade-cvm-whitepaper.md#9-current-groundwork-and-honest-scope)
- [10. Toward Autonomous Critical Infrastructure](paper/ade-cvm-whitepaper.md#10-toward-autonomous-critical-infrastructure)
- [11. Conclusion](paper/ade-cvm-whitepaper.md#11-conclusion)

## Building the paper

The canonical source is [`paper/ade-cvm-whitepaper.md`](paper/ade-cvm-whitepaper.md). Rendered PDF and HTML are produced with [Pandoc](https://pandoc.org) (PDF output additionally needs a LaTeX engine such as XeLaTeX):

```sh
make pdf     # -> build/ade-cvm-whitepaper.pdf
make html    # -> build/ade-cvm-whitepaper.html
make         # both
```

## License

This work is licensed under [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/). See [`LICENSE`](LICENSE) for the full text.

© 2026 Wontez Morgan.

## Citation

```bibtex
@misc{morgan2026ade,
  title={Adé: Toward a Constitutionally Verifiable Cardano Node},
  author={Wontez Morgan},
  year={2026},
  howpublished={GitHub repository},
  url={https://github.com/wdm33/ade-cvm}
}
```
