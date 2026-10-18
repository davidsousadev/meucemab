document.addEventListener("DOMContentLoaded", () => {
    const botaoDownload = document.querySelector(".btn-download");

    if (botaoDownload) {
        botaoDownload.addEventListener("click", () => {
            console.log("Download do CEMAB App iniciado.");
        });
    }
});