document.addEventListener('DOMContentLoaded', () => {
    const btn = document.getElementById('downloadButton');
    if (btn) {
        btn.addEventListener('click', () => {
            console.log('Download do CEMAB App iniciado.');
        });
    }
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(link => {
        link.addEventListener('click', (e) => {
            const target = document.querySelector(link.getAttribute('href'));
            if (target) {
                e.preventDefault();
                target.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
        });
    });
});
