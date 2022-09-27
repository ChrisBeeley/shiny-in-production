$(document).ready(function () {

    var latch = new Howl({
        src: ["www/latch.mp3"],
    });

    const startTimerBtn = document.getElementById("btn");

    startTimerBtn.addEventListener("click", () => {
        latch.play();
    }
    )
});
