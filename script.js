// Selecciona todos los elementos con la clase scroll-animation
const animatedElements = document.querySelectorAll('.scroll-animation');

// Función para comprobar la visibilidad de los elementos
function checkVisibility() {
    animatedElements.forEach(element => {
        const rect = element.getBoundingClientRect();
        const isVisible = rect.top < window.innerHeight && rect.bottom >= 0;

        if (isVisible) {
            element.classList.add('visible');
        } else {
            element.classList.remove('visible');
        }
    });
}

// Escucha el evento de scroll para activar la función checkVisibility
window.addEventListener('scroll', checkVisibility);

// Llama a la función al cargar la página para revisar la visibilidad inicial
document.addEventListener('DOMContentLoaded', checkVisibility);
