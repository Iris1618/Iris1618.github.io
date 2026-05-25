---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

<style>
.cv-downloads {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 1rem;
  margin-top: 1rem;
}

.cv-card {
  padding: 1.1rem 1.2rem;
  border: 1px solid #e3e8ef;
  border-radius: 8px;
  background: #ffffff;
  color: #374151;
  box-shadow: 0 6px 16px rgba(15, 23, 42, 0.04);
}

.cv-card h2 {
  margin-top: 0;
  margin-bottom: 0.45rem;
  color: #111827;
}

.cv-card p {
  color: #6b7280;
  line-height: 1.6;
}

.cv-button {
  display: inline-block;
  margin-top: 0.4rem;
  padding: 0.48rem 0.78rem;
  border-radius: 6px;
  background: #4bb3c7;
  color: #ffffff !important;
  text-decoration: none;
  font-weight: 700;
}

.cv-button:hover {
  background: #399daf;
}

@media (max-width: 768px) {
  .cv-downloads {
    grid-template-columns: 1fr;
  }
}
</style>

Please download the version of my CV that best fits your needs.

<div class="cv-downloads">
  <div class="cv-card">
    <h2>English CV</h2>
    <p>Academic CV in English.</p>
    <a class="cv-button" href="{{ base_path }}/files/DongtingZHAI_CV_EN.pdf" download>Download PDF</a>
  </div>
  <div class="cv-card">
    <h2>中文简历</h2>
    <p>中文版本简历。</p>
    <a class="cv-button" href="{{ base_path }}/files/DongtingZHAI_CV_CN.pdf" download>下载 PDF</a>
  </div>
</div>
