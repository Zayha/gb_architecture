from game_item import GameItem


class TreeReward(GameItem):

    def open(self):
        print(f'Открыли сундук с деревом')
