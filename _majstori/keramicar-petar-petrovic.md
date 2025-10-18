---
layout: majstor_profil
title: Petar Petrović - Keramičar u Kragujevac, Jagodina
description: Kvalitetno postavljanje keramičkih pločica za kupatila i kuhinje. Pronađite
  Petar Petrović za Keramičar usluge u Kragujevac, Jagodina.
ime: Petar Petrović
kategorija: Keramičar
mesto: Kragujevac, Jagodina
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Petar Petrović je iskusan keramičar sa fokusom na precizno postavljanje
  pločica i renoviranje enterijera u Kragujevcu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Petar Petrović je iskusan keramičar sa fokusom na precizno postavljanje
  pločica i renoviranje enterijera u Kragujevcu.
slug: keramicar-petar-petrovic
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images:
- https://images.unsplash.com/photo-1560448204-e02f11c3d0e2
services: []
faq: []
permalink: "/majstori/kragujevac/keramicar-petar-petrovic/"
---
# Petar Petrović
<p class="description">Kvalitetno postavljanje keramičkih pločica za kupatila i kuhinje.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Kragujevac, Jagodina</li>
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
