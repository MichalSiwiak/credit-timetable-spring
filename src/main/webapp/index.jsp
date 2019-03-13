<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>coffeecoding.net</title>
    <meta name="description"
          content="Free open source projects present different java solutions using spring, hibernate and other popular frameworks.">
    <meta name="keywords"
          content="java, spring, hibernate, apache, tomcat, coding, programmer, linux, google cloud platform, open source, bootstrap, mysql, java ideas">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
    <link rel="stylesheet" href="https://coffeecoding.net/resources/css/now-ui-kit.css" type="text/css">
    <link rel="stylesheet" href="https://coffeecoding.net/resources/css/style.css" type="text/css">
    <link rel="icon" href="resources/img/favicon.png">
    <!-- PAGE scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
</head>


<body class="bg-light text-dark">
<div id="wrap">
    <div id="main" class="clear-top">


        <div class="collapse" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 py-4">
                        <h4>About</h4>
                        <p class="text-info">Free open source projects present different java solutions using spring,
                            hibernate
                            and other popular frameworks.</p>
                    </div>
                    <div class="col-md-3 offset-md-1 py-4">
                        <h4>Contact</h4>
                        <ul class="list-unstyled">
                            <li>
                                <a href="https://pl.linkedin.com/in/michalsiwiak" class="text-secondary"
                                   target="_blank">Follow
                                    on LinkedIn</a>
                            </li>
                            <li>
                                <a href="mailto:info@coffeecoding.net" target="_top" class="text-secondary">Email me</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar sticky-top navbar-dark bg-info">
            <div class="container d-flex justify-content-between">
                <a href="https://www.coffeecoding.net/" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-home fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">
                    HOME
                </text>
                </a>
                <a href="https://github.com/MichalSiwiak/credit-timetable-spring" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-git-square fa-fw d-inline-block lead fa-2x"></i>&nbsp;&nbsp;<text class="">SOURCE
                    CODE
                </text>
                </a>
                <a href="${pageContext.request.contextPath}/demo" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-desktop fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DEMO VIEW
                </text>
                </a>
                <a href="https://coffeecoding.net/resources/img/cv_msiwiak.pdf" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-address-card fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">RESUME
                </text>
                </a>
                <a href="/contact" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-envelope fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">CONTACT
                </text>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>

        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-left">Credit Timetable Generator</h1>
                        <hr>
                        <h5>Application collects offers of housing loans from the other site
                            using the jsoup library. A user has the option of selecting a home loan and generating a
                            loan schedule using the installment plan. Credit installment is calculated based on the
                            value entered by user. The user has the option to export the credit timetable to an
                            Excel or PDF file.<br>
                        </h5>
                        <h5>The application supports operations:</h5>
                        <h5>
                            <ul>
                                <li>scraping data using web crawler from site: https://hipoteki.net/ranking-kredytow-hipotecznych,</li>
                                <li>generating credit timetable,</li>
                                <li>saving timetable to Excel or PDF file using lowagie and apache poi libraries.</li>
                            </ul>
                        </h5>
                        <h5><b>Back End: </b>Java, Spring MVC.</h5>
                        <h5><b>Front End: </b>HTML, CSS, JSP.</h5>
                        <h5>The application calculates the loan installment amount using the formula <a
                                    href="https://en.wikipedia.org/wiki/Annuity" target="_blank">(source here):</a></h5>
                        <h5>
                            <center><img
                                    src="https://wikimedia.org/api/rest_v1/media/math/render/svg/6d10492db486b9289df62d8cd7df6199a211dcaf">
                            </center>
                            <br><br>where
                            <br>
                            <br>R = installment payment
                            <br>K = amount of credit
                            <br>p = loan interest rate (for one period n)
                            <br>n = number of installments
                        </h5>
                        <h5>To run application: git clone
                            https://github.com/MichalSiwiak/credit-timetable-spring.git,
                            upload and run application using tomcat application server or similar.</h5>
                        <h5>Demo View: <a href="https://www.coffeecoding.net/credit/demo">https://www.coffeecoding.net/credit/demo</a>
                        </h5>
                    </div>
                </div>
                <h5 class="mb-3">Controller class:</h5>
                <pre><code class="java">
