# My_projects
Мои учебные и рабочие проекты


### Проект 1. [Создание отчета по инсайдерской торговле](https://github.com/AOKonovalov/My_projects/blob/main/Создание%20отчета%20по%20инсайдерской%20торговле.ipynb) 

Проблема: вручную долго создавать + необходимо выводить в формате поста (это была еженедельная задача)

Задача: максимально автоматизировать процесс обновления отчета с учетом специфики его создания

Результат: процесс полностью автоматизирован, нужно только обновлять выгрузки

Стек: python: pandas, datetime

### Проект 2. [Когортный анализ удержания пользователей в мобильном приложении](https://github.com/AOKonovalov/My_projects/blob/main/Когортный%20анализ%20удержания%20пользователей.ipynb)

Задача: построить визуальное представление когорты по месяцам, которая покажет, как
удерживаются клиенты после их первого посещения мобильного приложения; выдвинуть гипотезы такого поведения.

Результат: пользователи были разбиты на когорты и для каждой когорты выведен retention на графике. 

Вывод: Отчетливо можно заметить, что пользователи из 1 когорты возвращаются в приложение чаще, чем пользователи из других когорт, при этом сам показатель retention с каждым месяцем уменьшается достаточно плавно, в то время как с каждой последующей когортой снижение показателя более резкое, то есть более новые пользователи возвращаются в приложение реже, чем более старые. 

Такое поведение может сложиться по совершенно разным причинам, например, юзеры из первой когорты были зарегистрированы через удачное промо или у них другие, более выгодные условия подписки, что заставляет их пользоваться приложением чаще.     

Стек: python: pandas, matplotlib.pyplot, plotly.express

### Проект 3. [BI-отчет по продажам FMCG-компании](https://github.com/AOKonovalov/My_projects/blob/main/отчет%20о%20продажах.pdf)

Задача: создать дашборд, который бы позволил проаназировать выручку в разрезе периодов, категории продуктов, продуктов, географии.

Результат: обработаны данные при помощи Power Query, созданы дополнительные вычисляемые столбцы и меры через DAX (выручка нарастающим итогом, выручка за прошлый период для постановки целей, доли и т.д.)

**[Модель данных](https://github.com/AOKonovalov/My_projects/blob/main/Модель%20данных.pdf)**

Стек: Power BI, Power Query

### Проект 4. [BI-отчет по вакансиям на hh.ru]()

Задача: создать дашборд, который бы позволил проаназировать динамику вакансий, уровень з/п, работодателей и другие характеристики вакансий на hh.ru

Результат: обработаны данные при помощи Power Query (созданы условные столбцы, обработано разделение по столбцам), созданы дополнительные вычисляемые столбцы и меры через DAX 

Стек: Power BI, Power Query
