---
layout: majstor_profil
title: Bunari Srbija - Bušenje bunara u Kragujevac, Batočina
description: Bušenje bunara za vodu i geološka istraživanja. Pronađite Bunari Srbija
  za Bušenje bunara usluge u Kragujevac, Batočina.
ime: Bunari Srbija
kategorija: Bušenje bunara
mesto: Kragujevac, Batočina
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Bunari Srbija pruža usluge bušenja bunara i geoloških istraživanja u Kragujevcu
  i šire.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Bunari Srbija pruža usluge bušenja bunara i geoloških istraživanja
  u Kragujevcu i šire.
slug: bunari-srbija
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images:
- https://images.unsplash.com/photo-1560448204-e02f11c3d0e2
- https://images.unsplash.com/photo-1580587771525-78b9f0f89f70
services: []
faq: []
permalink: "/majstori/kragujevac/bunari-srbija/"
---
# Bunari Srbija
<p class="description">Bušenje bunara za vodu i geološka istraživanja.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Kragujevac, Batočina</li>
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
