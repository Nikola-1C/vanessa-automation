# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA13_управлять_Test_clients

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка закрытия TestClient и подключение заново

Как разработчик
Я хочу чтобы корректно происходило переподключение TestClient
Чтобы я мог закрывать и открывать заново TestClient


Сценарий: Закрытие TestClient и подключение ещё раз
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И     я закрываю сеанс TestClient
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И     я закрываю сеанс TestClient