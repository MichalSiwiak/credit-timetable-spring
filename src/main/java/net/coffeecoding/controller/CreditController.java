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
    public ResponseEntity<InputStreamResource> downloadPDF() {
        utils.exportCreditTimetableToPdf(credit);
        File file = new File("C:\\Users\\msiwiak\\Desktop\\timetable of selected offer.pdf");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=" + file.getName())
                .contentType(MediaType.APPLICATION_PDF).contentLength(file.length())
                .body(resource);
    }

    @GetMapping("/downloadxls")
    public ResponseEntity<InputStreamResource> downloadXls() {
        utils.exportCreditTimetableToXls(credit);
        File file = new File("C:\\Users\\msiwiak\\Desktop\\timetable of selected offer.xls");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=" + file.getName())
                .contentType(MediaType.valueOf("application/vnd.ms-excel")).contentLength(file.length())
                .body(resource);
    }
}