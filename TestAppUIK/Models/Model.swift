//
//  Model.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

//MARK: - CompanyInformation

struct CompanyInformation {
    let titleAboutCompany: String
    let companyAskes: String
    let companyThanks: String
    
    static func getCompanyInfo() -> CompanyInformation {
        CompanyInformation(
            titleAboutCompany:  "Информация о компании Kerr. \n \nКомпания Kerr разрабатывает и производит продукты, которые используются в каждой процедуре реставрации. Представители компании работают в тесном сотрудничестве с дистрибьюторами во всех странах мира, оказывая всестороннюю поддержку конечному потребителю и укрепляя нашу позицию одного из лидеров мирового рынка. \n \nПостоянно совершенствуя возможности выполнения эстетических реставраций через образовательные мероприятия и комплексные решения, разработанные на основе опыта клинического использования, имя Kerr стало синонимом безупречности для профессиональных стоматологов во всем мире. \n \nОтличительной чертой Kerr является стремление к инновациям. Фокусируясь на разработке и производстве композитов, адгезивных систем, оттискных материалов, цементов и аксессуаров, мы всегда опережали время. Каждый инновационный продукт от Kerr начинается с практики врачей. Когда пользователь говорит, мы слушаем. \n \nМы постоянно движемся вперед и продолжаем разрабатывать реставрационные материалы, определяющие лицо современной стоматологии. Широкий ассортимент продукции Kerr отражает ее постоянное развитие, вдохновляемое десятилетиями создания продуктов, задающих стандарты отрасли. Мы считаем, что любой новый продукт от Kerr должен быть клинически эффективен для пациента и экономически выгоден для стоматологической клиники. \n \nС помощью нашего портфеля продуктов мы хотим предложить Вам решения, которые гарантируют высокие результаты и экономическую эффективность Вашей повседневной практики. Мы завоевали доверие стоматологов по всему миру благодаря технологиям, которые уже более 130 лет оправдывают ожидания Ваших пациентов. Наш успех зависит от Ваших предпочтений, и мы гордимся возможностью предложить нашим клиентам и партнерам именно то, что им необходимо.\n \nИстория компании Kerr. \n \nКомпания Kerr была основана в США в 1891 году братьями Робертом и Джоном Керр под названием «The Detroit Dental Manufacturing Company», а уже в 1893 году продукция начала поставляться в европейские страны. \n \nВ 1939 году компания была переименована в «The KERR Manufacturing Company». \n \nВ 1959 году был открыт завод в городе Скафати (Италия). Компания Kerr активно расширяет свой ассортимент не только за счет собственных разработок, но и благодаря присоединению других компаний. Так, в 1993 в состав Kerr вошел производитель полимеризационных ламп Demetron, в 2001 году – швейцарская компания Hawe Neos, специализирующаяся на производстве аксессуаров для выполнения реставрации, в 2003 году – чешская компания Spofa, а в 2010 – компания Pentron. \n \nШтаб-квартиры в Европе, Ближнем Востоке и Африке. \n \nГоловной офис компании Kerr находится в городе Орандж (Калифорния, США). Европейское подразделение KerrHawe SA с головным офисом в Бьоджио (Швейцария) поставляет продукцию и услуги стоматологам и дистрибьюторам в Европе, Африке и на Ближнем Востоке. Заводы Kerr находятся в Оранж (США), Мехикали (Мексика), Бьоджио (Швейцария), Скафати (Италия) и Йичине (Чехия).",
            companyAskes: "Наша компания постоянно развивается. \nМы стремимся быть лучше для Вас и нацелены предлагать продукты, которые помогут решить вопрос именно  в Вашей практике. \n \nДля этой цели мы просим Вас пройти короткий опрос, он поможет нам лучше узнать чем Вы пользуетесь и упростит подбор нужного для Вас продукта.",
            companyThanks: "Благодарим Вас за прохождения опроса! \n \nРезультаты:"
        )
    }
}
//MARK: - Product

