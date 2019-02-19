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