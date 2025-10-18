---
layout: majstor_profil
title: Bravar Stevan - Bravarija u Beograd, Zemun
description: Bravarske usluge i popravka brava svih vrsta. Pronađite Bravar Stevan
  za Bravarija usluge u Beograd, Zemun.
ime: Bravar Stevan
kategorija: Bravarija
mesto: Beograd, Zemun
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Stevan nudi hitne bravarske usluge, izradu ključeva i popravku brava u
  Beogradu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Stevan nudi hitne bravarske usluge, izradu ključeva i popravku brava
  u Beogradu.
slug: bravar-stevan
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/beograd/bravar-stevan/"
---
# Bravar Stevan
<p class="description">Bravarske usluge i popravka brava svih vrsta.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Beograd, Zemun</li>
    <li><strong>Kontakt telefon:</strong> Nema dostupan kontakt</li>
    <li><strong>Email:</strong> Nema dostupan email</li>
  </ul>
</div>

# NEW: Services Section in content (optional - we'll use front matter in template)
{% if page.services.size > 0 %}
<div class="services-section">
  <h2>Usluge</h2>
  {% for service in page.services %}
  <div class="service-block">
    <h3>{{ service.title }}</h3>
    <p>{{ service.description }}</p>
  </div>
  {% endfor %}
</div>
{% endif %}
