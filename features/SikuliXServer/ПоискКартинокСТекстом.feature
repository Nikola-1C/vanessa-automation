# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOnFastCheck
@IgnoreOnUFSovm82Builds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314


@tree


Функциональность: Поиск картинки с текстом


Сценарий: Поиск картинки с текстом
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиРаботыСПрофилямиПоиска"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'

	И я устанавливаю флаг 'Эмулировать движения мышки'
	
	Тогда таблица "ПрофилиПоискаКартинокСТекстом" содержит строки
		| 'Имя'   | 'Шрифт' | 'Цвет фона' | 'Цвет шрифта' | 'Размер' |
		| 'Тест1' | 'arial' | 'white'     | 'black'       | '14'     |
