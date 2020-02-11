# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка перевода получения состояния формы



Сценарий: Проверка перевода получения состояния формы
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	И Я запоминаю значение выражения 'ИмяПользователя()' в переменную "ИмяПользователя"
	
	Когда Я подключаю клиент тестирования с параметрами:
		| 'Имя подключения' | 'Порт' | 'Строка соединения'  | 'Логин'             | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'TestEN'          | '1538' | ''                   | '$ИмяПользователя$' | ''       |  '/TestManager'                             |

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И из выпадающего списка "Язык генератора Gherkin" я выбираю "English"
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СлужебнаяФичаEN6"
	И     Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И     Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient



	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	
	Тогда таблица "ДеревоТестов" стала равной:
		| 'Имя процедуры'                                          | 'Статус'  |
		| ''                                                       | ''        |
		| ''                                                       | ''        |
		| ''                                                       | ''        |
		| ''                                                       | ''        |
		| 'ЯОткрылНовыйСеансTestClientИлиПодключилУжеСуществующий' | 'Success' |
		| 'ЯЗакрылВсеОкнаКлиентскогоПриложения'                    | 'Success' |
		| ''                                                       | 'Success' |
		| 'ВКомандномИнтерфейсеЯВыбираю'                           | 'Success' |
		| 'ОткрылосьОкно'                                          | 'Success' |
		| 'ЯНажимаюНаКнопкуСИменем'                                | 'Success' |
		| 'ОткрылосьОкно'                                          | 'Success' |





	И я перехожу к закладке с именем "ГруппаДополнительно"
	
	И я выбираю пункт контекстного меню с именем 'СгенерированныйСценарийКонтекстноеМенюОчиститьСгенерированныйСценарий' на элементе формы с именем "СгенерированныйСценарий"
	
	И я нажимаю на кнопку с именем 'ПолучитьСостояниеТекущегоЭлементаФормы'
	И я жду, что поле с именем "СгенерированныйСценарий" перестанет быть пустым в течение 30 секунд
	И я запоминаю значение поля с именем "СгенерированныйСценарий" как "СгенерированныйСценарий"
	И Я запоминаю значение выражения 'СокрЛП($СгенерированныйСценарий$)' в переменную "СгенерированныйСценарий"
	Тогда переменная "СгенерированныйСценарий" имеет значение 'Then the form attribute named "Наименование" became equal to ""'

	И я выбираю пункт контекстного меню с именем 'СгенерированныйСценарийКонтекстноеМенюОчиститьСгенерированныйСценарий' на элементе формы с именем "СгенерированныйСценарий"
	И я нажимаю на кнопку с именем 'ПолучитьИзмененияФормыGherkin'
	И я жду, что поле с именем "СгенерированныйСценарий" перестанет быть пустым в течение 30 секунд
	Тогда элемент формы с именем "СгенерированныйСценарий" стал равен 
		|'	Then the form attribute named \"Код\" became equal to \"\"'|
		|'	Then the form attribute named \"Наименование\" became equal to \"\"'|
		|''|
		|''|








	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	
	
	
Сценарий: Закрытие служебного сеанса TestEN
	И я закрываю TestClient "TestEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	