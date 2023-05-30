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
            
</style>
    </head>
    <body style=" background-image: url('https://images.pexels.com/photos/70441/pexels-photo-70441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); background-repeat: no-repeat;   overflow-x: hidden;  background-size: cover; position: relative;" >
        <div class="container-fluid" style="position: relative; left: 30%"  >
            <div class="wizard-heading" style="position: relative; left: 12%; right: 12%;">Form Booking Wizard</div>
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
                                                <input type="text" class="form-control" id="first_name" name="first_name" required>
                                                <span class="label">First Name</span>
                                            </label>
                                        </div>
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="last_name" name="last_name" required>
                                                <span class="label">Last Name</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="phone" name="phone" required>
                                                <span class="label">Phone Number</span>
                                            </label>
                                        </div>
                                        <div class="form-holder">
                                            <label class="form-row-inner">
                                                <input type="text" name="your_email_1" id="your_email_1" class="form-control" required>
                                                <span class="label">E-Mail</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-row form-row-date">
                                        <div class="form-holder form-holder-2">
                                            <label for="date" class="special-label">Date of Birth:</label>
                                            <select name="date" id="date" class="form-control">
                                                <option value="15" selected>15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                            </select>
                                            <select name="month" id="month" class="form-control">
                                                <option value="Jan" selected>Jan</option>
                                                <option value="Feb">Feb</option>
                                                <option value="Mar">Mar</option>
                                                <option value="Apr">Apr</option>
                                                <option value="May">May</option>
                                            </select>
                                            <select name="year" id="year" class="form-control">
                                                <option value="2018" selected>2018</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder form-holder-2">
                                            <label class="form-row-inner">
                                                <input type="text" class="form-control" id="address" name="address" required>
                                                <span class="label">Address Location</span>
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
                                    <div class="form-images">
                                        <img src="images/wizard_v6.jpg" alt="wizard_v6">
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder form-holder-2">
                                            <label for="room" class="special-label-1">Choose a Room </label>
                                            <select name="room" id="room" class="form-control">
                                                <option value="Daily Design Metting - Metting Room No.1" selected>Daily Design Metting - Metting Room No.1</option>
                                                <option value="Single">Single</option>
                                                <option value="Double">Double</option>
                                            </select>
                                            <span class="select-btn">
                                                <i class="zmdi zmdi-chevron-down"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-holder">
                                            <label for="day" class="special-label-1">Organization Day</label>
                                            <input type="text" name="day" class="day" id="day" placeholder="15 / 08 / 2018">
                                        </div>
                                        <div class="form-holder">
                                            <label for="time" class="special-label-1">Time Open </label>
                                            <select name="time" id="time" class="form-control">
                                                <option value="8:00am - 10.00am" selected>8:00am - 10.00am</option>
                                                <option value="9:00am - 21:00pm">9:00am - 21:00pm</option>
                                                <option value="10:00am - 22:00pm">10:00am - 22:00pm</option>
                                                <option value="12:00am - 24:00pm">12:00am - 24:00pm</option>
                                            </select>
                                            <span class="select-btn">
                                                <i class="zmdi zmdi-chevron-down"></i>
                                            </span>
                                        </div>
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
                                                <tr class="space-row">
                                                    <th>Full Name:</th>
                                                    <td id="fullname-val"></td>
                                                </tr>
                                                <tr class="space-row">
                                                    <th>Room:</th>
                                                    <td id="room-val"></td>
                                                </tr>
                                                <tr class="space-row">
                                                    <th>Day:</th>
                                                    <td id="day-val"></td>
                                                </tr>
                                                <tr class="space-row">
                                                    <th>Time:</th>
                                                    <td id="time-val"></td>
                                                </tr>
                                                <tr class="space-row">
                                                    <th>Price:</th>
                                                    <td id="price-val">40.00$</td>
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
        <script src="Confirm/js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments); }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');</script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7cf754909d173e5c","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
    </body>

    <!-- Mirrored from colorlib.com/etc/bwiz/colorlib-wizard-26/index.html?fbclid=IwAR0cye0dBPIXvlw0w-sb0zg8knkSshJ0FsYYm9qTpGrDCkSOE6js8VyoWjo by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 30 May 2023 13:30:16 GMT -->
</html>

