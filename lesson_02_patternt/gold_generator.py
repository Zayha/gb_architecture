from gold_reward import GoldReward
from item_fabric import ItemFabric


class GoldGenerator(ItemFabric):
    def create_item(self):
        print(f'Создать сундук(золото)')
        return GoldReward()
