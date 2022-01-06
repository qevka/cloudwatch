<h1 align="center">Welcome to cloudwatch 👋</h1>
<p>
  <a href="https://github.com/qevka/cloudwatch#readme" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://github.com/qevka/cloudwatch/graphs/commit-activity" target="_blank">
    <img alt="Maintenance" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://github.com/qevka/cloudwatch/blob/master/LICENSE" target="_blank">
    <img alt="License: ISC" src="https://img.shields.io/github/license/qevka/cloudwatch" />
  </a>
</p>

> This is a simple app that queries the metaweather api and displays weather data from around the world.
> 
> Core Features
>   * Getx State Management (dependency injection / MVC).
>   * Ability to change Temperature Units (Celsius/Fahrenheit).
>   * Particle Animators for different weather conditions.
>   * Data models that include all of MetaWeather's data points for possibility of future feature development.
>   * Separate Settings screen for future settings and cleaner design.
>   * Settings persist after app is closed.
> 
> Potential Improvements
>   * Auto-Completing textfield (when someone types a city it shows a list of citys that match what they have typed so far) like google maps.
>   * The Metaweather api doesn't include all the cities in the US or world just a small subset. If we continued using this API we could make a function that would return the lat and lon for specific cities, then we could query the api using lat and lon which then would return the id for the nearest city, this would make it possible of people to find the city closest to them.
>   * The ability to see a whole weeks forcast instead of just the current weather.
>   * Ability to persist different locations or a home location so that the user doesn't have to keep to keep entering their city in over and over again.

### 🏠 [Homepage](https://github.com/qevka/cloudwatch#readme)

## Install

```sh
flutter run --release
```

## Usage

```sh
Open this project in android studio, or vscode and build it on simulator to try it out.
```

## Run tests

```sh
flutter test
```

## Author

👤 **Caleb Maccarone**

* Github: [@qevka](https://github.com/qevka)
* LinkedIn: [@maccarone](https://linkedin.com/in/maccarone)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/qevka/cloudwatch/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2022 [Caleb Maccarone](https://github.com/qevka).<br />
This project is [ISC](https://github.com/qevka/cloudwatch/blob/master/LICENSE) licensed.

***