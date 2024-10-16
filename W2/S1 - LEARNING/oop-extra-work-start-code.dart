// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}

// Class House
class House {
  String address;
  List<Tree> trees = []; // by default empty

  House(this.address);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }
}

main() {
  House h1 = House('Phnom Penh');
  h1.addTree(Tree('Chrismas tree', 12));
  h1.addTree(Tree('Palm tree', 15));
  print(h1.address);
  //use to display list when we add more tree
  for (var tree in h1.trees) {
    print('Tree type: ${tree.type}, height: ${tree.height}');
  }
}
