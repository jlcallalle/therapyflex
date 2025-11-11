  document.addEventListener("DOMContentLoaded", function () {
    const items = document.querySelectorAll(".tf-gallery-item img");
    const lightbox = document.getElementById("tfLightbox");
    const lightboxImage = document.getElementById("tfLightboxImage");
    const closeBtn = document.getElementById("tfLightboxClose");
    const nextBtn = document.getElementById("tfNext");
    const prevBtn = document.getElementById("tfPrev");

    let currentIndex = 0;

    function openLightbox(index) {
      currentIndex = index;
      const fullSrc = items[index].getAttribute("data-full") || items[index].src;
      lightboxImage.src = fullSrc;
      lightbox.classList.add("is-active");
    }

    function closeLightbox() {
      lightbox.classList.remove("is-active");
    }

    function showNext() {
      currentIndex = (currentIndex + 1) % items.length;
      openLightbox(currentIndex);
    }

    function showPrev() {
      currentIndex = (currentIndex - 1 + items.length) % items.length;
      openLightbox(currentIndex);
    }

    items.forEach((img, index) => {
      img.addEventListener("click", () => openLightbox(index));
    });

    closeBtn.addEventListener("click", closeLightbox);
    nextBtn.addEventListener("click", showNext);
    prevBtn.addEventListener("click", showPrev);

    // Cerrar con fondo oscuro
    lightbox.addEventListener("click", (e) => {
      if (e.target === lightbox) closeLightbox();
    });

    // Teclado
    document.addEventListener("keydown", (e) => {
      if (!lightbox.classList.contains("is-active")) return;
      if (e.key === "Escape") closeLightbox();
      if (e.key === "ArrowRight") showNext();
      if (e.key === "ArrowLeft") showPrev();
    });
  });

