---
layout: majstor_profil
title: Čisto i Brzo - Agencija za čišćenje u Novi Sad, Veternik
description: Profesionalne usluge čišćenja za domove i kancelarije. Pronađite Čisto
  i Brzo za Agencija za čišćenje usluge u Novi Sad, Veternik.
ime: Čisto i Brzo
kategorija: Agencija za čišćenje
mesto: Novi Sad, Veternik
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Čisto i Brzo nudi dubinsko čišćenje, pranje prozora i održavanje prostora
  u Novom Sadu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Čisto i Brzo nudi dubinsko čišćenje, pranje prozora i održavanje prostora
  u Novom Sadu.
slug: cisto-i-brzo
image: "/assets/images/cisto-i-brzo-logo.png"
additional_images: []
services: []
faq: []
permalink: "/majstori/novi-sad/cisto-i-brzo/"
---
# Čisto i Brzo
<p class="description">Profesionalne usluge čišćenja za domove i kancelarije.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Novi Sad, Veternik</li>
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
