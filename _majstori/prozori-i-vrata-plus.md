---
layout: majstor_profil
title: Prozori i Vrata Plus - Prozori i vrata u Kragujevac, Gornji Milanovac
description: Izrada i ugradnja prozora i vrata visokog kvaliteta. Pronađite Prozori
  i Vrata Plus za Prozori i vrata usluge u Kragujevac, Gornji Milanovac.
ime: Prozori i Vrata Plus
kategorija: Prozori i vrata
mesto: Kragujevac, Gornji Milanovac
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Prozori i Vrata Plus specijalizovana je za izradu i ugradnju PVC i aluminijumskih
  prozora i vrata u Kragujevcu.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Prozori i Vrata Plus specijalizovana je za izradu i ugradnju PVC i
  aluminijumskih prozora i vrata u Kragujevcu.
slug: prozori-i-vrata-plus
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/kragujevac/prozori-i-vrata-plus/"
---
# Prozori i Vrata Plus
<p class="description">Izrada i ugradnja prozora i vrata visokog kvaliteta.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Kragujevac, Gornji Milanovac</li>
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
