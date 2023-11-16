https://blog.logrocket.com/build-rest-api-elixir-phoenix/

# UsersApi

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

Running Postgress using Docker

docker run --name phoenix-postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -p 5500:5432 -d postgres

Ecto Documentation
https://hexdocs.pm/ecto_sql/Ecto.Adapters.Postgres.html#module-options

Create users:

    curl -X POST http://localhost:4000/api/users -H "Content-Type: application/json" -d '{"user":{"name":"Jorge","email":"barizonte@gmail.com","address":"1791 Folkway Drive","role":"Admin"}}'

or

Using Httpie

    http --print=b --output temp.html POST http://localhost:4000/api/users < load_data/data.json
