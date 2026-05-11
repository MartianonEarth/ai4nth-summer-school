---
layout: default
title: Home
---

<section class="hero">
  <div class="hero-inner">
    <div class="hero-kicker">CCP-NTH Training Programme</div>
    <h1>AI for Nuclear Thermal Hydraulics Summer School</h1>
    <p>
      A 5-day, in-person summer school introducing machine learning as a careful engineering tool
      for nuclear thermal hydraulics, with pre-work provided before Day 1.
    </p>
    <div class="hero-actions">
      <a class="button button-primary" href="{{ '/programme.html' | relative_url }}">View Programme</a>
      <a class="button button-secondary" href="{{ '/lecturer_guidance.html' | relative_url }}">Lecturer Guidance</a>
    </div>
  </div>
</section>

<main class="page">

  <section class="info-strip">
    <div class="info-box">
      <strong>Dates</strong>
      13–17 July 2026
    </div>
    <div class="info-box">
      <strong>Location</strong>
      STFC Daresbury Laboratory
    </div>
    <div class="info-box">
      <strong>Format</strong>
      In-person attendance only
    </div>
    <div class="info-box">
      <strong>Organiser</strong>
      CCP-NTH
    </div>
  </section>

  <section class="section">
    <h2>Overview</h2>
    <p>
      This summer school introduces machine learning as a <strong>careful engineering tool</strong>
      for nuclear thermal hydraulics, with emphasis on problem framing, correct workflow,
      validation, uncertainty, domain validity, and safe use.
    </p>
    <p>
      The week combines morning lectures with guided afternoon practical sessions built around a
      shared Critical Heat Flux case study. The focus is on methods that can be taught carefully,
      run on standard laptops, and interpreted responsibly in an engineering setting.
    </p>

    <div class="grid grid-3">
      <div class="card">
        <h3>Structured Data ML</h3>
        <p>Supervised learning workflows for thermal-hydraulics tabular datasets, including baselines and tree-based models.</p>
      </div>
      <div class="card">
        <h3>Surrogate Modelling</h3>
        <p>Fast emulators for expensive simulations, including Gaussian Processes and safe-domain reasoning.</p>
      </div>
      <div class="card">
        <h3>Decision Support</h3>
        <p>Uncertainty-aware decision support, model validity checks, and optimisation workflows for engineering use.</p>
      </div>
    </div>
  </section>

  <section class="section">
    <h2>Core Case Study</h2>
    <div class="notice">
      The programme is built around a running case study:
      <strong>Critical Heat Flux (CHF) prediction from structured thermal-hydraulics data</strong>.
    </div>
  </section>

  <section class="section">
    <h2>Who Should Attend?</h2>
    <p>
      The school is intended for researchers, PhD students, and practical engineers in nuclear
      thermal hydraulics with strong modelling or computational backgrounds but limited prior
      experience in modern machine learning.
    </p>
    <p>
      Participants should be comfortable with numerical modelling and basic Python/Jupyter notebooks.
      Prior deep learning, advanced statistics, or GPU programming experience is not required.
    </p>
  </section>

  <section class="section">
    <h2>Weekly Structure</h2>
    <div class="grid grid-3">
      <div class="card"><h3>Pre-Work</h3><p>Self-learning onboarding pack for environment checks, dataset orientation, and domain-validity terminology before Day 1.</p></div>
      <div class="card"><h3>Day 1</h3><p>Problem framing, supervised ML, workflow discipline, and baseline models.</p></div>
      <div class="card"><h3>Day 2</h3><p>Tree ensembles for engineering tabular data, model comparison, and regime-wise diagnostics.</p></div>
      <div class="card"><h3>Day 3</h3><p>Surrogate modelling, Gaussian Processes, uncertainty, and extrapolation-aware reasoning.</p></div>
      <div class="card"><h3>Day 4</h3><p>Neural networks for tabular engineering data, limits, and lightweight physics-guided guardrails.</p></div>
      <div class="card"><h3>Day 5</h3><p>VVUQ, safe optimisation for decision support, guest talks, programme synthesis, and closing discussion.</p></div>
    </div>
  </section>

  <section class="section">
    <h2>Delivery Notes</h2>
    <ul>
      <li>Runs on standard laptops / PCs.</li>
      <li>No national HPC resources are required.</li>
      <li>Pre-configured environment and notebooks will be provided.</li>
      <li>All notebooks should be tested end-to-end before the school.</li>
    </ul>
  </section>

  <section class="section">
    <h2>Partners and Supporting Organisations</h2>
    <div class="logo-row">
      <div class="logo-card"><img src="{{ '/assets/ccp-nth-logo-new-long.png' | relative_url }}" alt="CCP-NTH logo"></div>
      <div class="logo-card"><img src="{{ '/assets/Cosec_Logo.png' | relative_url }}" alt="COSEC logo"></div>
      <div class="logo-card"><img src="{{ '/assets/Imperial_College_London_new_logo.png' | relative_url }}" alt="Imperial College London logo"></div>
      <div class="logo-card"><img src="{{ '/assets/uom_logo_big.gif' | relative_url }}" alt="University of Manchester logo"></div>
      <div class="logo-card"><img src="{{ '/assets/stfc_logo.png' | relative_url }}" alt="STFC logo"></div>
      <div class="logo-card"><img src="{{ '/assets/Sheffield.jpg' | relative_url }}" alt="The University of Sheffield logo"></div>
    </div>
  </section>

  <section class="section" id="contacts">
    <h2>Contacts</h2>
    <ul>
      <li>Professor Michael Bluck — <a href="mailto:m.bluck@imperial.ac.uk">m.bluck@imperial.ac.uk</a></li>
      <li>Dr Wei Wang — <a href="mailto:wei.wang@stfc.ac.uk">wei.wang@stfc.ac.uk</a></li>
      <li>Dr Yu Duan — <a href="mailto:yu.duan@sheffield.ac.uk">yu.duan@sheffield.ac.uk</a> / <a href="mailto:y.duan@imperial.ac.uk">y.duan@imperial.ac.uk</a></li>
    </ul>
  </section>

</main>
