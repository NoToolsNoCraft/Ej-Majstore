---
layout: majstor_profil
title: Milan Stolar - Stolarski poslovi u Subotica, Bajmok
description: Izrada nameštaja po meri i stolarske usluge. Pronađite Milan Stolar za
  Stolarski poslovi usluge u Subotica, Bajmok.
ime: Milan Stolar
kategorija: Stolarski poslovi
mesto: Subotica, Bajmok
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Milan nudi izradu nameštaja, popravke i stolarske usluge za domove i poslovne
  prostore u Subotici.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Milan nudi izradu nameštaja, popravke i stolarske usluge za domove
  i poslovne prostore u Subotici.
slug: stolar-milan
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/subotica/stolar-milan/"
---
# Milan Stolar
<p class="description">Izrada nameštaja po meri i stolarske usluge.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Subotica, Bajmok</li>
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
