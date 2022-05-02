Locales['en'] = {
    ['document_deleted'] = "Документа беше ~g~скъсан~w~.",
    ['document_delete_failed'] = "Изтриването беше ~r~провалено~w~.",
    ['copy_from_player'] = "Ти ~g~получи~w~ копие на документ от играч.",
    ['from_copied_player'] = "Копирания ~g~документ~w~ беше изпратен",
    ['could_not_copy_form_player'] = "Не ~r~може~w~ да копирате документа от играч.",
    ['document_options'] = "Опции с Документ",
    ['public_documents'] = "Публични Документи",
    ['job_documents'] = "Работни Документи",
    ['saved_documents'] = "Запазени Документи",
    ['close_bt'] = "Затвори",
    ['no_player_found'] = "Няма играчи наблизо",
    ['go_back'] = "Върни назад",
    ['view_bt'] = "Виж",
    ['show_bt'] = "Покажи",
    ['give_copy'] = "Дай копие",
    ['delete_bt'] = "Изтрий",
    ['yes_delete'] = "Потвърди изтриването",
}

Config.Documents['en'] = {
      ["public"] = {
        {
          headerTitle = "ФОРМА ЗА УТВЪРЖДЕНИЕ",
          headerSubtitle = "Формуляр за утвърждаване на гражданите.",
          elements = {
            { label = "СЪДЪРЖАНИЕ НА ПОТВЪРЖДАВАНЕ", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ПОКАЗАНИЯ",
          headerSubtitle = "Официални показания на свидетелите.",
          elements = {
            { label = "ДАТА НА ПОДАВАНЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ИНФОРМАЦИЯ ЗА ПОКАЗАНИЯТА", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ОТКРАДНАТ АВТОМОБИЛ",
          headerSubtitle = "Подай информация за откраднато МПС.",
          elements = {
            { label = "РЕГИСТРАЦИОНЕН НОМЕР", type = "input", value = "", can_be_emtpy = false },
            { label = "ИМЕ НА ГРАЖДАНИН", type = "input", value = "", can_be_emtpy = false },
            { label = "ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "ДЪЛГ/ПАРИ НАЗАЕМ ОТ ГРАЖДАНИН",
          headerSubtitle = "Официалния документ за пари на заем от друг гражданин.",
          elements = {
            { label = "КРЕДИТОР ПЪРВО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "КРЕДИТОР ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ДАДЕНА СУМА", type = "input", value = "", can_be_empty = false },
            { label = "КОГА ДА БЪДЕ ВЪРНАТА", type = "input", value = "", can_be_empty = false },
            { label = "ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "ДЪЛГ/ПАРИ ДЕКЛАРАЦИЯ ЗА ИСКАНЕ",
          headerSubtitle = "Дълг/пари декларация за искане в случай, че не са върнати на оказаната дата.",
          elements = {
            { label = "ДЕБИТОР ПЪРВО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ДЕБИТОР ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ДАДЕНА СУМА", type = "input", value = "", can_be_empty = false },
            { label = "ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ", type = "textarea", value = "ИСКАМ ДА ДОКЛАДВАМ, ЧЕ ПАРИТЕ ВСЕ ОЩЕ НЕ СА МИ ВЪРНАТИ ОТ ЛИЦЕТО НА КОЕТО БЯХ ПОДАЛ/А.", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "ПАРКИРАНЕ НА СПЕЦИАЛНИ ЗОНИ",
          headerSubtitle = "Документ за специални зони като примерно пред РПУ.",
          elements = {
            { label = "ПРИТЕЖАТЕЛ ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ПРИТЕЖАТЕЛ ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГРАЖДАНИНА ИМА ПРАВО ДА ПАРКИРА НА СПЕЦИАЛНИ ЗОНИ.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "КРИМИНАЛНО ПРОВИШЕНИЕ",
          headerSubtitle = "Официален документ за криминално провишение.",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "РОЖДЕННА ДАТА", type = "input", value = "", can_be_empty = false },
			{ label = "ПРЕСТЪПЛЕНИЕ", type = "input", value = "", can_be_empty = false },
			{ label = "ВРЕМЕТРАЕНЕ НА НАКАЗАНИЕТО", type = "input", value = "", can_be_empty = false },
			{ label = "ДАТА НА ПОПЪЛВАНЕ", type = "input", value = "", can_be_empty = false },
            { label = "ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ", type = "textarea", value = "ГРАЖДАНИНА Е НАРУШИЛ ПРАВАТА СИ И Е НАПРАВИЛ КРИМИНАЛНО ПРОВИШЕНИЕ.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ГРАЖДАНСКИ КРИМИНАЛЕН ЗАПИС",
          headerSubtitle = "Официален документ за граждански криминален запис.",
          elements = {
            { label = "ГРАЖДАНИН ПЪРВО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ГРАЖДАНИН ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "ДОСИЕ", type = "textarea", value = "ПОЛИЦАТА ТУК ДЕКЛАРИРА, ЧЕ АФОРМЕНТИРАЩИТЕ ГРАЖДАНИ ПРЕДСТАВЯТ ЯСНА КРИМИНАЛНА ЗАПИС. НАСТОЯЩИЯТ РЕЗУЛТАТ Е ГЕНЕРИРАН ОТ ДАННИ, ПРЕДОСТАВЕНИ В СИСТЕМАТА ЗА КРИМИНАЛНО ЗАПИСВАНЕ ДО ДАТА НА ПОДПИСАНИЕ НА ДОКУМЕНТА.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ПАТОЛОГИЯ",
          headerSubtitle = "Официален медицински доклад, предоставен от патолог.",
          elements = {
            { label = "ПАЦИЕНТ ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ПАЦИЕНТ ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "АФОРМЕНТИРАНИТЕ ЗАСТРАХОВАНИ ГРАЖДАНИ СА ИЗПИТВАНИ ОТ ЗДРАВЕН ОФИЦИАЛЕН И ОПРЕДЕЛЕНИ ЗДРАВИ, НЯМА ДЕКТИВИРАНИ ДЪЛГОТОВНИ УСЛОВИЯ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗПЪЛНЕНИЕТО НА ИЗПЪЛНЕНИЕТО.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ЖЪЛТА КНИЖКА",
          headerSubtitle = "Официален документ за жълта книжка.",
          elements = {
            { label = "ПАЦИЕНТ ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ПАЦИЕНТ ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ПАЦИЕНТЪТ ИМА ПСИХИЧНИ ОТКЛОНЕНИЯ И МУ Е НЕОБХОДИМО ЛЕЧЕНИЕ.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ОЧЕН СПЕЦИАЛИСТ",
          headerSubtitle = "Официален медицински доклад, предоставен от очен специалист.",
          elements = {
            { label = "ПАЦИЕНТ ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ПАЦИЕНТ ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "АФОРМЕНТИРАНИТЕ ЗАСТРАХОВАНИ ГРАЖДАНИ СА ИЗПИТВАНИ ОТ ЗДРАВЕОПАЗВАНЕ НА ОФИЦИАЛНИТЕ И ОПРЕДЕЛЕНИ С ЗДРАВЕ И ТОЧНО ОЧЕНИЕ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗПЪЛНЕНИЕТО НА ИЗПЪЛНЕНИЕТО.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "МАРИХУАНА - РАЗРЕШЕНО",
          headerSubtitle = "Официално разрешение за употреба на медицинска марихуана за гражданите.",
          elements = {
            { label = "ПАЦИЕНТ ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ПАЦИЕНТ ФАМИЛНО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "АФОРМЕНТИРАНОТО ЗАстраховано гражданство е предоставено, СЛЕД СЪЩЕСТВЕНО ИЗСЛЕДВАНО ОТ ЗДРАВЕН СПЕЦИАЛИСТ, МАРИУУАНА ИЗПОЛЗВАНЕ ДОПЪЛНИТЕЛНО ОТ НЕИЗВЕСТНИ МЕДИЦИНСКИ ПРИЧИНИ. ПРАВНАТА И РАЗРЕШЕНА СУМА, КОЯТО ГРАЖДАНСКИ МОЖЕ ДА СЕ СЪДЪРЖА, НЕ МОЖЕ ДА СЕ ПОВЕЧЕ ОТ 100 грама.", can_be_emtpy = false, can_be_edited = false },
          }
        },
    }
  }
