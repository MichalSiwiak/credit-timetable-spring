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
