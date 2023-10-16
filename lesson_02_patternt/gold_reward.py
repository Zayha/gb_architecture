from game_item import GameItem


class GoldReward(GameItem):
    
    def open(self):
        print(f'Открыли сундук с золотом')
