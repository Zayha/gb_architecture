import random

from fish_generator import FishGenerator
from gem_generator import GemGenerator
from gold_generator import GoldGenerator
from tree_generator import TreeGenerator


def main():
    fabric_lst = [GoldGenerator(), GemGenerator(), FishGenerator(), TreeGenerator()]
    for _ in range(20):
        random.choice(fabric_lst).create_item().open()


if __name__ == '__main__':
    main()
