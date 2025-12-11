---
layout: page
title: SD7K
description: High-resolution Document Shadow Removal Dataset and Network
img: assets/img/sd7k.jpg
importance: 2
category: research
---

SD7K is a comprehensive solution for document shadow removal, consisting of a large-scale real-world dataset and a frequency-aware shadow erasing network. This project addresses the practical problem of shadow removal in document digitization workflows.

## Dataset Highlights

- **Large-scale**: Over 7,000 high-resolution document images
- **Real-world diversity**: Captured under various lighting conditions and document types
- **High quality**: Carefully curated and annotated shadow regions
- **Practical relevance**: Designed for real document processing applications

## Technical Innovation

### Frequency-Aware Shadow Erasing Network

Our network introduces several key innovations:

1. **Frequency Domain Analysis**: Analyzes shadows in the frequency domain for better understanding
2. **Structure Preservation**: Maintains document structure while removing shadows
3. **Multi-scale Processing**: Handles shadows at different scales and intensities

### Architecture Details

- **Encoder-Decoder Structure**: Efficient feature extraction and reconstruction
- **Attention Mechanisms**: Focus on shadow regions while preserving text quality
- **Loss Functions**: Specialized loss functions for document-specific requirements

## Applications

This work has practical implications for:
- Document digitization workflows
- Optical Character Recognition (OCR) systems
- Archive preservation projects
- Mobile document scanning applications

## Performance

SD7K achieves state-of-the-art performance on document shadow removal benchmarks, significantly outperforming existing methods in both quantitative metrics and visual quality.

## Publication

Published at **ICCV 2023**, one of the premier conferences in computer vision.

**Citation:**
```
Li, Z., Ke, Q., Bennamoun, M., & Boussaid, F. (2023). 
High-resolution Document Shadow Removal via A Large-scale Real-world Dataset 
and A Frequency-aware Shadow Erasing Net. 
IEEE/CVF International Conference on Computer Vision.
```