package net.coffeecoding.controller;

import net.coffeecoding.model.Credit;
import net.coffeecoding.model.Offer;
import net.coffeecoding.model.OfferList;
import net.coffeecoding.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

@Controller
public class CreditController {

    @Autowired
    Utils utils;
    @Autowired
    OfferList offerList;
    @Autowired
    Credit credit;

    @PostMapping("/demo")
    public String calculate(@ModelAttribute("credit") Credit credit, Model theModel) {
        this.credit = new Credit(credit.getPeriod(), credit.getAmount(), credit.getRateOfInterest());
        theModel.addAttribute("newCredit", this.credit);
        return "credit-form-result";
    }

    @GetMapping("/demo")
    public String getMainPage(Model theModel) {
        List<Offer> offers = offerList.getOffers();
        theModel.addAttribute("credit", credit);
        theModel.addAttribute("offers", offers);
        return "credit-form";
    }

    @GetMapping("/downloadpdf")
    public ResponseEntity<InputStreamResource> downloadPDF(HttpSession httpSession) {
        utils.exportCreditTimetableToPdf(credit, httpSession);
        File file = new File("/tmp/" + httpSession.getId() + ".pdf");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        long length = file.length();
        file.delete();
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=timetable_of_selected_offer.pdf")
                .contentType(MediaType.APPLICATION_PDF).contentLength(length)
                .body(resource);
    }

    @GetMapping("/downloadxls")
    public ResponseEntity<InputStreamResource> downloadXls(HttpSession httpSession) {
        utils.exportCreditTimetableToXls(credit, httpSession);
        File file = new File("/tmp/" + httpSession.getId() + ".xls");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        long length = file.length();
        file.delete();
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=timetable_of_selected_offer.xls")
                .contentType(MediaType.valueOf("application/vnd.ms-excel")).contentLength(length)
                .body(resource);
    }

    @GetMapping("/error")
    public String showErrorPage() {
        return "error-page";
    }
}
</code></pre>
                <h5 class="mb-3">Credit model class:</h5>
                <pre><code class="java">
package net.coffeecoding.model;

import org.springframework.stereotype.Component;
import net.coffeecoding.utils.Utils;

import java.util.ArrayList;
import java.util.List;

@Component
public class Credit {

    private int period;
    private double amount;
    private double rateOfInterest;
    private double payment;

    private List<Double> interests;
    private List<Double> capitalParts;
    private List<Double> debtBalances;
    private List<Integer> periods;

    public Credit(){}

    public Credit(int period, double amount, double rateOfInterest) {
        this.period = period;
        this.amount = amount;
        this.rateOfInterest = rateOfInterest;
        this.payment = calculatePayment();

        List<Double> interests = new ArrayList<>();
        List<Double> capitalParts = new ArrayList<>();
        List<Double> debtBalances = new ArrayList<>();
        List<Integer> periods = new ArrayList<>();

        double debt = amount;

        for (int i = 1; i <= period; i++) {

            double interest = debt * (rateOfInterest / (100) / 12);
            debt = debt - (payment - interest);
            double capitalPart = payment - interest;

            interests.add(new Utils().roundDouble2precision(interest, 2));
            capitalParts.add(new Utils().roundDouble2precision(capitalPart, 2));
            debtBalances.add(new Utils().roundDouble2precision(debt, 2));
            periods.add(i);
        }

        this.interests = interests;
        this.capitalParts = capitalParts;
        this.debtBalances = debtBalances;
        this.periods = periods;
    }

    private double calculatePayment() {
        return amount * (((rateOfInterest / (100) / 12) * Math.pow((1 + (rateOfInterest / (100) / 12)), period))
                / (Math.pow((1 + (rateOfInterest / (100) / 12)), period) - 1));
    }

