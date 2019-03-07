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
                <a href="${pageContext.request.contextPath}" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-file-text fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DESCRIPTION
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


        <div class="text-center py-4 bg-secondary"
             style="	background-image: linear-gradient(to left, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.9));	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-0">
                        <h1 class="text-left text-primary">Credit Timetable Generator</h1>
                        <p class="lead text-left">The application collects offers of housing loans from the other site
                            using the jsoup library. The user has the option of selecting a home loan and generating a
                            loan
                            schedule using the installment plan. Credit installment is calculated based on the value
                            entered by the
                            user. The user has the option to export the loan repayment schedule to an Excel or PDF
                            file.</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="py-5">
           <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h5>This application presents simple implementation of basic FTP client functionality using spring mvc and
                apache commons net.<br></h5>
              <h5>The application supports operations:</h5>
              <h5>
                <ul>
                  <li>downloading files from the server</li>
                  <li>sending files to the server: a maximum content of 15MB</li>
                  <li>editing the name of a file or directory</li>
                  <li>deleting a file or directory</li>
                  <li>creating a new directory</li>
                  <li>creating a new text file with a maximum content of 15MB</li>
                </ul>
              </h5>
              <h5><b>Back End: </b>Java, Spring, Apache Commons Net.</h5>
              <h5><b>Front End: </b>HTML, CSS, JSP.</h5>
              <h5>Logging into the server is done by entering the server name port (default port is 21) username and
                password. The application does not save sensitive user data.</h5>
              <h5>File operations are handled by the client's HTTP requests and their implementation is included in
                controller class.</h5>
              <h5>To run application: git clone https://github.com/MichalSiwiak/ftp-web-client-spring-angularjs.git,
                upload and run application using tomcat application server or in terminal in root folder: mvn jetty:run
                and link</h5>
              <h5>Demo View: <a href="https://www.coffeecoding.net/ftp/login">https://www.coffeecoding.net/ftp/login</a>
              </h5>
              <h5>Controller class:</h5>
            </div>
          </div>
<pre><code class="java">
    package net.coffeecoding.controller;
    
    @Controller
    public class FtpController {
    
        @Autowired
        private Client client;
        private String serverName;
        private List<FileModel> fileModels;
    
    
        @GetMapping("/error")
        public String showErrorPage() {
            return "error-page";
        }
    
        @GetMapping("/login")
        public String loginGET() {
            return "ftp-form-login";
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