object SpaceAge extends App {

  def earth_time_converter(seconds: Double, multiplier: Double): Double  = seconds / multiplier / 60 / 60 / 24 / 365.25

  def onMercury(seconds:Double):Double = {
    earth_time_converter(seconds, 0.2408467)
  }

  def onVenus(seconds:Double):Double = {
    print(earth_time_converter(189839836,0.61519726))
    print("\n\n")
    earth_time_converter(seconds, 0.61519726)
  }

  def onMars(seconds:Double):Double = {
    earth_time_converter(seconds, 1.8808158)
  }

  def onJupiter(seconds:Double):Double = {
    earth_time_converter(seconds, 11.862615)
  }

  def onSaturn(seconds:Double):Double = {
    earth_time_converter(seconds, 29.447498)
  }

  def onUranus(seconds:Double):Double = {
    earth_time_converter(seconds, 84.016846)
  }

  def onNeptune(seconds:Double):Double = {
    earth_time_converter(seconds, 164.79132)
  }

  def onEarth(seconds:Double):Double = {
      earth_time_converter(seconds, 1.0)
  }


  print(onVenus(20000))
}
