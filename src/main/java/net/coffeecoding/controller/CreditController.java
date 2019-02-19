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
