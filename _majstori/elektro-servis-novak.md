---
layout: majstor_profil
title: Elektro Servis Novak - Električar u Novi Sad, Sremska Kamenica
description: Brze i pouzdane električarske usluge za domove i poslovne prostore. Pronađite
  Elektro Servis Novak za Električar usluge u Novi Sad, Sremska Kamenica.
ime: Elektro Servis Novak
kategorija: Električar
mesto: Novi Sad, Sremska Kamenica
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Elektro Servis Novak pruža usluge elektroinstalacija, popravki i održavanja
  električnih sistema u Novom Sadu i okolini.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Elektro Servis Novak pruža usluge elektroinstalacija, popravki i održavanja
  električnih sistema u Novom Sadu i okolini.
slug: elektro-servis-novak
image: ''
additional_images: []
services: []
faq: []
permalink: "/majstori/novi-sad/elektro-servis-novak/"
---
# Elektro Servis Novak
<p class="description">Brze i pouzdane električarske usluge za domove i poslovne prostore.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Novi Sad, Sremska Kamenica</li>
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
