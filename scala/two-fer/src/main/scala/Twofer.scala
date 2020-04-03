object Twofer {
  def twofer(name: String): String = {
    "One for %s, one for me.".format(if (!name.isBlank()) name else "you")
  }
  def print2fer() = print(twofer("the homies"));
}
