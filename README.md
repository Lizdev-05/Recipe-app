# Project Name

My Recipe App

# Description the project.

This is a Ruby on Rails app that allows user to create, delete, and read recipes created by them or the community, allowing the users to decide whether they'd be public or not. Additionally, it allows users to create food records and generate a shopping list based on the missing food for their recipes. It comes with authentication and authorization functionality.

![foods](https://user-images.githubusercontent.com/73854999/201367488-3ef4e67d-a9d2-4184-bb0c-3028d87c31e4.PNG)
![recipe](https://user-images.githubusercontent.com/73854999/201367524-e8f691c5-dfca-4938-bdc5-3c10ef6455de.PNG)
![public](https://user-images.githubusercontent.com/73854999/201367791-25ba1066-e5ff-42ce-856b-da08a190f22e.PNG)
![genera](https://user-images.githubusercontent.com/73854999/201367605-dbfe395d-f0c7-4461-a990-b63b954ec662.PNG)
![image](https://user-images.githubusercontent.com/73854999/201367344-6840e382-b30a-4da1-97d6-4aa2cb66af4d.png)


## Live Link
 [Live-demo](https://tranquil-crag-64773.herokuapp.com/users/sign_in)
## Built With

- Languages:
  _**Ruby**_
  _**Postgresql**_
- Frameworks: _**Ruby On Rails**_
- Technologies used: _**Visual Studio Code**_

### Requirements

In order to work on this project, you need to have the following dependencies installed:

- [Ruby](https://www.ruby-lang.org/en/)
- [Postgresql](https://www.postgresql.org/)
- [Node.js](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/)
- [Rails](https://rubyonrails.org/)

## Getting Started

### Clone this repository

```bash
$ git clone git@github.com:Lizdev-05/Recipe-app.git
$ cd recipe-app
```

### Commands to run

Run

```bash
$ bundle install
```

To get all the gems required for the project

Then, run

```bash
$ npm install
```

To install packages such as style linters

To check linters locally, use

```bash
$ rubocop
$ npx stylelint "**/*.{css,scss}"
```

Once you have the project correctly set up, run

```bash
$ bin/rails db:setup
```

To run all migrations, create the database for testing and for development, and insert some data into the database for you to visualize the changes

Finally, each time you make changes to the project, run

```bash
$ bundle exec rspec /spec
```

In the root folder to check the consistency of the app. Please don't make changes to the tests unless completely necessary, and mention it in your PR description.

Important note: Since this project uses TailwindCSS for the styling, you need to run:

```bash
$ ./bin/dev
```

For you to see the styling being applied in the browser during development

## Authors

👤 **Ojesanmi Elizabeth Oyin**

- GitHub: [@githubhandle](https://github.com/Lizdev-05)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/elizabeth-oyinlade-ojesanmi-0702aa16a)

👤 **Hamma Azarok**

- GitHub: [@hammaazarok](https://github.com/hammaazarok)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- LazyCoders
- Coding Partners
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.
