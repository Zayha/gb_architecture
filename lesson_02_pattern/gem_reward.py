from game_item import GameItem


class GemReward(GameItem):

    def open(self):
        print(f'Открыли сундук с изумрудом')
