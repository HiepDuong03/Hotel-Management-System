<%-- 
    Document   : ConfirmBooking
    Created on : May 30, 2023, 8:34:03 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!-- Mirrored from colorlib.com/etc/bwiz/colorlib-wizard-26/index.html?fbclid=IwAR0cye0dBPIXvlw0w-sb0zg8knkSshJ0FsYYm9qTpGrDCkSOE6js8VyoWjo by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 30 May 2023 13:30:12 GMT -->
    <head>
        <meta charset="utf-8">
        <title>Wizard-v6</title>

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" type="text/css" href="Confirm/css/opensans-font.css">
        <link rel="stylesheet" type="text/css" href="Confirm/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

        <link rel="stylesheet" type="text/css" href="Confirm/css/jquery-ui.min.css">

        <link rel="stylesheet" href="Confirm/css/style.css" />
        <meta name="robots" content="noindex, follow">
        <script nonce="94fd58b1-80a1-4f6b-be1f-d3a200165c35">(function(w, d){!function(a, b, c, d){a[c] = a[c] || {}; a[c].executed = []; a.zaraz = {deferred:[], listeners:[]}; a.zaraz.q = []; a.zaraz._f = function(e){return function(){var f = Array.prototype.slice.call(arguments); a.zaraz.q.push({m:e, a:f})}}; for (const g of["track", "set", "debug"])a.zaraz[g] = a.zaraz._f(g); a.zaraz.init = () => {var h = b.getElementsByTagName(d)[0], i = b.createElement(d), j = b.getElementsByTagName("title")[0]; j && (a[c].t = b.getElementsByTagName("title")[0].text); a[c].x = Math.random(); a[c].w = a.screen.width; a[c].h = a.screen.height; a[c].j = a.innerHeight; a[c].e = a.innerWidth; a[c].l = a.location.href; a[c].r = b.referrer; a[c].k = a.screen.colorDepth; a[c].n = b.characterSet; a[c].o = (new Date).getTimezoneOffset(); if (a.dataLayer)for (const n of Object.entries(Object.entries(dataLayer).reduce(((o, p) => ({...o[1], ...p[1]})), {})))zaraz.set(n[0], n[1], {scope:"page"}); a[c].q = []; for (; a.zaraz.q.length; ){const q = a.zaraz.q.shift(); a[c].q.push(q)}i.defer = !0; for (const r of[localStorage, sessionStorage])Object.keys(r || {}).filter((t => t.startsWith("_zaraz_"))).forEach((s => {try{a[c]["z_" + s.slice(7)] = JSON.parse(r.getItem(s))} catch {a[c]["z_" + s.slice(7)] = r.getItem(s)}})); i.referrerPolicy = "origin"; i.src = "../../../cdn-cgi/zaraz/sd0d9.js?z=" + btoa(encodeURIComponent(JSON.stringify(a[c]))); h.parentNode.insertBefore(i, h)}; ["complete", "interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script"); })(window, document);</script>
        <style>
            .wizard-heading {
                opacity: 0;
                transition: opacity 0.5s ease-in-out;
            }

            .wizard-heading.visible {
                opacity: 1;
            }
            @keyframes fadeInOut {
                0% {
                    opacity: 1;
                }
                50% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }

            .wizard-heading {
                animation: fadeInOut 1s infinite;
            }
        </style>
    </head>
    <body style=" background-image: url(https://cdn.pixabay.com/photo/2015/07/05/13/44/beach-832346_1280.jpg); background-repeat: no-repeat;   overflow-x: hidden;  background-size: cover;display: flex;justify-content: center;align-items: center" >
        <div class="container-fluid" >
            <div class="wizard-heading" style="display: flex;justify-content: center;align-items: center;color: #000;" >Form Booking Wizard</div>
            <div class="wizard-v6-content">
                <div class="wizard-form">
                    <form class="form-register" id="form-register" action="#" method="post">
                        <div id="form-total">

                            <h2>
                                <p class="step-icon"><span>1</span></p>
                                <span class="step-text">Personal Info</span>
                            </h2>
                            <section>
                                <div class="inner">
                                    <div class="form-heading">
                                        <h3>Personal Info</h3>
                                        <span>1/3</span>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="first_name" name="first_name" required value="${sessionScope.acc.name}">
                                                <span class="label">Full Name</span>
                                            </label>
                                        </div>
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="last_name" name="last_name" required value="${sessionScope.acc.cmnd}">
                                                <span class="label">Identify Card</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="phone" name="phone" required value="${sessionScope.acc.sdt}">
                                                <span class="label">Phone Number</span>
                                            </label>
                                        </div>
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" name="your_email_1" id="your_email_1" class="form-control" required value="${sessionScope.acc.email}">
                                                <span class="label">E-Mail</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <h2>
                                <p class="step-icon"><span>2</span></p>
                                <span class="step-text">Booking</span>
                            </h2>
                            <section>
                                <div class="inner">
                                    <div class="form-heading">
                                        <h3>Booking Infomation</h3>
                                        <span>2/3</span>
                                    </div>
                                    <div class=" col-9" id="image-container" >
                                        <a href="#"  style=" min-height: 500px;background-image: url(${img}); background-repeat: no-repeat;   overflow-x: hidden;  background-size: cover;display: flex;justify-content: center;align-items: center" ></a>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder form-holder-2">
                                            <label for="room" class="special-label-1">Room Name: </label>
                                            <div class="form-heading">
                                                <h3>${roomName}</h3>
                                            </div>
                                        </div>
                                        <div class="form-holder form-holder-2">
                                            <label for="room" class="special-label-1">Adult: </label>
                                            <div class="form-heading">
                                                <h3>${sessionScope.search.adult}</h3>
                                            </div>
                                        </div>
                                        <div class="form-holder form-holder-2">
                                            <label for="room" class="special-label-1">Children: </label>
                                            <div class="form-heading">
                                                <h3>${sessionScope.search.children}</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder">
                                            <label for="day" class="special-label-1">Check In Date</label>
                                            <input type="text" id="datepicker" class="form-control" placeholder="Select a date" value="${sessionScope.search.inDate}">
                                        </div>
                                        <div class="form-holder">
                                            <label for="day" class="special-label-1">Check Out Date</label>
                                            <input type="text" id="datepicker" class="form-control" placeholder="Select a date" value="${sessionScope.search.outDate}">
                                        </div>
                                </div>
                            </section>

                            <h2>
                                <p class="step-icon"><span>3</span></p>
                                <span class="step-text">Confirm</span>
                            </h2>
                            <section>
                                <div class="inner">
                                    <div class="form-heading">
                                        <h3>Comfirm Details</h3>
                                        <span>3/3</span>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <th>Full Name: </th>
                                                    <td id="room-val"> ${sessionScope.acc.name}</td>
                                                </tr>
                                                <tr>
                                                    <th>Room Name: </th>
                                                    <td id="room-val">${roomName}</td>
                                                </tr>
                                                <tr>
                                                    <th>Chick In Date: </th>
                                                    <td id="day-val">${sessionScope.search.inDate}</td>
                                                </tr>
                                                <tr>
                                                    <th>Chick Out Date: </th>
                                                    <td id="day-val">${sessionScope.search.outDate}</td>
                                                </tr>
                                                <tr >
                                                    <th>Total Money: </th>
                                                    <td id="price-val">${total}$</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="Confirm/js/jquery-3.3.1.min.js"></script>
        <script src="Confirm/js/jquery.steps.js"></script>
        <script src="Confirm/js/jquery-ui.min.js"></script>
<!--        <script src="Confirm/js/main.js"></script> -->

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            $(function() {
            $("#datepicker").datepicker({
            dateFormat: "dd / mm / yy",
                    minDate: 0,
            });
            });
            document.addEventListener("DOMContentLoaded", function() {
            var wizardHeading = document.querySelector(".wizard-heading");
            setTimeout(function() {
            wizardHeading.classList.add("visible");
            }, 5000);
            });
            setTimeout(function() {
            $('.wizard-heading').css('animation', 'none');
            }, 5000);
        </script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments); }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');</script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7cf754909d173e5c","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
                $(function () {
                $("#form-total").steps({
                headerTag: "h2",
                        bodyTag: "section",
                        transitionEffect: "fade",
                        enableAllSteps: true,
                        autoFocus: true,
                        transitionEffectSpeed: 500,
                        titleTemplate: '<div class="title">#title#</div>',
                        labels: {
                        previous: 'Back',
                                next: 'Next',
                                finish: 'Confirm',
                                current: ''
                        },
                        onStepChanging: function (event, currentIndex, newIndex) {
                        var fullname = $('#first_name').val() + ' ' + $('#last_name').val();
                        var room = $('#room').val();
                        var day = $('#day').val();
                        var time = $('#time').val();
                        $('#fullname-val').text(fullname);
                        $('#room-val').text(room);
                        $('#day-val').text(day);
                        $('#time-val').text(time);
                        return true;
                        },
                        onFinished: function (event, currentIndex) {
                        swal({
                        title: "Sussess!",
                                text: "Thank you for choosing our services.",
                                icon: "success",
                            
                                }).then(function() {
    window.location.href ="booking?rid=${rid}";
});
                        }
                });
                $("#day").datepicker({
                dateFormat: "MM - DD - yy",
                        showOn: "both",
                        buttonText: '<i class="zmdi zmdi-chevron-down"></i>',
                });
                });
    </script>
    </body>
</html>

