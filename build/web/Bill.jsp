<%-- 
    Document   : BillHotel
    Created on : Jun 16, 2023, 1:33:49 AM
    Author     : quocb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hóa đơn khách sạn</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                background-color: #f2f2f2;
            }

            h2 {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 0;
            }
            .bill-container {
                background-color: #ffffff;  
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);  
                padding: 20px;
                margin: 20px auto;
                max-width: 850px;
            }
            .header {
                text-align: center;
                margin-bottom: 20px;
                display: flex;
                justify-content: space-around;
            }

            .header-des {
                display: flex;
                flex-direction: column;
                justify-content: right;
            }

            .line_he {
                line-height: 4px;
            }

            .hotel-info {
                margin-bottom: 20px;
            }

            .invoice-info {
                margin-bottom: 20px;
                text-align: center;
            }

            .customer-info {
                display: flex;
                justify-content: space-between;
                border-bottom: 1px solid;
                border-top: 1px solid;
            }

            .customer-info-left {
                display: flex;
                flex-direction: column;
            }

            .customer-info-right {
                display: flex;
                flex-direction: column;
            }

            .customer-info-left p,
            .customer-info-right p {
                margin: 15px;
            }

            .customer-info-date {
                display: flex;
                flex-direction: column;
            }

            .service-details {
                margin-bottom: 20px;
                display: flex;
                justify-content: flex-end;
                column-gap: 160px;
                border-bottom: 1px solid;
            }

            .detail ul,
            .money ul,.quantity ul{
                padding: 0;
                margin: 0;
            }

            .detail li,
            .money li ,.quantity li{
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-left: 0;
                padding: 0;
            }
            .quantity{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }
            .detail li span,
            .money li span {
margin-left: 5px;
            }

            .service-details li {
                list-style: none;
            }

            .signature {
                margin-top: 10px;
                display: flex;
                justify-content: space-around;
            }

            .invoice-info-des {
                display: flex;
                justify-content: space-between;
                margin-right: 50px;
                margin-left: 50px;
            }

            .total-amount {
                display: flex;
                justify-content: flex-end;
                column-gap: 100px;
            }

            .signature-reception {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            .signature-customer {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
            }

            .boder {
                display: flex;
                justify-content: flex-end;
            }

            .inline-line {
                display: inline-block;
            }

            .weight {
                font-weight: 700;
            }
        </style>
    </head>

    <body>
        <div class="bill-container">
            <div class="header">
                <h1 style="font-size: 35px;">DELUXE</h1>
                <div class="header-des">
                    <p class="line_he"><span class="weight">Address:</span> 76, Phan Thanh Gian, Dien Ban, Quang Nam</p>
                    <p class="line_he"><span class="weight">Phone:</span> 0918869141</p>
                    <p class="line_he"><span class="weight">Email:</span> quocbao21022020@gmail.com</p>
                </div>
            </div>
            <h2 style="font-size: 30px;">Service payment invoice information</h2>
            <div class="invoice-info">
                <div class="invoice-info-des">
                    <p style="font-style: italic;">Date of invoice: 16/6/2023 </p>
                    <p class="weight">Invoice code: 123</p>
                </div>
            </div>

            <div class="customer-info">
                <div class="customer-info-left">
                    <p>Name:</p>
                    <p>Phone:</p>
                    <p>Room type:</p>
                    <p>Room number:</p>
                </div>
                <div class="customer-info-right">
                    <p>Nguyen Quoc Bao</p>
                    <p>0918869141</p>
                    <p>Luxury</p>
                    <p>202</p>
                </div>
                <div class="customer-info-date">
                    <p>Check-in date:</p>
                    <p>Check-out date:</p>
                </div>
                <div class="customer-info-date">
                    <p>16/06/2023</p>
                    <p>17/06/2023</p>
                </div>
            </div>
<div class="boder">
                <div class="inline-line">
                    <div class="service-details">
                        <div class="detail">
                            <h4>Service</h4>
                            <ul>
                                <li style="line-height: 40px;">Coca</li>
                                <li style="line-height: 40px;">Baocaosu</li>
                                <li style="line-height: 40px;">Bim Bim</li>
                            </ul>
                        </div>
                        <div class="quantity">
                            <h4>Quantity</h4>
                            <ul>
                                <li style="line-height: 40px;">2</li>
                                <li style="line-height: 40px;">1</li>
                                <li style="line-height: 40px;">3</li>
                            </ul>
                        </div>
                        <div class="money">
                            <h4>Money</h4>
                            <ul>
                                <li style="line-height: 40px;">20<span>$</span></li>
                                <li style="line-height: 40px;">100<span>$</span></li>
                                <li style="line-height: 40px;">30<span>$</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="total-amount">
                <p class="weight">Total: </p>
                <p class="weight">150<span>$</span></p>
            </div>

            <div class="signature">
                <div class="signature-reception">
                    <p class="weight">Hotel Reception</p>
                    <p>Ngo Thi Phuong Thao</p>
                </div>
                <div class="signature-customer">
                    <p class="weight">Customer</p>
                    <p>Nguyen Quoc Bao</p>
                </div>
            </div>
        </div>
    </body>

</html>