function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    let excursions_catalog = doc.createElement("excursions_catalog");
    doc.appendChild(excursions_catalog);

    let excursions = doc.createElement("excursions");
    excursions_catalog.appendChild(excursions);

    let excursion = doc.createElement("excursion");
    excursion.setAttribute("excursionId", "EXC100");
    excursions.appendChild(excursion);

    let excursion_basic_info = doc.createElement("basic_info");
    excursion_basic_info.setAttribute("code", "ExcursionBarcelona1");
    excursion_basic_info.setAttribute("category", "Европа");
    excursion.appendChild(excursion_basic_info);

    let code = doc.createElement("code");
    excursion_basic_info.appendChild(code);
    code.appendChild(doc.createTextNode("ExcursionBarcelona1"));

    let category = doc.createElement("category");
    excursion_basic_info.appendChild(category);
    category.appendChild(doc.createTextNode("Европа"));

    let name = doc.createElement("name");
    excursion_basic_info.appendChild(name);
    name.appendChild(doc.createTextNode("Незабравимо посещение на Барселона"));

    let towns = doc.createElement("towns");
    excursion_basic_info.appendChild(towns);
    towns.appendChild(doc.createTextNode("Барселона"));

    let country = doc.createElement("country");
    excursion_basic_info.appendChild(country);
    country.appendChild(doc.createTextNode("Испания"));

    let price = doc.createElement("price");
    price.setAttribute("currency", "лв");
    excursion_basic_info.appendChild(price);
    price.appendChild(doc.createTextNode("800"));

    let type = doc.createElement("type");
    type.setAttribute("type", "Самолет");
    excursion_basic_info.appendChild(type);

    let image = doc.createElement("image");
    excursion_basic_info.appendChild(image);
    image.appendChild(doc.createTextNode("barcelona.jpg"));

    let excursion_secondary_info = doc.createElement("secondary_info");
    excursion.appendChild(excursion_secondary_info);

    let about_excursion_info = doc.createElement("about_excursion");
    excursion_secondary_info.appendChild(about_excursion_info);

    let route = doc.createElement("route");
    about_excursion_info.appendChild(route);
    route.appendChild(doc.createTextNode("София-Барселона-София"));

    let dates = doc.createElement("dates");
    about_excursion_info.appendChild(dates);
    dates.appendChild(doc.createTextNode("04.05.2022-08.05.2022, 26.05.2022-30.05.2022, 17.06.2022-21.06.2022, 13.08.2022-17.08.2022"));

    let nights_number = doc.createElement("nights_number");
    about_excursion_info.appendChild(nights_number);
    nights_number.setAttribute("numberOfNights", "4");

    let about_town_info = doc.createElement("about_town");
    excursion_secondary_info.appendChild(about_town_info);

    let landmarks = doc.createElement("landmarks");
    about_town_info.appendChild(landmarks);
    landmarks.appendChild(doc.createTextNode("Парк Гюел, Casa Batllo, Casa Bruno Cuadros, Саграда Фамилия, Площад Каталуния, Площад Испания, Олимпийският стадион"));

    let history = doc.createElement("history");
    about_town_info.appendChild(history);
    history.appendChild(doc.createTextNode("Една от теориите за основаването на Барселона е, че градът е основан в средата на II век пр.н.е. от Картаген. \n\t\t\t                Бащата на Ханибал Барка – Хамилкар се смята за основателя на града, като фамилното име Барка е в основата на името на града. \n\t\t\t\t        По-късно става част от Римската империя. След разделянето на империята през 395 г. сл. Хр. градът е част от Западната Римска империя. \n\t\t\t\t        " +
        "С нахлуването на различни варварски племена през V век сл. Хр. на територията на Иберийския полуостров, градът е владение на остготите и основаното от тях кралство. \n\t\t\t                В началото на VIII век маврите, съставляващи най-общо казано бербери и араби от Африка нахлуват на територията на Иберийския полуостров, но Барселона не е завзета. \n\t\t\t\t        През първата половина на 9 век градът става център на графство Барселона и на Испанската марка."));

    let climate = doc.createElement("climate");
    about_town_info.appendChild(climate);
    climate.appendChild(doc.createTextNode("Барселона има средиземноморски климат, с мека, влажна зима и топло, сухо лято."));

    let time_zone = doc.createElement("time_zone");
    about_town_info.appendChild(time_zone);
    time_zone.appendChild(doc.createTextNode("България 12 ч. - Испания 11 ч."));

    let currency = doc.createElement("currency");
    about_town_info.appendChild(currency);
    currency.setAttribute("countryCurrency", "Франция - Евро (EUR) - 1 € = 1,9558 лв");

    let rules = doc.createElement("rules");
    excursion.appendChild(rules);

    let price_include = doc.createElement("price_include");
    rules.appendChild(price_include);
    price_include.appendChild(doc.createTextNode("" +
        "\n\t\t\t        самолетни билети София-Барселона-София;\n" +
        "\t\t\t        малък ръчен багаж 40/30/20см до 10 кг;\n" +
        "\t\t\t        4 нощувки в хотел 3* в близост до Барселона;\n" +
        "\t\t\t        медицинска застраховка \"Помощ при пътуване в чужбина\" за лица до 70 години;\n" +
        "\t\t\t        летищни такси в размер на 40 евро на човек;\n" +
        "\t\t\t        водач от агенцията;\n" +
        "\t\t\t        екскурзовод на български език за туристическите обиколки;"));

    let price_not_include = doc.createElement("price_not_include");
    rules.appendChild(price_not_include);
    price_not_include.appendChild(doc.createTextNode(
        "\n\t\t\t        трансфер летище-хотел-летище (доплаща се 40 евро - по желание);\n" +
             "\t\t\t        допълнителен чекиран багаж до 20 кг;\n" +
             "\t\t\t        допълнителни екскурзии и входни такси;\n" +
             "\t\t\t        билети за градския транспорт;\n" +
             "\t\t\t        сити такси в размер на 4 евро на човек/ден;\n" +
             "\t\t\t        двупосочен трансфер от Вашия град до сборен пункт в София;\n" +
             "\t\t\t        медицинска застраховка Помощ при пътуване в чужбина за лица над 70 години;"))

    let necessary_documents = doc.createElement("necessary_documents");
    rules.appendChild(necessary_documents);
    necessary_documents.appendChild(doc.createTextNode("лична карта и/или задграничен паспорт;"));

    let more_info = doc.createElement("more_info");
    rules.appendChild(more_info);

    let enrollment_conditions = doc.createElement("enrollment_conditions");
    more_info.appendChild(enrollment_conditions);
    enrollment_conditions.appendChild(doc.createTextNode("Записването е възможно по телефон, интернет или директно в офиса. \n\t\t\t\t        Резервацията се счита за валидна след сключване на Договор и внасяне на депозит.\n" +
        "\t\t\t\t        Срокът да заявите вашето пътуване е 30 дни преди датата на отпътуване."));

    let payment_terms = doc.createElement("payment_terms");
    more_info.appendChild(payment_terms);
    payment_terms.appendChild(doc.createTextNode(" До 1 ден след резервацията е необходимо да бъде платено 20% от сумата. \n\t\t\t\t        До 21 дни преди датата на отпътуване е необходимо да се плати 100% от сумата."));

    let penalties = doc.createElement("penalties");
    more_info.appendChild(penalties);
    penalties.appendChild(doc.createTextNode(" за промени/анулация 1 ден след плащане на депозита и/или до 30 дни преди датата на заминаване - 30%;\n" +
        "\t\t\t                за промени/анулация между 29-тия и 18-тия ден преди датата на заминаване - 80%;\n" +
        "\t\t\t                за промени/анулация 17 дни преди датата на заминаване - 100%;"))

    let excursion_more_info = doc.createElement("excursion_more_info");
    excursion.appendChild(excursion_more_info);

    let program = doc.createElement("program");
    excursion_more_info.appendChild(program);
    program.appendChild(doc.createTextNode("Ден 1: Полет София – Барселона;\n" +
        "\t\t\t                Ден 2: Барселона\n" +
        "\t\t\t                Посещение на площад Испания, парка Гюел, Побле Еспаньол, базиликата Саграда Фамилия\n" +
        "\t\t\t                Ден 3: Барселона\n" +
        "\t\t\t                Посещение на свещената планина Монсерат и малкото градче Фигерес\n" +
        "\t\t\t                Ден 4: Свободно време в Барселона\n" +
        "\t\t\t                Ден 5: Полет Барселона-София"));

    let more_excursions = doc.createElement("more_excursions");
    excursion_more_info.appendChild(more_excursions);
    more_excursions.appendChild(doc.createTextNode("Тур „По стъпките на Гауди“ (35 евро; за дете (0-11.99 год.) - 17 евро); Входните такси за Парк Гюел са включени в цената;\n" +
        "\t\t\t                Тур „В сърцето на Барселона и Ноу Камп“ (35 евро; за дете (0-11.99 год.) - 17 евро);  Не включва входна такса за \"Ноу Камп\".\n" +
        "\t\t\t                Тур „Манастирът в скалите Монсерат“ (35 евро; за дете (0-11.99 год.) - 17 евро).\n" +
        "\t\t\t                Тур \"Скандалният Салвадор Дали\" - (35 евро; за дете (0-11.99 год.) - 17 евро)."))

    let images = doc.createElement("images");
    excursion_more_info.appendChild(images);
    images.appendChild(doc.createTextNode("barcelona2.jpg, barcelona3.jpg"));

    return doc;
}
