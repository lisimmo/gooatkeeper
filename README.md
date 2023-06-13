# Goat Keeper API

This API application is built with Ruby on Rails and allows users to manage animal records on a farm. It provides endpoints to create, read, update, and delete goat, breeds and treatments records, as well as perform various queries and filtering.

## Getting Started

To get started with the Goat Keeper API, follow the instructions below.

### Prerequisites

Make sure you have the following installed on your system:

- Ruby (version >= 2.6.0)
- Ruby on Rails (version >= 6.0.0)
- MySQL (version >= 5.7)

### Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/lisimmo/gooatkeeper.git
   ```

2. Navigate to the project directory:

   ```bash
   cd gooatkeeper
   ```

3. Install the required dependencies:

   ```bash
   bundle install
   ```

4. Create the database and run migrations:

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:

   ```bash
   rails server
   ```

6. The API is now available at `http://localhost:3000`. You can test it using an API client like cURL or Postman.

## API Endpoints

The following endpoints are available in the Goat Keeper API:

- `GET /goats`: Retrieve a list of all goats.
- `GET /goats/:id`: Retrieve details of a specific goat.
- `POST /goats`: Create a new goat record.
- `PUT /goats/:id`: Update an existing goat record.
- `DELETE /animals/:id`: Delete an animal record.

- `GET /breeds`: Retrieve a list of all available breeds of goats.
- `POST /breeds`: Create a new goat breed.

- `GET /treatments`: Retrieve a list of all available treatment for goats.
- `POST /treatments`: Create a new treatment type.

### Query Parameters

The `GET /goats` endpoint supports the following query parameters:

- `breed=true`: Includes the breed of the goat in the response.
- `treatments=true`: Includes the treatment history of the goat in the response.

You can provide one or more query parameters to narrow down the search results.

## Authentication and Authorization

The User Apis uses token-based authentication for secure access. To perform authenticated requests, include the `Authorization` header with a valid token.
For now, it is just to showcase jwt authentication

## Error Handling

The API handles errors using appropriate HTTP status codes and error messages in JSON format. If an error occurs, the response will contain an `error` field with a descriptive message.

## Contributing

Contributions to the Goat Keeper API are welcome! If you find a bug or have a suggestion for improvement, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). You are free to use, modify, and distribute this application as per the terms of the license.

## Acknowledgments

- The Ruby on Rails community for their amazing framework.
- The developers of other related open-source projects used in this application.

## Contact

If you have any questions or inquiries, please contact [liljoeengr@gmail.com](mailto:liljoeengr@gmail.com).

Happy farming! 🐮🐷🐔
