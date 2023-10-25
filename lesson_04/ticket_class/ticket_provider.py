from lesson_04.ticket_class.ticket import Ticket


class TicketProvider:
    @staticmethod
    def upgrade_ticket(ticket: Ticket) -> bool:
        return ticket.is_valid_true

    @staticmethod
    def get_ticket(root_number) -> Ticket:
        return Ticket(root_number)
