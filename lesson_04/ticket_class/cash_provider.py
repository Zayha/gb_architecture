
class CashProvider:

    def __init__(self):
        self._card = None
        self._is_authorization = False
        self._reserved_funds = None

    def set_reserved_funds(self, price: float):
        assert isinstance(price, float), 'стоимость билета не float'
        assert price >= 0, 'Стоимость не может быть отрицательной'
        self._reserved_funds = price

    def set_card_number(self, number: int):
        assert isinstance(number, int), 'Некорректный тип номера карты, должен быть int'
        self._card = number

    def buy(self, place: int) -> bool:
        #тут банк нам всё одобрил
        print('Банк добр к тебе сегодня...')
        return True if self._is_authorization else False

    def authorization(self, customer_id: int) -> bool:
        assert isinstance(customer_id, int), 'Некорректный тип покупателя'
        self._is_authorization = True
        return True
