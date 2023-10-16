from game_item import GameItem


class FishReward(GameItem):

    def open(self):
        print(f'Открыли сундук с желтым полосатиком')
