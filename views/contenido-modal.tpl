  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Título del dialogo modal</h5>
        <button type="button" class="btn-close" data-coreui-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Contenido del diálogo modal.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-coreui-dismiss="modal">Close</button>
        <button hx-get="/ok" hx-target="#cerrar-modal" type="button" class="btn btn-primary">Cerrar desde htmx</button>
      </div>
    </div>
  </div>
