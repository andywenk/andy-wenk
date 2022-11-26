---
layout: post
title: Publications
---

<div class="publications">
  {% for item in site.data.publications %}
    <h3>{{item.title}}</h3>
    <div>
      <div class="abstract">
        {{item.abstract}}
        <br />
        <p>
          <span>Autor:</span> {{item.author}}
          <span>&nbsp;</span>
          <span>Publikation:</span> {{item.publication}}
          <span>&nbsp;</span>
          <span>Jahr:</span> {{item.year}}
          <span>&nbsp;</span>
          <span>Verleger:</span> {{item.publisher}}
          <span>&nbsp;</span>
          {%- if item.pdf != false %}
            <span><a href="/assets/pdf/{{item.pdf}}" target="_blank">PDF</a></span>
          {% endif %}
          {%- if item.url %}
            <span><a href="/assets/pdf/{{item.url}}" target="_blank">URL</a></span>
          {% endif %}
        </p>
      </div>
      
    </div>
  {% endfor %}
</div>