struct Product {
    let nameOfGroup: String
    let item: [Item]
    
    static func getProduct() -> [Product] {
        [
            Product(
                nameOfGroup: "Адгезивные системы",
                item:
                    [
                        Item(
                            name: "OptiBond™ FL",
                            description: "Адгезив тотального протравливания. Двухкомпонентная адгезивная система тотального протравливания. OptiBond™ FL признан <золотым> стандартом ведущими институтами мира.",
                            advantage: "Особенности и преимущества: Высокая наполненность 48% обеспечивает прочность адгезивного слоя, Работа на сухом и влажном дентине, Сила адгезии, подтвержденная более чем 25–летним опытом применения, Прочная адгезивная пленка выполняет функцию суперадаптивного слоя, Удобное нанесение: один слой праймера, один слой адгезива, одно засвечивание"
                        ),
                        Item(
                            name: "OptiBond™ Solo Plus",
                            description: "Адгезив тотального протравливания. Однокомпонентный светоотверждаемый адгезив для прямых и непрямых реставраций. Обеспечивает превосходный результат при простоте протокола.",
                            advantage: "Особенности и преимущества OptiBond™ Solo Plus: Праймер и адгезив в одном флаконе упрощают процедуру нанесения и экономят ваше время, Меньше этапов адгезивного протокола – ниже риск ошибки, В качестве растворителя использован этанол. Поэтому OptiBond™ Solo Plus наносится однократно, в отличие от адгезивов на основе ацетона, требующих нанесения в несколько слоев, Высокая наполненность адгезива (15 %) обеспечивает прочность адгезивной пленки и надежно защищает от микроподтеканий, GPDM–технология, проверенная многолетним опытом"
                        ),
                        Item(
                            name: "OptiBond™ Universal",
                            description: "Универсальный адгезив. OptiBond™ Universal — это однокомпонентная адгезивная система, обеспечивающая отличное сцепление с любыми поверхностями и материалами при проведении прямых и непрямых реставраций.",
                            advantage: "Особенности и преимущества OptiBond™ Universal, Универсальность применения: для прямых и непрямых реставраций, Подходит для любой техники: тотальное, селективное и самопротравливание, Эффективен при нанесении всего одним слоем, Гидрофильная технология OptiBond™ гарантирует превосходное проникновение в дентинные канальцы и защищает от микроподтеканий и послеоперационной чувствительности, Тонкая адгезивная пленка 5 мкм не завышает ортопедическую конструкцию"
                        )
                    ]
            ),
            Product(
                nameOfGroup: "Композитные материалы",
                item:
                    [
                        Item(
                            name: "OptiShade™",
                            description: "Наногибридный универсальный композит. OptiShade™ позволяет оптимизировать работу и при этом получать эстетичные реставрации высокой прочности. С помощью всего трех оттенков OptiShade™ (Light, Medium, Dark) можно быстро и просто воспроизвести любой из 16 классических оттенков шкалы VITA®. Система композитов OptiShade™ обеспечивает высокую прочность, эстетичный внешний вид и продолжительный срок службы реставрации.",
                            advantage: "Особенности и преимущества: 3 оттенка OptiShade™ (Light, Medium, Dark) соответствуют всем 16 классическим оттенкам шкалы VITA®. Основные показания к применению: восстановление дефекта любого класса на фронтальных и жевательных зубах. Дополнительные показания к применеию: восстановление фарфоровых реставраций, наращивание культи зуба."
                        ),
                        Item(
                            name: "Harmonize™",
                            description: "Наногибридный универсальный композит. Harmonize™ произведен по Технологии Адаптивного Реагирования (ART) – особой системе наночастиц наполнителя, благодаря которой осуществлять художественную реставрацию зубов  проще, чем когда-либо. Harmonize™ на 81% состоит из неорганического материала со средним размером первичных частиц менее 50 нм.",
                            advantage: "Основные показания к применению: Выполнение прямых реставраций всех классов по Блэку на фронтальных и жевательных зубах. Дополнительные показания к применению: Восстановление дефектов эмали, временных конструкций, починка постоянных керамических реставраций, небольшие окклюзионные билдапы, восстановление культи, восстановление режущего края при стираемости зубов."
                        ),
                        Item(
                            name: "Herculite™ XRV Ultra™",
                            description: "Наногибридный универсальный композит. Herculite™ XRV Ultra™ разработан на основе технологии Herculite™ XRV™, известной на рынке более 30 лет.",
                            advantage: "Особенности и преимущества Herculite™ XRV Ultra™: Высокая прочность на изгиб (160,1 МПа) благодаря высокой наполненности материала (78 %); Оптимальная консистенция: материал не липнет к инструменту и сохраненяет форму при моделировании; Хорошая адаптация и пакуемость при выполнении реставраций жевательных зубов; Размер частиц близок к размеру эмалевых призм, поэтому реставрация из Herculite™ XRV Ultra™ обладает естественной флуоресценцией и опалесценцией; Высокая цветовая стабильность; Отличная полируемость и устойчивый блеск (34,5 единицы блеска) благодаря использованию запатентованных частиц Point 4™ (размер частиц 0,4 мкм) и наночастиц; Высокая рентгеноконтрастность (250 % Al)."
                        ),
                        Item(
                            name: "Herculite™ XRV Ultra Flow™",
                            description: "Наногибридный текучий композит. Созданный по технологии Smart Placement, Herculite™ XRV Ultra Flow имеет реологический модификатор, позволяющий ему легко растекаться в момент внесения, заполняя все поднутрения.",
                            advantage: "Особенности и преимущества: Демонстрирует превосходные прочностные показатели: низкую усадку 2.79 % и прочность на изгиб 124 Мпа; Легко различим на рентгенограммах благодаря высокой рентгеноконтрастности 325%; Легко полируется и сохраняет блеск надолго."
                        ),
                        Item(
                            name: "Premise™ Flowable",
                            description: "Наногибридный текучий композит. Premise™ Flowable – cветоотверждаемый композит средней вязкости с нанонаполнителем. Сочетание трех видов наполнителей: преполимеризованного наполнителя (PPF), нанонаполнителя и проверенной технологии Point4™ обеспечивает оптимальную прочность и долговечность реставрации.",
                            advantage: "Особенности и преимущества Premise™ Flowable: Минимальный риск микроподтеканий и прокрашиваний по краю реставрации благодаря преполимеризованному наполнителю (PPF) в сочетании с низкой усадкой; Превосходная полируемость и долговечность зеркального блеска благодаря проверенному наполнителю Point4™ (0,4 мкм) и дискретному нанонаполнителю (0,02 мкм); Не стекает и хорошо держит форму; Выдерживает жевательные нагрузки за счет высокой наполненности (72,5%); Обладает высокой рентгеноконтрастностью (более 300 % Al); Универсален: подходит для реставрации небольших полостей I, III и V классов, некариозных дефектов в пришеечной области (клиновидный дефект, эрозия эмали), и в качестве лайнерной прокладки для полостей II класса; Хороший выбор из 8 оттенков для различных клинических случаев."
                        ),
                    ]
            ),
            Product(
                nameOfGroup: "Цементы для постоянной фиксации",
                item:
                    [
                        Item(
                            name: "Maxcem Elite™",
                            description: "Цемент для постоянной фиксации. Самопротравливающий самоадгезивный композитный цемент двойного отверждения для непрямых реставраций. В составе Maxcem Elite™ использована та же адгезивная технология, что и в знаменитом семействе OptiBond™ от Kerr.",
                            advantage: "Основные показания к применению: цементирование непрямых реставраций всех типов, включая керамические, композитные и металлические вкладки/накладки, коронки, мосты, штифты и виниры."
                        ),
                        Item(
                            name: "NX3™",
                            description: "Цемент для постоянной фиксации. Композитный цемент для непрямых реставраций, доступный в формах светового и двойного отверждения. Благодаря инновационной химической структуре цемент NX3 гарантирует непревзойденную адгезию и высокую эстетику.",
                            advantage: "Особенности и преимущества NX3: Великолепная адгезия к любым поверхностям: дентину и эмали, блокам CAD/CAM, керамике, композиту, металлу; При применении техники тотального протравливания активатор двойного отверждения не требуется, совместим с большинством адгезивных систем; Качество фиксации очень просто проконтролировать благодаря высокой рентгеноконтрастности (330 % Al); Легкое удаление излишков в гелеобразной фазе."
                        )
                    ]
            ),
            Product(
                nameOfGroup: "Финирование и полировка",
                item:
                    [
                        Item(
                            name: "OptiDisc™",
                            description: "Диски. OptiDisc™ – это эффективная система дисков для финирования и полировки, позволяющая придать реставрации зеркальный блеск, сходный с блеском естественных тканей зубов. В систему OptiDisc™ входят диски с абразивными частицами различного размера для контурирования, финирования и полировки до зеркального блеска композитов, стеклоиономеров, амальгам, драгоценных и полудрагоценных металлов.",
                            advantage: "Особенности и преимущества OptiDisc™: Держатель не выступает над поверхностью диска: с OptiDisc™ нет риска поцарапать реставрацию или повредить мягкие ткани; Прозрачность диска обеспечивает хороший обзор рабочего поля; Укороченный дискодержатель позволяет добраться до труднодоступных участков. Это особенно удобно при работе на дистальных зубах; Интуитивная цветовая кодировка позволяет подобрать нужную степень абразивности; Абразивные частицы выступают над клеящим составом: обработка реставрации начинается с первого касания; Высокая эффективность абразивного слоя благодаря износостойкому полиэстеру."
                        ),
                        Item(
                            name: "Occlubrush™",
                            description: "Щеточки для полировки. Occlubrush™ – это щеточки, использующиеся для быстрой полировки до зеркального блеска окклюзионных и вогнутых поверхностей реставраций из композитов, компомеров, стеклоиономеров и керамики, а также для профилактической обработки.",
                            advantage: "Особенности и преимущества Occlubrush™: 3 формы для эффективной полировки различных поверхностей, включая труднодоступные апроксимальные участки; Абразивные частицы карбида кремния интегрированы в каждую щетинку, поэтому использование полировочной пасты не требуется; Экономия времени за счет быстрого достижения зеркального блеска; Бережное отношение к эмали зубов и краям реставрации; Многоразовое и длительное использование без потери рабочих качеств благодаря автоклавированию."
                        ),
                        Item(
                            name: "Opti1Step™",
                            description: "Полировочная система многократного использования. Opti1Step™ – это одноэтапная полировочная система для финишной обработки до зеркального блеска всех видов композитных реставраций.",
                            advantage: "Особенности и преимущества Opti1Step™: 2в1: полировка и придание зеркального блеска за один шаг; Сила воздействия на инструмент регулирует абразивность: сильное давление задействует частицы оксида алюминия для полировки, легкое нажатие – включает в работу алмазное напыление для придания зеркального блеска; Инструмент долго сохраняет рабочие свойства благодаря позолоченному дискодержателю и уникальной абразивной матрице; Возможность автоклавирования и многократного использования: до 20 раз; Использование с водяным охлаждением (до 20 000 об/мин) и без него (до 5 000 об/мин); Полировочная паста не требуется."
                        ),
                        Item(
                            name: "Identoflex™ Diamond Ceramic",
                            description: "Полиры для керамики. Алмазные полиры с двумя зонами для обработки керамики непосредственно в кресле. Чашечка: для полировки выпуклых поверхностей благодаря тонкой кромке, межзубной области и вдоль линии угла. Пламя/Острый кончик: для полировки вогнутых и окклюзионных поверхностей.",
                            advantage: "Особенности и преимущества Identoflex™ Diamond Ceramic: Алмазной крошкой импрегнированы только активные зоны – те, которые контактируют с обрабатываемой поверхностью; С помощью цветового кода легко определить активную зону; Полирами можно работать на низких оборотах. Это минимизирует риск перегрева зуба и повреждения пульпы."
                        )
                    ]
            )
        ]
    }
}

