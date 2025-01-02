# CIS 5300 Final Project: Pruning Methods for Language Models

Welcome to the repository for our final project in the CIS 5300: Natural Language Processing course (Fall 2024). This project focuses on exploring and benchmarking various pruning methods applied to language models, with a primary goal of improving model efficiency while maintaining performance.

## Project Overview

Our study investigates **Wanda**, an innovative pruning technique based on weights and activations, and compares its performance against both traditional methods like **Magnitude Pruning** and advanced techniques like **SparseGPT**. These methods were tested on Meta’s **Open Pre-trained Transformer (OPT)** models of two sizes—125M and 350M parameters.

### Objectives
- Evaluate the performance of pruning methods on a **text summarization task** using the **Billsum dataset** ([link](https://huggingface.co/datasets/FiscalNote/billsum)).
- Compare these methods across:
  - **Model Sizes**: 150M and 350M parameters.
  - **Sparsity Paradigms**: Unstructured and Structured N:M Pruning.
  - **Fine-tuning Methods**: Full fine-tuning and QLoRA.
- Assess models on both **performance** (using ROUGE and Bertscore metrics) and **efficiency** (model size, non-zero parameters, inference time, etc.).
- Conduct qualitative error analysis to understand the impact of pruning on model outputs.

### Key Highlights
1. **Performance Metrics**:
   - Pruned models were evaluated for accuracy and robustness using standard metrics like ROUGE and Bertscore.
2. **Efficiency Analysis**:
   - Metrics such as reduced model sizes, non-zero parameter counts, and improved inference times were calculated.
3. **Fine-tuning**:
   - Fine-tuning techniques such as full fine-tuning and QLoRa were applied post-pruning to align models with task-specific requirements.
4. **Error Analysis**:
   - A thorough qualitative review was performed to identify common failure patterns in pruned models.

## Repository Contents
- **Code**: Scripts for training, pruning, and evaluation.
- **Reports**: Detailed findings and analysis.
- **Presentations**: Slides and project presentation video summarizing project results.

## How to Get Started
1. Clone this repository:
   git clone https://github.com/vinaypadegal/opt_pruning.git
2. Follow the instructions in the documentation for setup and execution.

## Results
Our results demonstrate trade-offs between performance and efficiency across various pruning strategies. The insights from this project contribute to understanding the practical applications of pruning in large language models.
