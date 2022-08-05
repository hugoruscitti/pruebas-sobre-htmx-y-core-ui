% rebase('base.tpl', title='Cards')

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <!-- para que la tarjeta sea un link completo, hay
      que abrir el tag A aquí, dentro de card, y asegurarse que tenga el estilo
      block y que no decore el texto -->
      <a href="/" style="display: block; text-decoration: inherit; color: inherit" >
        <img src="/static/casa.jpg" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Tarjeta como link</h5>
          <p class="card-text">Esta tarjeta es un link completo</p>
        </div>
      </a>
    </div>
  </div>

  <div class="col-sm-6">
    <div class="card">
      <img src="/static/casa.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Tarjeta sin link</h5>
        <p class="card-text">Esta tarjeta no tiene un link, solo un botón</p>
        <a href="/" class="btn btn-primary">Regresar</a>
      </div>
    </div>
  </div>
</div>

<p><a href="/">Regresar a la página principal</a></p>

