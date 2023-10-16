from gem_reward import GemReward
from item_fabric import ItemFabric


class GemGenerator(ItemFabric):
    def create_item(self):
        print(f'Создать сундук(изумруд)')
        return GemReward()
