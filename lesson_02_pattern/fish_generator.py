from fish_reward import FishReward
from item_fabric import ItemFabric


class FishGenerator(ItemFabric):
    def create_item(self):
        print(f'Создать сундук(желтый полосатик)')
        return FishReward()
