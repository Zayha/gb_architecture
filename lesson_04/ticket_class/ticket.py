import decimal
from datetime import datetime


class Ticket:
    def __init__(self, root_number: int):
        self._price_ticket = None
        self._place = None
        assert isinstance(root_number, int), 'Номер билеты некорректен, int'
        self._root_number = root_number
        self._date_time = datetime.now()
        self._is_valid = False

    def __str__(self):
        return (f'\nTicket number: {self._root_number}\n'
                f'Place: {self._place}\nDate: {self._date_time}\nValid: {self._is_valid}\n')

    def set_price(self, price: float):
        assert isinstance(price, (float, int)), 'Тип переданной переменной(price) не соответствует float'
        self._price_ticket = float(price)

    def set_place(self, place: int):
        assert isinstance(place, int), 'Тип переданной переменной(place) не соответствует int'
        self._place = place

    def get_place(self):
        return self._place if isinstance(self._place, int) else ValueError('Не соответствует типу int')

    def get_price(self):
        return self._price_ticket if isinstance(self._price_ticket, float) else ValueError(
            'Не соответствует типу float')

    @property
    def is_valid_true(self):
        self._is_valid = True
        return True
