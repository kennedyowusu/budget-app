<a name="readme-top"></a>
<div align="center">

  <h1><b>Budget Application</b></h1>
</div>
<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Budget App ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
  - [🛠 Tech Stack ](#-tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo](#live-demo)
  - [🚀 Video Presentation](#presentation)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors](#-authors)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget-app <a name="about-project"></a>

Budget app is an app for managing transactions with categorized lists, sign-up and login pages, and navigation buttons for moving between pages. Users can add new categories or transactions.

## 🛠 Built With <a name="built-with"></a>
This app is build with Ruby on Rails and Postgresql.
### Tech Stack <a name="tech-stack"></a>
> <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
> <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
> <li><a href="https://www.postgresql.org/">Postgresql</a></li>

### Key Features <a name="key-features"></a>

> - Categories for Lists.
> - Navigation Menu.
> - New Categories Creation.
> - New Transactions Creation.

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link]()- Powered by Render

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Video Presentation <a name="presentation"></a>

- [Video Presentation Link] ()- Powered by Loom

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

## UML Diagram :

<img src = './app/assets/images/erd_diagram.png'>

## To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Mac or PC
- Install Ruby
- Install Rails
- Install Postgresql
- Understanding of Ruby

### Setup

- Clone this repository to your desired folder:

```sh
 git clone https://github.com/kennedyowusu/budget-app.git
```

- Navigate into the cloned folder

```sh
 cd budget-app

```
### Install

- Install this project with:

```sh
 bundle install
```

- Set up the database
  Change the username and password of your postgres account in `config/database.yml`

```sh
 rails db:create db:migrate
```

- Start the server

```sh
 rails s
```

- Run tests

```sh
 rails db:migrate RAILS_ENV=test
```

```sh
 rspec spec
```

- if it shows error try using this command

```sh
 bundle exec rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors<a name="authors"></a>

👤 **Kennedy Owusu**

- GitHub: [@kennedyowusu](https://github.com/kennedyowusu)
- Twitter: [@_iamkobby](https://twitter.com/_iamkobby)
- LinkedIn: [kennedyowusu](https://www.linkedin.com/in/kennedyowusu)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/kennedyowusu/budget-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please leave a ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) in accordance with the [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/).

-A big thank you to Microverse for giving me this opportunity to learn and apply my newly acquired skills on this project

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