struct Item {
    let name: String
    let description: String
    let advantage: String
}

//MARK: - Question

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какой композитный материал Вы используете при фронтальной работе?",
                answers:
                    [
                        Answer(title: "Harmonize", questionNumber: .q1),
                        Answer(title: "Estelite Sigma Quick", questionNumber: .q1),
                        Answer(title: "Estelite Asteria", questionNumber: .q1),
                        Answer(title: "Filtek Ultimate", questionNumber: .q1),
                        Answer(title: "Tetrci-n-Ceram", questionNumber: .q1),
                        Answer(title: "Ceram X Spheretec", questionNumber: .q1),
                        Answer(title: "Ceram X Neo Spectra", questionNumber: .q1),
                        Answer(title: "Igos", questionNumber: .q1)
                    ]
            ),
            Question(
                title: "Какой адгезив Вы используете в работе?",
                answers:
                    [
                        Answer(title: "Optibond FL", questionNumber: .q2),
                        Answer(title: "Optibond Solo Plus", questionNumber: .q2),
                        Answer(title: "Optibond Universal", questionNumber: .q2),
                        Answer(title: "Bondforce 2", questionNumber: .q3),
                        Answer(title: "Bondforce Universal", questionNumber: .q2),
                        Answer(title: "G-Bond", questionNumber: .q2),
                        Answer(title: "Prime&Bond Universal", questionNumber: .q2),
                        Answer(title: "Prime&Bond гавно", questionNumber: .q2)
                    ]
            ),
            Question(
                title: "Какой композитный материал Вы используете при работе на жевательной группе зубов?",
                answers:
                    [
                        Answer(title: "Harmonize", questionNumber: .q3 ),
                        Answer(title: "Estelite Sigma Quick", questionNumber: .q3),
                        Answer(title: "Estelite Asteria", questionNumber: .q3),
                        Answer(title: "Filtek Ultimate", questionNumber: .q3),
                        Answer(title: "Tetrci-n-Ceram", questionNumber: .q3),
                        Answer(title: "Ceram X Spheretec", questionNumber: .q3),
                        Answer(title: "Ceram X Neo Spectra", questionNumber: .q3),
                        Answer(title: "Igos", questionNumber: .q3)
                    ]
            ),
            Question(
                title: "Какой текучий композит Вы предпочитаете?",
                answers:
                    [
                        Answer(title: "Estelite Universal", questionNumber: .q4),
                        Answer(title: "Premise Flowable", questionNumber: .q4),
                        Answer(title: "S-Flow", questionNumber: .q4),
                        Answer(title: "SRD", questionNumber: .q4),
                        Answer(title: "Revolution", questionNumber: .q4),
                        Answer(title: "Estelite Flow Quick", questionNumber: .q4),
                        Answer(title: "Herculite Ultra Flow", questionNumber: .q4),
                        Answer(title: "Другое", questionNumber: .q4)
                    ]
            ),
            Question(
                title: "Какой цемент Вы используете в работе?",
                answers:
                    [
                        Answer(title: "Maxcem Elite", questionNumber: .q5),
                        Answer(title: "Fuji I", questionNumber: .q5),
                        Answer(title: "Estecem", questionNumber: .q5),
                        Answer(title: "Fuji Plus", questionNumber: .q5),
                        Answer(title: "NX3", questionNumber: .q5),
                        Answer(title: "Ionotite F", questionNumber: .q5),
                        Answer(title: "Total Cem", questionNumber: .q5),
                        Answer(title: "Variolink", questionNumber: .q5)
                    ]
            ),
            Question(
                title: "Что из представленных полировальных систем Вы используете чаще?",
                answers:
                    [
                        Answer(title: "Sof-Lex", questionNumber: .q6),
                        Answer(title: "Opti1step", questionNumber: .q6),
                        Answer(title: "Enchance", questionNumber: .q6),
                        Answer(title: "Occlubrush", questionNumber: .q6),
                        Answer(title: "Kagayaki", questionNumber: .q6),
                        Answer(title: "Optidisc", questionNumber: .q6),
                        Answer(title: "Meissinger", questionNumber: .q6),
                        Answer(title: "ТОР ВМ", questionNumber: .q6)
                    ]
            ),
        ]
    }
}

