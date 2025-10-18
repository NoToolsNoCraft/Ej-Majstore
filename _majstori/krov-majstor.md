---
layout: majstor_profil
title: Krov Majstor - Majstori za krov u Beograd, Obrenovac
description: Popravka i izrada krovova svih vrsta. Pronađite Krov Majstor za Majstori
  za krov usluge u Beograd, Obrenovac.
ime: Krov Majstor
kategorija: Majstori za krov
mesto: Beograd, Obrenovac
kontakt_telefon: Nema dostupan kontakt
email: Nema dostupan email
website: Nema dostupan website
opis_dugi: Krov Majstor pruža usluge popravke, izrade i održavanja krovova u Beogradu
  i okolini.
opis_dugi2: ''
opis_dugi3: ''
opis_dugi4: ''
opis_dugi5: ''
detaljan_opis: Krov Majstor pruža usluge popravke, izrade i održavanja krovova u Beogradu
  i okolini.
slug: krov-majstor
image: https://www.shutterstock.com/image-illustration/illustration-construction-worker-purple-jacket-600nw-2609794615.jpg
additional_images: []
services: []
faq: []
permalink: "/majstori/beograd/krov-majstor/"
---
# Krov Majstor
<p class="description">Popravka i izrada krovova svih vrsta.</p>

<div class="majstor-details">
  <h2>Informacije</h2>
  <ul>
    <li><strong>Kategorija:</strong> {{ page.kategorija | join: ', ' }}</li>
    <li><strong>Mesto:</strong> Beograd, Obrenovac</li>
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
