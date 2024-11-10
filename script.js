document.addEventListener("DOMContentLoaded", function() {
    const parallaxSection = document.querySelector('.parallax-background');

    window.addEventListener('scroll', function() {
        let scrollPosition = window.scrollY;

        // Aplicar un efecto de desplazamiento más lento al fondo
        parallaxSection.style.backgroundPositionY = `${scrollPosition * 0.3}px`; // Cambia 0.3 para ajustar la velocidad
    });
});
