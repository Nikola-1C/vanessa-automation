# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи



@IgnoreOnCIMainBuild
@tree


Функционал: Тестовая фича, для проверки работы тега tree, когда есть вертикальная черта

Сценарий: Тестовая фича, для проверки работы тега tree, когда есть вертикальная черта
	Когда Шаг один
		Когда В панели разделов я выбираю "Основная"
		И     В панели функций я выбираю "Справочник1"
		Тогда открылось окно "Справочник1"
		И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
					| 'Код'       | 'Наименование'       | 'Реквизит булево' |
					| '000000002' | 'Тестовый Элемент 2' | 'Нет'             |
		И тот же уровень			
	И Шаг два	