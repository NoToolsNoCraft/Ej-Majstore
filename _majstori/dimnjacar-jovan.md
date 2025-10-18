---
layout: majstor_profil
title: Dimnjačar Jovan - Čišćenje dimnjaka u Niš, Sokobanja
description: Profesionalno čišćenje dimnjaka i ventilacionih sistema. Pronađite Dimnjačar
  Jovan za Čišćenje dimnjaka usluge u Niš, Sokobanja.
ime: Dimnjačar Jovan
kategorija: Čišćenje dimnjaka
mesto: Niš, Sokobanja
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Jovan nudi usluge čišćenja dimnjaka i proveru ventilacionih sistema u Nišu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Jovan nudi usluge čišćenja dimnjaka i proveru ventilacionih sistema
  u Nišu.
slug: dimnjacar-jovan
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/nis/dimnjacar-jovan/"
---
# Dimnjačar Jovan
<p class="description">Profesionalno čišćenje dimnjaka i ventilacionih sistema.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Niš, Sokobanja</li>
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
