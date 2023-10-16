from item_fabric import ItemFabric
from tree_reward import TreeReward


class TreeGenerator(ItemFabric):
    def create_item(self):
        print(f'Создать сундук(изумруд)')
        return TreeReward()
