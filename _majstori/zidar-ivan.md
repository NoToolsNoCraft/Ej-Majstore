---
layout: majstor_profil
title: Zidar Ivan - Zidari u Niš, Aleksinac
description: Zidarske usluge za gradnju i renoviranje domova. Pronađite Zidar Ivan
  za Zidari usluge u Niš, Aleksinac.
ime: Zidar Ivan
kategorija: Zidari
mesto: Niš, Aleksinac
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Ivan nudi profesionalne zidarske usluge, uključujući izgradnju zidova,
  pregradnih zidova i temelja u Nišu i okolini.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Ivan nudi profesionalne zidarske usluge, uključujući izgradnju zidova,
  pregradnih zidova i temelja u Nišu i okolini.
slug: zidar-ivan
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/nis/zidar-ivan/"
---
# Zidar Ivan
<p class="description">Zidarske usluge za gradnju i renoviranje domova.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Niš, Aleksinac</li>
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