    public int getPeriod() {
        return period;
    }

    public void setPeriod(int period) {
        this.period = period;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getRateOfInterest() {
        return rateOfInterest;
    }

    public void setRateOfInterest(double rateOfInterest) {
        this.rateOfInterest = rateOfInterest;
    }

    public double getPayment() {
        return new Utils().roundDouble2precision(payment, 2);
    }

    public List<Double> getInterests() {
        return interests;
    }

    public List<Double> getCapitalParts() {
        return capitalParts;
    }

    public List<Double> getDebtBalances() {
        return debtBalances;
    }

    public List<Integer> getPeriods() {
        return periods;
    }

    @Override
    public String toString() {
        return "Credit{" +
                "period=" + period +
                ", amount=" + amount +
                ", rateOfInterest=" + rateOfInterest +
                ", payment=" + payment +
                ", interests=" + interests +
                ", capitalParts=" + capitalParts +
                ", debtBalances=" + debtBalances +
                ", periods=" + periods +
                '}';
    }
}
                </code></pre>
                <h5 class="mb-3">Offer model class:</h5>
                <pre><code class="java">
package net.coffeecoding.model;

public class Offer {

    private String title;
    private String bankName;
    private String margin;
    private String interest;
    private String commission;
    private String rrso;

    @Override
    public String toString() {
        return "Offer{" +
                "title='" + title + '\'' +
                ", bankName='" + bankName + '\'' +
                ", margin='" + margin + '\'' +
                ", interest='" + interest + '\'' +
                ", commission='" + commission + '\'' +
                ", rrso='" + rrso + '\'' +
                '}';
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getMargin() {
        return margin;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getCommission() {
        return commission;
    }

    public void setCommission(String commission) {
        this.commission = commission;
    }

    public String getRrso() {
        return rrso;
    }

    public void setRrso(String rrso) {
        this.rrso = rrso;
    }
}
                </code></pre>
                <h5 class="mb-3">OfferList model class:</h5>
                <pre><code class="java">
package net.coffeecoding.model;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;
import net.coffeecoding.utils.Utils;

import java.util.ArrayList;
import java.util.List;

@Component
public class OfferList {

    List<Offer> offers;


    public List<Offer> getOffers() {
        return offers;
    }

    public OfferList() {
        offers = new ArrayList<>();
        try {
            Document dodument = Jsoup.connect("https://hipoteki.net/ranking-kredytow-hipotecznych/").timeout(6000).get();
            Elements offerTags = dodument.select("div.oferta ");

            for (Element offerTag : offerTags) {

                String[] titleAndBank = offerTag.select("div.ofertatitle").text().split("\\| ");
                String title = titleAndBank[0];
                String bank = titleAndBank[1];
                String margin = offerTag.select("div.oferta_values").attr("data-margin");
                String interest = offerTag.select("div.oferta_values").attr("data-interest");
                String commission = offerTag.select("div.oferta_values").attr("data-commission");
                String[] rrso = offerTag.select("div.ofertarow2 div.ofertarow2-2").text().split("\\| ");

                Offer offer = new Offer();

                offer.setBankName(bank);

                String rrsoValue = rrso[4].substring(6, 10).replace(",", ".");

                try {
                    offer.setTitle(title);
                    offer.setMargin(String.valueOf(new Utils().roundDouble2precision(Double.parseDouble(margin), 2)));
                    offer.setInterest(String.valueOf(new Utils().roundDouble2precision(Double.parseDouble(interest), 2)));
                    offer.setCommission(String.valueOf(new Utils().roundDouble2precision(Double.parseDouble(commission), 2)));
                    offer.setRrso(String.valueOf(new Utils().roundDouble2precision(Double.parseDouble(rrsoValue), 2)));
                } catch (NumberFormatException e) {
                    offer.setTitle(title);
                    offer.setMargin(margin);
                    offer.setInterest(interest);
                    offer.setCommission(commission);
                    offer.setRrso(rrsoValue);
                }

                offers.add(offer);
            }
        } catch (Exception e) {

        }
    }
}
                </code></pre>
                <h5 class="mb-3">Utils class:</h5>
                <pre><code class="java">
package net.coffeecoding.utils;

import com.lowagie.text.*;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import net.coffeecoding.model.Credit;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.io.*;

@Component
public class Utils {

    public void exportCreditTimetableToPdf(Credit credit, HttpSession httpSession) {

        Document document = new Document();

        try {
            PdfWriter.getInstance(document, new FileOutputStream("/tmp/" + httpSession.getId() + ".pdf"));
        } catch (DocumentException e) {
        } catch (FileNotFoundException e) {
        }

        document.open();

        Paragraph title = new Paragraph("Loan repayment schedule");
        title.setAlignment(Element.ALIGN_CENTER);
        PdfPTable table = new PdfPTable(5);

        PdfPCell period = new PdfPCell(new Phrase("Installment number"));
        period.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(period);

        PdfPCell interest = new PdfPCell(new Phrase("Interest"));
        interest.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(interest);

        PdfPCell capitalPart = new PdfPCell(new Phrase("Capital part"));
        capitalPart.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(capitalPart);

        PdfPCell pmt = new PdfPCell(new Phrase("Installment value"));
        pmt.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(pmt);

        PdfPCell debtBalance = new PdfPCell(new Phrase("Debt balance"));
        debtBalance.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(debtBalance);
        table.setHeaderRows(1);

        for (int i = 0; i < credit.getPeriod(); i++) {

            PdfPCell cell = new PdfPCell(new Phrase(credit.getPeriods().get(i) + ""));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
            cell = new PdfPCell(new Phrase(credit.getInterests().get(i) + ""));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
            cell = new PdfPCell(new Phrase(credit.getCapitalParts().get(i) + ""));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
            cell = new PdfPCell(new Phrase(credit.getPayment() + ""));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
            cell = new PdfPCell(new Phrase(credit.getDebtBalances().get(i) + ""));
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            table.addCell(cell);
        }

        title.add(table);
        try {
            document.add(title);
        } catch (DocumentException e) {
        }

        document.close();
    }

    public void exportCreditTimetableToXls(Credit credit, HttpSession httpSession) {

        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet();

        HSSFRow headline = sheet.createRow(0);
        headline.createCell(0).setCellValue("Installment number");
        headline.createCell(1).setCellValue("Interest");
        headline.createCell(2).setCellValue("Capital part");
        headline.createCell(3).setCellValue("Installment value");
        headline.createCell(4).setCellValue("Debt balance");

        for (int i = 0; i < credit.getPeriod(); i++) {
            HSSFRow row = sheet.createRow(i + 1);
            row.createCell(0).setCellValue(credit.getPeriods().get(i));
            row.createCell(1).setCellValue(credit.getInterests().get(i));
            row.createCell(2).setCellValue(credit.getCapitalParts().get(i));
            row.createCell(3).setCellValue(credit.getPayment());
            row.createCell(4).setCellValue(credit.getDebtBalances().get(i));
        }

        FileOutputStream fileOut;

        try {
            fileOut = new FileOutputStream("/tmp/" + httpSession.getId() + ".xls");
            workbook.write(fileOut);
            fileOut.close();
            workbook.close();
        } catch (IOException e) {
        }
    }

    public double roundDouble2precision(double value, int places) {

        if (places < 0)
            throw new IllegalArgumentException();
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }
}
                </code></pre>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/highlight.min.js"></script>
                <script>
                    hljs.initHighlightingOnLoad();
                </script>
            </div>
        </div>


    </div>
</div>


<footer class="footer bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 coffeecoding.net - All rights reserved.<br>Contact: info@coffeecoding.net<br>Warsaw PL<br><a
                href="https://www.coffeecoding.net/">Visit the homepage</a>
        </p>
    </div>
</footer>


</body>
</html>