struct Answer {
    let title: String
    let questionNumber: QuestionNumber
}

enum QuestionNumber {
    case q1, q2, q3, q4, q5, q6
}

//MARK: - Employee

struct JobPerson {
    let regionName: String
    let employee: [Employee]
    
    static func getEmployee() -> [JobPerson] {
        [
            JobPerson(
                regionName: "ЦФО",
                employee:
                    [
                        Employee(name: "Роман", surname: "Григорьев", post: "Руководитель отдела продаж Kerr РФ", cellPhone: "☎️ + 7 (925) 007 01 25", email: "📨 roman.grigoriev@envistaco.com"),
                        Employee(name: "Александр", surname: "Соболев", post: "Руководитель отдела продаж в Москве и ЦФО", cellPhone: "☎️ + 7 (926) 780 60 28", email: "📨 aleksander.sobolev@envistaco.com")
                    ]
            ),
            JobPerson(
                regionName: "СЗФО",
                employee:
                    [
                        Employee(name: "Артем", surname: "Дубровский", post: "Менеджер по работе с ключевыми клиентами ЦФО", cellPhone: "☎️ + 7 (926) 900 43 19", email: "📨 artem.dubrovskiy@envistaco.com"),
                        Employee(name: "Татьяна", surname: "Столетова", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ + 7 (925) 517 58 28", email: "📨 tatiana.stoletova@envistaco.com")
                    ]
            ),
            JobPerson(
                regionName: "ЮФО",
                employee:
                    [
                        Employee(name: "Дарья", surname: "Бокачева", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ + 7 (926) 013 00 86", email: "📨 daria.bokacheva@envistaco.com"),
                        Employee(name: "Юлия", surname: "Степанова", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ + 7 (929) 698 98 90", email: "📨 yulia.stepanova@envistaco.com")
                    ]
            ),
            JobPerson(
                regionName: "УФО",
                employee: [
                    Employee(name: "Илья", surname: "Ульянов", post: "Региональный торговый представитель ЦФО", cellPhone: "☎️ + 7 (929) 585 05 02", email: "📨 ilya.uljyanov@envistaco.com")
                ]
            )
        ]
    }
}

struct Employee {
    let name: String
    let surname: String
    let post: String
    let cellPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

//MARK: - User

struct User {
    let login: String
    let password: String
    let subject: Subject
    
    static func getUserData() -> User {
        User(
            login: "Alex",
            password: "alex",
            subject: Subject.getSubject()
        )
    }
}

struct Subject {
    let name: String
    let surname: String
    let userImage: String
    let bornDate: String
    let cellPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getSubject() -> Subject {
        Subject(
            name: "Александр",
            surname: "Соболев",
            userImage: "Alex",
            bornDate: "Дата рождения: 08.07.1988",
            cellPhone: "Телефон: +7 961 029 75 02",
            email: "Почта: 31108@mail.ru"
        )
    }
}
