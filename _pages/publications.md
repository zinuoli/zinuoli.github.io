---
layout: page
permalink: /Publications/
title: Publications
description:
nav: false
nav_order: 2
_styles: |
  /* ========== Publications 页面样式 - 美化增强版 ========== */
  /* 引入学术风格衬线字体 */
  @import url('https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Playfair+Display:ital,wght@0,500;0,600;0,700;1,500&family=Source+Serif+4:ital,opsz,wght@0,8..60,400;0,8..60,500;0,8..60,600;0,8..60,700;1,8..60,400;1,8..60,500&display=swap');

  body {
    background: linear-gradient(135deg, #fdfbfb 0%, #f7f4f9 50%, #faf8fc 100%);
    min-height: 100vh;
    position: relative;
    overflow-x: hidden;
    animation: backgroundShiftLight 20s ease-in-out infinite;
    font-family: "Crimson Pro", "Source Serif 4", Georgia, "Times New Roman", serif;
  }

  @keyframes backgroundShiftLight {
    0%, 100% { 
      background: linear-gradient(135deg, #fdfbfb 0%, #f7f4f9 50%, #faf8fc 100%);
    }
    50% { 
      background: linear-gradient(135deg, #faf8fc 0%, #fdfbfb 50%, #f7f4f9 100%);
    }
  }

  @keyframes backgroundShiftDark {
    0%, 100% { 
      background: linear-gradient(135deg, #0d1117 0%, #161b22 50%, #0d1117 100%);
    }
    50% { 
      background: linear-gradient(135deg, #161b22 0%, #0d1117 50%, #161b22 100%);
    }
  }

  /* 全局浮动装饰元素 */
  body::before,
  body::after {
    content: '';
    position: fixed;
    border-radius: 50%;
    opacity: 0.4;
    z-index: 0;
    pointer-events: none;
  }

  body::before {
    width: 400px;
    height: 400px;
    background: radial-gradient(circle, rgba(0, 161, 233, 0.1) 0%, transparent 70%);
    top: -100px;
    right: -100px;
    animation: floatBubble1 25s ease-in-out infinite;
  }

  body::after {
    width: 350px;
    height: 350px;
    background: radial-gradient(circle, rgba(118, 75, 162, 0.08) 0%, transparent 70%);
    bottom: -80px;
    left: -80px;
    animation: floatBubble2 30s ease-in-out infinite;
  }

  @keyframes floatBubble1 {
    0%, 100% { transform: translate(0, 0) scale(1); }
    50% { transform: translate(-50px, 50px) scale(1.1); }
  }

  @keyframes floatBubble2 {
    0%, 100% { transform: translate(0, 0) scale(1); }
    50% { transform: translate(50px, -50px) scale(1.15); }
  }

  .post {
    font-family: "Crimson Pro", "Source Serif 4", Georgia, "Times New Roman", serif;
    color: #2c3e50;
    position: relative;
    z-index: 1;
  }

  /* 页面标题样式 - 增强版 */
  .post-header {
    text-align: left;
    margin: 0 0 1.5rem 0;
    padding: 0;
    background: transparent;
    border: none;
    box-shadow: none;
    position: relative;
  }

  .post-title {
    font-family: "Playfair Display", Georgia, "Times New Roman", serif;
    font-size: 2.2rem;
    margin-bottom: 0.4rem;
    color: #2c3e50;
    font-weight: 700;
    letter-spacing: -0.5px;
    line-height: 1.25;
    position: relative;
    display: inline-block;
  }

  .post-title::after {
    content: '';
    position: absolute;
    bottom: -4px;
    left: 0;
    width: 60px;
    height: 3px;
    background: linear-gradient(90deg, #00A1E9 0%, #764ba2 100%);
    border-radius: 2px;
  }

  .post-description {
    font-size: 0.95rem;
    color: #7f8c8d;
    margin-top: 0.8rem;
    font-weight: 500;
    line-height: 1.6;
  }

  /* ========== 年份分组标题 - 现代极简风格 ========== */
  .publications h2.year,
  .publications h2.bibliography {
    font-family: -apple-system, BlinkMacSystemFont, "SF Pro Display", "Segoe UI", Roboto, sans-serif;
    font-size: 0.72rem;
    font-weight: 600;
    color: #64748b;
    text-transform: uppercase;
    letter-spacing: 0.12em;
    margin: 2.8rem 0 1rem 0;
    padding: 0;
    position: relative;
    display: flex;
    align-items: center;
    width: 100%;
    gap: 1rem;
  }

  /* 左侧竖线装饰 */
  .publications h2.year::before,
  .publications h2.bibliography::before {
    content: '';
    width: 3px;
    height: 100%;
    min-height: 20px;
    background: linear-gradient(180deg, #00A1E9 0%, #764ba2 100%);
    border-radius: 2px;
    flex-shrink: 0;
  }

  /* 右侧延伸线 */
  .publications h2.year::after,
  .publications h2.bibliography::after {
    content: '';
    flex: 1;
    height: 1px;
    background: linear-gradient(90deg, #e2e8f0 0%, transparent 100%);
  }

  /* 悬停效果 */
  .publications h2.year:hover,
  .publications h2.bibliography:hover {
    color: #00A1E9;
  }

  .publications h2.year:hover::before,
  .publications h2.bibliography:hover::before {
    background: linear-gradient(180deg, #00A1E9 0%, #00A1E9 100%);
    box-shadow: 0 0 12px rgba(0, 161, 233, 0.4);
  }

  /* Publications 样式 */
  .publications {
    margin-top: 1rem;
    margin-bottom: 0.6rem;
  }

  .publications .bibliography {
    margin-top: 0;
    counter-reset: pub-counter;
  }

  .publications .bibliography li {
    margin-bottom: 0.6rem;
    padding: 0.8rem 1rem 0.8rem 1rem;
    background: rgba(255, 255, 255, 0.75);
    border-radius: 14px;
    box-shadow: 0 2px 10px rgba(0, 161, 233, 0.06);
    border: 1px solid rgba(0, 161, 233, 0.1);
    transition: all 0.35s cubic-bezier(0.4, 0, 0.2, 1);
    position: relative;
    overflow: visible;
    backdrop-filter: blur(12px);
    width: 100%;
    min-width: 0;
    counter-increment: pub-counter;
  }

  /* 论文序号装饰 */
  .publications .bibliography li::after {
    content: counter(pub-counter);
    position: absolute;
    top: 0.8rem;
    right: 1rem;
    font-size: 0.7rem;
    font-weight: 700;
    color: rgba(0, 161, 233, 0.3);
    font-family: "Playfair Display", serif;
  }

  .publications .bibliography li .row {
    display: flex;
    flex-wrap: nowrap;
    width: 100%;
  }

  .publications .bibliography li .col-sm-8,
  .publications .bibliography li .col-sm-10 {
    flex: 1;
    max-width: none;
    width: auto;
  }

  .publications .bibliography li::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(135deg, rgba(0, 161, 233, 0.08) 0%, rgba(118, 75, 162, 0.08) 100%);
    opacity: 0;
    transition: opacity 0.4s ease;
    border-radius: 14px;
  }

  .publications .bibliography li:hover::before {
    opacity: 1;
  }

  .publications .bibliography li:hover {
    transform: translateY(-3px) translateX(2px);
    box-shadow: 0 8px 24px rgba(0, 161, 233, 0.15);
    border-color: rgba(0, 161, 233, 0.25);
    background: rgba(255, 255, 255, 0.9);
  }

  .publications .bibliography li:last-child {
    margin-bottom: 0;
  }

  /* 论文标题 - 增强 */
  .publications .title {
    font-size: 0.98rem;
    font-weight: 700;
    margin-bottom: 0.25rem;
    color: #1a2530;
    line-height: 1.45;
    position: relative;
    z-index: 1;
    white-space: normal;
    word-wrap: break-word;
    overflow-wrap: break-word;
    letter-spacing: -0.01em;
    width: 100%;
    transition: color 0.3s ease;
  }

  .publications .bibliography li:hover .title {
    color: #00A1E9;
  }

  .publications .author {
    font-size: 0.82rem;
    margin-bottom: 0.2rem;
    color: #5a6c7d;
    position: relative;
    z-index: 1;
    line-height: 1.4;
  }

  .publications .author em {
    font-weight: 700;
    font-style: normal;
    color: #00A1E9;
    background: linear-gradient(135deg, #00A1E9 0%, #764ba2 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  .publications .author em sup,
  .publications .author sup {
    -webkit-text-fill-color: #00A1E9;
    color: #00A1E9;
    font-size: 0.7em;
    vertical-align: super;
  }

  .publications .periodical {
    font-size: 0.8rem;
    margin-bottom: 0.2rem;
    color: #7f8c8d;
    font-style: italic;
    position: relative;
    z-index: 1;
    line-height: 1.3;
  }

  .publications .periodical .venue-abbr {
    font-style: normal;
    font-weight: 600;
    margin-right: 0.3rem;
    font-size: 0.78rem;
  }

  .publications .periodical .venue-separator {
    color: #ccc;
    margin: 0 0.4rem;
    font-style: normal;
  }

  /* CCF 等级徽章 - 增强 */
  .ccf-badge {
    display: inline-block;
    font-size: 0.62rem;
    font-weight: 700;
    padding: 0.12rem 0.5rem;
    border-radius: 6px;
    margin-left: 0.5rem;
    font-style: normal;
    vertical-align: middle;
    letter-spacing: 0.02em;
    text-transform: uppercase;
  }

  .ccf-badge-ccfa {
    background: linear-gradient(135deg, #ff6b6b 0%, #ee5a5a 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(238, 90, 90, 0.35);
  }

  .ccf-badge-ccfb {
    background: linear-gradient(135deg, #ffa726 0%, #fb8c00 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(251, 140, 0, 0.35);
  }

  .ccf-badge-ccfc {
    background: linear-gradient(135deg, #66bb6a 0%, #43a047 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(67, 160, 71, 0.35);
  }

  .ccf-badge-ccfnone {
    background: linear-gradient(135deg, #90a4ae 0%, #78909c 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(120, 144, 156, 0.35);
  }

  /* CORE 等级徽章 */
  .core-badge {
    display: inline-block;
    font-size: 0.62rem;
    font-weight: 700;
    padding: 0.12rem 0.5rem;
    border-radius: 6px;
    margin-left: 0.5rem;
    font-style: normal;
    vertical-align: middle;
    letter-spacing: 0.02em;
  }

  .core-badge-coreastar {
    background: linear-gradient(135deg, #7c4dff 0%, #651fff 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(101, 31, 255, 0.35);
  }

  .core-badge-corea {
    background: linear-gradient(135deg, #448aff 0%, #2979ff 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(41, 121, 255, 0.35);
  }

  .core-badge-coreb {
    background: linear-gradient(135deg, #69f0ae 0%, #00e676 100%);
    color: #1b5e20;
    box-shadow: 0 2px 6px rgba(0, 230, 118, 0.35);
  }

  /* SCI 分区徽章 */
  .sci-badge {
    display: inline-block;
    font-size: 0.62rem;
    font-weight: 700;
    padding: 0.12rem 0.5rem;
    border-radius: 6px;
    margin-left: 0.5rem;
    font-style: normal;
    vertical-align: middle;
    letter-spacing: 0.02em;
  }

  .sci-badge-sciq1 {
    background: linear-gradient(135deg, #e91e63 0%, #c2185b 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(194, 24, 91, 0.35);
  }

  .sci-badge-sciq2 {
    background: linear-gradient(135deg, #ff9800 0%, #f57c00 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(245, 124, 0, 0.35);
  }

  .sci-badge-sciq3 {
    background: linear-gradient(135deg, #8bc34a 0%, #689f38 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(104, 159, 56, 0.35);
  }

  .sci-badge-sciq4 {
    background: linear-gradient(135deg, #9e9e9e 0%, #757575 100%);
    color: white;
    box-shadow: 0 2px 6px rgba(117, 117, 117, 0.35);
  }

  /* 链接按钮 - 增强版 */
  .publications .links {
    font-size: 0.74rem;
    margin-top: 0.4rem;
    position: relative;
    z-index: 1;
    display: flex;
    flex-wrap: wrap;
    gap: 0.35rem;
  }

  .publications .links a {
    display: inline-flex;
    align-items: center;
    gap: 0.2rem;
    padding: 0.2rem 0.55rem;
    background: linear-gradient(135deg, #f8f9fa 0%, #f1f3f4 100%);
    color: #5a6c7d;
    border-radius: 8px;
    text-decoration: none;
    transition: all 0.28s cubic-bezier(0.4, 0, 0.2, 1);
    font-weight: 600;
    border: 1px solid #e0e3e7;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
    font-size: 0.72rem;
  }

  .publications .links a i {
    font-size: 0.75em;
    opacity: 0.75;
  }

  .publications .links a:hover {
    background: linear-gradient(135deg, #00A1E9 0%, #0082C8 100%);
    color: white;
    border-color: transparent;
    transform: translateY(-2px) scale(1.02);
    box-shadow: 0 6px 16px rgba(0, 161, 233, 0.35);
  }

  .publications .links a:hover i {
    opacity: 1;
  }

  /* PDF 按钮 */
  .publications .links a[href*="pdf"],
  .publications .links a[href*="arxiv"] {
    background: linear-gradient(135deg, #fef9f9 0%, #fdf5f5 100%);
    color: #d9534f;
    border-color: #f8d7da;
  }

  .publications .links a[href*="pdf"]:hover,
  .publications .links a[href*="arxiv"]:hover {
    background: linear-gradient(135deg, #f5a5a2 0%, #e88985 100%);
    color: white;
    border-color: transparent;
    box-shadow: 0 6px 16px rgba(217, 83, 79, 0.3);
  }

  /* Code/GitHub 按钮 */
  .publications .links a[href*="github"] {
    background: linear-gradient(135deg, #fafbfc 0%, #f3f4f6 100%);
    color: #586069;
    border-color: #e1e4e8;
  }

  .publications .links a[href*="github"]:hover {
    background: linear-gradient(135deg, #6a737d 0%, #586069 100%);
    color: white;
    border-color: transparent;
    box-shadow: 0 6px 16px rgba(88, 96, 105, 0.3);
  }

  /* Website 按钮 */
  .publications .links a[href*="xiaofeng-tan.github.io/projects"],
  .publications .links a[href*="wengwanjiang.github.io"] {
    background: linear-gradient(135deg, #f4faf5 0%, #e8f5e9 100%);
    color: #5cb85c;
    border-color: #c3e6cb;
  }

  .publications .links a[href*="xiaofeng-tan.github.io/projects"]:hover,
  .publications .links a[href*="wengwanjiang.github.io"]:hover {
    background: linear-gradient(135deg, #81c784 0%, #66bb6a 100%);
    color: white;
    border-color: transparent;
    box-shadow: 0 6px 16px rgba(92, 184, 92, 0.3);
  }

  /* Award 按钮 */
  .publications .links a.award {
    background: linear-gradient(135deg, #fffcf5 0%, #fff8e7 100%);
    color: #f0ad4e;
    border-color: #ffeeba;
  }

  .publications .links a.award:hover {
    background: linear-gradient(135deg, #ffcc80 0%, #ffb74d 100%);
    color: white;
    border-color: transparent;
    box-shadow: 0 6px 16px rgba(240, 173, 78, 0.3);
  }

  /* Abstract/Bib 按钮 */
  .publications .links a.abstract,
  .publications .links a.bibtex {
    background: linear-gradient(135deg, #faf5fc 0%, #f3e8f7 100%);
    color: #9b59b6;
    border-color: #e2d4ea;
  }

  .publications .links a.abstract:hover,
  .publications .links a.bibtex:hover {
    background: linear-gradient(135deg, #b388c9 0%, #a370b8 100%);
    color: white;
    border-color: transparent;
    box-shadow: 0 6px 16px rgba(155, 89, 182, 0.3);
  }

  /* 搜索框样式 - 增强 */
  .bibsearch-form-input {
    background: rgba(255, 255, 255, 0.75);
    border: 2px solid rgba(0, 161, 233, 0.15);
    border-radius: 12px;
    padding: 0.65rem 1.2rem;
    font-size: 0.92rem;
    transition: all 0.3s ease;
    backdrop-filter: blur(12px);
    width: 100%;
    max-width: 400px;
  }

  .bibsearch-form-input:focus {
    border-color: #00A1E9;
    box-shadow: 0 0 0 4px rgba(0, 161, 233, 0.12);
    outline: none;
    background: rgba(255, 255, 255, 0.95);
  }

  /* Abstract/Bibtex 展开内容样式 */
  .publications .abstract,
  .publications .bibtex {
    margin-top: 0.5rem;
    padding: 0.8rem 1rem;
    background: rgba(248, 249, 250, 0.9);
    border-radius: 10px;
    border-left: 3px solid #00A1E9;
    font-size: 0.82rem;
    line-height: 1.6;
    color: #5a6c7d;
  }

  .publications .bibtex pre {
    margin: 0;
    font-size: 0.75rem;
    background: transparent;
    padding: 0;
    overflow-x: auto;
  }

  /* ========== 暗色模式 ========== */
  html[data-theme="dark"] body {
    background: linear-gradient(135deg, #0d1117 0%, #161b22 50%, #0d1117 100%);
    animation: backgroundShiftDark 20s ease-in-out infinite;
  }

  html[data-theme="dark"] body::before {
    background: radial-gradient(circle, rgba(94, 200, 242, 0.12) 0%, transparent 70%);
  }

  html[data-theme="dark"] body::after {
    background: radial-gradient(circle, rgba(179, 136, 255, 0.1) 0%, transparent 70%);
  }

  html[data-theme="dark"] .post {
    color: #c9d1d9;
  }

  html[data-theme="dark"] .post-title {
    color: #e6edf3;
  }

  html[data-theme="dark"] .post-title::after {
    background: linear-gradient(90deg, #5ec8f2 0%, #b388ff 100%);
  }

  html[data-theme="dark"] .post-description {
    color: #8b949e;
  }

  /* 年份分组标题 - 暗色模式 */
  /* 年份分组标题 - 暗色模式 */
  /* 年份分组标题 - 暗色模式 */
  html[data-theme="dark"] .publications h2.year,
  html[data-theme="dark"] .publications h2.bibliography {
    color: #64748b;
  }

  html[data-theme="dark"] .publications h2.year::before,
  html[data-theme="dark"] .publications h2.bibliography::before {
    background: linear-gradient(180deg, #5ec8f2 0%, #b388ff 100%);
  }

  html[data-theme="dark"] .publications h2.year::after,
  html[data-theme="dark"] .publications h2.bibliography::after {
    background: linear-gradient(90deg, #30363d 0%, transparent 100%);
  }

  html[data-theme="dark"] .publications h2.year:hover,
  html[data-theme="dark"] .publications h2.bibliography:hover {
    color: #5ec8f2;
  }

  html[data-theme="dark"] .publications h2.year:hover::before,
  html[data-theme="dark"] .publications h2.bibliography:hover::before {
    box-shadow: 0 0 14px rgba(94, 200, 242, 0.5);
  }

  /* Publications 暗色模式 */
  html[data-theme="dark"] .publications .bibliography li {
    background: rgba(22, 27, 34, 0.88);
    border-color: rgba(48, 54, 61, 0.8);
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.35);
  }

  html[data-theme="dark"] .publications .bibliography li::after {
    color: rgba(94, 200, 242, 0.25);
  }

  html[data-theme="dark"] .publications .bibliography li::before {
    background: linear-gradient(135deg, rgba(94, 200, 242, 0.1) 0%, rgba(179, 136, 255, 0.1) 100%);
  }

  html[data-theme="dark"] .publications .bibliography li:hover {
    background: rgba(33, 38, 45, 0.95);
    border-color: rgba(94, 200, 242, 0.45);
    box-shadow: 0 8px 28px rgba(94, 200, 242, 0.18);
  }

  html[data-theme="dark"] .publications .title {
    color: #e6edf3;
  }

  html[data-theme="dark"] .publications .bibliography li:hover .title {
    color: #5ec8f2;
  }

  html[data-theme="dark"] .publications .author {
    color: #b1bac4;
  }

  html[data-theme="dark"] .publications .author em {
    background: linear-gradient(135deg, #5ec8f2 0%, #b388ff 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  html[data-theme="dark"] .publications .periodical {
    color: #8b949e;
  }

  /* 链接按钮 - 暗色模式 */
  html[data-theme="dark"] .publications .links a {
    background: rgba(48, 54, 61, 0.65);
    color: #b1bac4;
    border-color: rgba(48, 54, 61, 0.85);
  }

  html[data-theme="dark"] .publications .links a:hover {
    background: linear-gradient(135deg, #5ec8f2 0%, #3db8e5 100%);
    color: #ffffff;
    border-color: transparent;
    box-shadow: 0 6px 18px rgba(94, 200, 242, 0.4);
  }

  /* PDF/arXiv 按钮 - 暗色模式 */
  html[data-theme="dark"] .publications .links a[href*="pdf"],
  html[data-theme="dark"] .publications .links a[href*="arxiv"] {
    background: rgba(255, 123, 114, 0.14);
    color: #ffa198;
    border-color: rgba(255, 123, 114, 0.28);
  }

  html[data-theme="dark"] .publications .links a[href*="pdf"]:hover,
  html[data-theme="dark"] .publications .links a[href*="arxiv"]:hover {
    background: linear-gradient(135deg, #ff7b72 0%, #f85149 100%);
    color: #ffffff;
    box-shadow: 0 6px 18px rgba(248, 81, 73, 0.4);
  }

  /* GitHub 按钮 - 暗色模式 */
  html[data-theme="dark"] .publications .links a[href*="github"] {
    background: rgba(110, 118, 129, 0.18);
    color: #c9d1d9;
    border-color: rgba(110, 118, 129, 0.35);
  }

  html[data-theme="dark"] .publications .links a[href*="github"]:hover {
    background: linear-gradient(135deg, #6e7681 0%, #57606a 100%);
    color: #ffffff;
    box-shadow: 0 6px 18px rgba(110, 118, 129, 0.4);
  }

  /* Website 按钮 - 暗色模式 */
  html[data-theme="dark"] .publications .links a[href*="xiaofeng-tan.github.io/projects"],
  html[data-theme="dark"] .publications .links a[href*="wengwanjiang.github.io"] {
    background: rgba(63, 185, 80, 0.14);
    color: #7ee787;
    border-color: rgba(63, 185, 80, 0.28);
  }

  html[data-theme="dark"] .publications .links a[href*="xiaofeng-tan.github.io/projects"]:hover,
  html[data-theme="dark"] .publications .links a[href*="wengwanjiang.github.io"]:hover {
    background: linear-gradient(135deg, #3fb950 0%, #2ea043 100%);
    color: #ffffff;
    box-shadow: 0 6px 18px rgba(63, 185, 80, 0.4);
  }

  /* Abstract/Bib 按钮 - 暗色模式 */
  html[data-theme="dark"] .publications .links a.abstract,
  html[data-theme="dark"] .publications .links a.bibtex {
    background: rgba(179, 136, 255, 0.14);
    color: #d2a8ff;
    border-color: rgba(179, 136, 255, 0.28);
  }

  html[data-theme="dark"] .publications .links a.abstract:hover,
  html[data-theme="dark"] .publications .links a.bibtex:hover {
    background: linear-gradient(135deg, #b388ff 0%, #a371f7 100%);
    color: #ffffff;
    box-shadow: 0 6px 18px rgba(179, 136, 255, 0.4);
  }

  /* Abstract/Bibtex 展开内容 - 暗色模式 */
  html[data-theme="dark"] .publications .abstract,
  html[data-theme="dark"] .publications .bibtex {
    background: rgba(22, 27, 34, 0.9);
    border-left-color: #5ec8f2;
    color: #b1bac4;
  }

  /* 搜索框暗色模式 */
  html[data-theme="dark"] .bibsearch-form-input {
    background: rgba(22, 27, 34, 0.88);
    border-color: rgba(48, 54, 61, 0.85);
    color: #c9d1d9;
  }

  html[data-theme="dark"] .bibsearch-form-input:focus {
    border-color: #5ec8f2;
    box-shadow: 0 0 0 4px rgba(94, 200, 242, 0.18);
    background: rgba(33, 38, 45, 0.95);
  }

  html[data-theme="dark"] .bibsearch-form-input::placeholder {
    color: #8b949e;
  }

  /* Footer 样式 */
  html[data-theme="light"] footer.sticky-bottom,
  html[data-theme="light"] footer.fixed-bottom,
  html:not([data-theme="dark"]) footer.sticky-bottom,
  html:not([data-theme="dark"]) footer.fixed-bottom {
    background-color: #f8f9fa !important;
    border-top: 1px solid rgba(0, 0, 0, 0.08) !important;
  }

  html[data-theme="light"] footer.sticky-bottom .container,
  html[data-theme="light"] footer.fixed-bottom .container,
  html:not([data-theme="dark"]) footer.sticky-bottom .container,
  html:not([data-theme="dark"]) footer.fixed-bottom .container {
    color: #5a6c7d !important;
  }

  html[data-theme="light"] footer.sticky-bottom .container a,
  html[data-theme="light"] footer.fixed-bottom .container a,
  html:not([data-theme="dark"]) footer.sticky-bottom .container a,
  html:not([data-theme="dark"]) footer.fixed-bottom .container a {
    color: #00A1E9 !important;
  }

  html[data-theme="dark"] footer.sticky-bottom,
  html[data-theme="dark"] footer.fixed-bottom {
    background-color: #0d1117 !important;
    border-top: 1px solid rgba(48, 54, 61, 0.8) !important;
  }

  html[data-theme="dark"] footer.sticky-bottom .container,
  html[data-theme="dark"] footer.fixed-bottom .container {
    color: #8b949e !important;
  }

  html[data-theme="dark"] footer.sticky-bottom .container a,
  html[data-theme="dark"] footer.fixed-bottom .container a {
    color: #5ec8f2 !important;
  }

  /* 响应式设计 */
  @media (max-width: 768px) {
    .post-title {
      font-size: 1.6rem;
    }

    .post-title::after {
      width: 45px;
      height: 2px;
    }

    .publications h2.year,
    .publications h2.bibliography {
      font-size: 0.68rem;
      margin: 2rem 0 0.8rem 0;
      gap: 0.8rem;
    }

    .publications h2.year::before,
    .publications h2.bibliography::before {
      width: 2px;
      min-height: 16px;
    }

    .publications .bibliography li {
      padding: 0.65rem 0.8rem;
      margin-bottom: 0.5rem;
      border-radius: 12px;
    }

    .publications .bibliography li::after {
      display: none;
    }

    .publications .title {
      font-size: 0.9rem;
    }

    .publications .author {
      font-size: 0.78rem;
    }

    .publications .periodical {
      font-size: 0.76rem;
    }

    .publications .links {
      gap: 0.3rem;
    }

    .publications .links a {
      font-size: 0.7rem;
      padding: 0.18rem 0.5rem;
    }

    .publications .bibliography li:hover {
      transform: none;
    }

    .bibsearch-form-input {
      max-width: 100%;
    }
  }

  @media (max-width: 480px) {
    .post-title {
      font-size: 1.4rem;
    }

    .publications h2.year,
    .publications h2.bibliography {
      font-size: 0.65rem;
      margin: 1.5rem 0 0.6rem 0;
      gap: 0.6rem;
    }

    .publications .title {
      font-size: 0.84rem;
    }

    .publications .author {
      font-size: 0.74rem;
    }

    .publications .periodical {
      font-size: 0.72rem;
    }

    .publications .links a {
      font-size: 0.66rem;
      padding: 0.15rem 0.4rem;
    }
  }
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

<!-- Action Recognition -->
<h2 class="bibliography">Action Recognition</h2>
{% bibliography --query @*[keywords ^= *Action Recognition*] %}

<!-- Video Understanding -->
<h2 class="bibliography">Video Understanding</h2>
{% bibliography --query @*[keywords ^= *Video Understanding*] %}

<!-- Image/Video Generation -->
<h2 class="bibliography">Image/Video Generation</h2>
{% bibliography --query @*[keywords ^= *Video Generation*] || @*[keywords ^= *Image Generation*] %}

<!-- Other Publications -->
<h2 class="bibliography">Other Publications</h2>
{% bibliography --query @*[keywords !^= *Action Recognition*][keywords !^= *Video Understanding*][keywords !^= *Video Generation*][keywords !^= *Image Generation*] %}

</div>
