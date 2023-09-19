function drawTime(){
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    
    if (m < 10) { m = "0" + m; }
    
    if (h === 0) {
        h = 12;
    } else if (h > 12) {
        h = h - 12;
    }
    
    // Add leading zero for single-digit hours
    if (h < 10) { h = "0" + h; }
    
    document.querySelector('.hour').textContent = h;
    document.querySelector('.minute').textContent = m;
};

function drawDate() {
    var months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    
    var today = new Date();
    var dayOfWeek = days[today.getDay()];
    var month = months[today.getMonth()];
    var day = today.getDate();
    
    var formattedDate = month + " " + "," + " " + day;
    var newdate = day;
    
    document.getElementById('day').textContent = newdate;
}

function drawDay() {
        var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    var today = new Date();
    var dayOfWeek = days[today.getDay()];
    
    var formattedDate = dayOfWeek;
    
    document.getElementById('week').textContent = formattedDate;
}

        drawTime();
        setInterval(drawTime, 1000);
        drawDate();
        setInterval(drawDate, 1000);
        drawDay();
        setInterval(drawDay, 1000);
