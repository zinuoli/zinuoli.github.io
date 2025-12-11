---
layout: about
title: About
permalink: /
#subtitle: <a href='#'>Affiliations</a>. Address. Contacts. Motto. Etc.

profile:
  align: right
  image: zinuo.jpg
  image_circular: True # crops the image to make it circular
  more_info: >
    <p>PhD Student @ UWA</p>
    <p>Perth, Australia</p>

news: true # includes a list of news items
selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page
---


I am currently a second-year Ph.D. student in Computer Science at the [University of Western Australia (UWA)](https://www.uwa.edu.au/schools/physics-mathematics-computing/department-of-computer-science-and-software-engineering) advised by Prof. Mohammed Bennamoun, Prof. Farid Boussaid, jointly advised by Dr. Qiuhong Ke at Monash University. I am also a Research Intern at [Tencent YouTu Lab](https://ai.tencent.com/ailab/en/index/), working on cutting-edge multimodal AI research.

My research focuses on advancing Video Understanding and Multimodal Large Language Models (MLLMs), with particular interests in Agentic Reinforcement Learning and Visual Reasoning. Beyond research, I love anime and am passionate about exploring ACG-related AI topics, feel free to contact me if you have any similar interests and ideas.

<div class="interest-card" markdown="0">
My research interests mainly revolve around <strong>Video Understanding</strong>, <strong>Multimodal Large Language Models</strong>, <strong>Visual Reasoning</strong>, and <strong>ACG-related AI</strong>. I am actively seeking research collaborations and academic opportunities. Feel free to reach out via 📧 <span class="copyable" onclick="copyToClipboard('zinuo.li@research.uwa.edu.au', 'Email')">zinuo.li@research.uwa.edu.au <i class="fas fa-copy"></i></span>. I'd be happy to connect 😊. And if you'd like to talk about anime and ACG topics, that works too! 🎌
</div>

<div id="copy-toast" class="copy-toast"></div>

<script>
function copyToClipboard(text, label) {
  navigator.clipboard.writeText(text).then(function() {
    var toast = document.getElementById('copy-toast');
    toast.textContent = '✓ ' + label + ' copied!';
    toast.classList.add('show');
    setTimeout(function() {
      toast.classList.remove('show');
    }, 2000);
  });
}
</script>