document.addEventListener("DOMContentLoaded", function(event) {
  var modal = null;

  function mostrarModal() {
    if (!modal) {
      modal = new coreui.Modal('#modal', {});
    }

    modal.show();
  }

  function cerrarModal() {
    if (!modal) {
      modal = new coreui.Modal('#modal', {});
    }

    modal.hide();
  }

  htmx.on("htmx:afterSwap", (e) => {
    // si se intenta mostrar un modal...
    if (e.detail.target.id == "modal") {
      mostrarModal();
    }

    if (e.detail.target.id == "cerrar-modal") {
      cerrarModal();
    }
  });

  htmx.on("htmx:beforeSwap", (e) => {
  });

})
