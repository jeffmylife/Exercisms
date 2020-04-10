object SpageAge  {

  def earth_time_converter(seconds: Int, multiplier: Double) = seconds / multiplier / 60 / 60 / 24 / 365.25

  def onMercury(seconds:Int):Double = {
    earth_time_converter(seconds, 0.2408467)
  }

  def onVenus(seconds:Int):Double = {
    earth_time_converter(seconds, 0.61519726)
  }

  def onMars(seconds:Int):Double = {
    earth_time_converter(seconds, 1.8808158)
  }

  def onJupiter(seconds:Int):Double = {
    earth_time_converter(seconds, 11.862615)
  }

  def onSaturn(seconds:Int):Double = {
    earth_time_converter(seconds, 29.447498)
  }

  def onUranus(seconds:Int):Double = {
    earth_time_converter(seconds, 84.016846)
  }

  def onNeptune(seconds:Int):Double = {
    earth_time_converter(seconds, 164.79132)
  }

  def onEarth(seconds:Int):Double = {
      earth_time_converter(seconds, 1.0)
  }
}
