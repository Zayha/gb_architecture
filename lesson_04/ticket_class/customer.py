from datetime import datetime
from typing import List

from lesson_04.ticket_class.cash_provider import CashProvider
from lesson_04.ticket_class.ticket import Ticket


class Customer:
    instance_count = 0

    def __init__(self):
        self._card = None
        self._id = Customer.instance_count
        self._tickets = None
        self._cash = CashProvider()
        Customer.instance_count += 1

    def __str__(self):
        text = 'Список билетов:\n' + '* ' * 20 + '~~~~~~~~'.join([str(i) for i in self._tickets]) + '* ' * 20
        return 'Нет билетов' if self._tickets is None else text

    @property
    def get_id(self):
        return self._id

    def set_card(self, card: int):
        assert isinstance(card, int), 'данные не соответствуют номеру карты'
        self._card = card

    def get_card(self) -> int:
        return self._card if isinstance(self._card, int) else ValueError('Данные карты не валидны')

    def buy_ticket(self, ticket: Ticket) -> bool:
        assert isinstance(ticket, Ticket), 'Это не билет'
        self._cash.set_reserved_funds(ticket.get_price())
        self._cash.set_card_number(self.get_card())
        self._cash.buy(ticket.get_place())
        self._cash.authorization(self._id)
        if self._cash.buy:
            if self._tickets is None:
                self._tickets: List[Ticket] = []
            self._tickets.append(ticket)
            return True
        else:
            return False

    def search_ticket(self, date: datetime):
        pass
