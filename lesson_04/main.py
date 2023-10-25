from lesson_04.ticket_class.customer import Customer
from lesson_04.ticket_class.ticket import Ticket
from lesson_04.ticket_class.ticket_provider import TicketProvider


def main():
    tip = TicketProvider()
    new_ticket = tip.get_ticket(100)
    new_ticket.set_price(1000)
    print(new_ticket)
    new_ticket.set_place(55)
    customer = Customer()

    customer.set_card(3456_2375_4872_3942)
    if customer.buy_ticket(new_ticket):
        tip.upgrade_ticket(new_ticket)

    print(customer)


if __name__ == '__main__':
    main()
