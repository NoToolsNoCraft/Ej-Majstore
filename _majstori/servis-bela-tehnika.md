---
layout: majstor_profil
title: Servis Bela Tehnika - Bela tehnika u Novi Sad, Futog
description: Popravka i održavanje svih vrsta kućnih aparata. Pronađite Servis Bela
  Tehnika za Bela tehnika usluge u Novi Sad, Futog.
ime: Servis Bela Tehnika
kategorija: Bela tehnika
mesto: Novi Sad, Futog
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Servis Bela Tehnika nudi brzu i pouzdanu popravku veš mašina, frižidera
  i drugih aparata u Novom Sadu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Servis Bela Tehnika nudi brzu i pouzdanu popravku veš mašina, frižidera
  i drugih aparata u Novom Sadu.
slug: servis-bela-tehnika
image: "/assets/images/bela-tehnika-logo.png"
additional_images: []
services: []
faq: []
permalink: "/majstori/novi-sad/servis-bela-tehnika/"
---
# Servis Bela Tehnika
<p class="description">Popravka i održavanje svih vrsta kućnih aparata.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Novi Sad, Futog</li>
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
