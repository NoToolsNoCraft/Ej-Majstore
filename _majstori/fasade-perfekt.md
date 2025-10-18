---
layout: majstor_profil
title: Fasade Perfekt - Fasade u Subotica, Čantavir, Senta
description: Izrada i renoviranje fasada za stambene i poslovne objekte. Pronađite
  Fasade Perfekt za Fasade usluge u Subotica, Čantavir, Senta.
ime: Fasade Perfekt
kategorija: Fasade
mesto: Subotica, Čantavir, Senta
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Fasade Perfekt nudi usluge izrade i obnove fasada sa fokusom na energetsku
  efikasnost u Subotici.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Fasade Perfekt nudi usluge izrade i obnove fasada sa fokusom na energetsku
  efikasnost u Subotici.
slug: fasade-perfekt
image: ''
additional_images: []
services: []
faq: []
permalink: "/majstori/subotica/fasade-perfekt/"
---
# Fasade Perfekt
<p class="description">Izrada i renoviranje fasada za stambene i poslovne objekte.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Subotica, Čantavir, Senta</li>
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
