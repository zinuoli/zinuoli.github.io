---
layout: post
title: Tackling Document Shadow Removal with Deep Learning
date: 2024-06-15 14:30:00
description: How we built SD7K, a large-scale dataset for document shadow removal
tags: computer-vision document-analysis deep-learning
categories: research
thumbnail: assets/img/sd7k.jpg
---

Document digitization is everywhere in our modern world, but shadows cast on documents during scanning or photography can significantly degrade the quality and readability of the digitized content. This seemingly simple problem turned out to be quite challenging to solve effectively.

## The Problem with Existing Approaches

Most existing methods for shadow removal were designed for natural images, not documents. Documents have unique characteristics:
- High contrast between text and background
- Geometric structures and layouts
- Sensitivity to artifacts that might not matter in natural images

## Our Solution: SD7K Dataset and Frequency-Aware Network

We created SD7K, a large-scale real-world dataset specifically for document shadow removal. What makes this dataset special:

1. **Real-world diversity**: Captured under various lighting conditions and document types
2. **High resolution**: Maintaining the quality needed for practical applications
3. **Comprehensive annotations**: Carefully labeled shadow regions and clean references

Along with the dataset, we developed a frequency-aware shadow erasing network that:
- Analyzes shadows in the frequency domain
- Preserves document structure while removing shadows
- Achieves state-of-the-art performance on benchmark datasets

## Impact and Applications

This work has practical implications for:
- Document digitization workflows
- Optical Character Recognition (OCR) systems
- Archive preservation projects
- Mobile document scanning applications

The combination of a high-quality dataset and an effective algorithm opens up new possibilities for automated document processing pipelines.