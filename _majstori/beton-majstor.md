---
layout: majstor_profil
title: Beton Majstor - Betoniranje u Niš, Prokuplje
description: Betoniranje temelja, podova i prilaza. Pronađite Beton Majstor za Betoniranje
  usluge u Niš, Prokuplje.
ime: Beton Majstor
kategorija: Betoniranje
mesto: Niš, Prokuplje
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Beton Majstor nudi usluge betoniranja za gradnju i renoviranje u Nišu i
  okolini.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Beton Majstor nudi usluge betoniranja za gradnju i renoviranje u Nišu
  i okolini.
slug: beton-majstor
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/nis/beton-majstor/"
---
# Beton Majstor
<p class="description">Betoniranje temelja, podova i prilaza.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Niš, Prokuplje</li>
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
