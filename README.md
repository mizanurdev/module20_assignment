# Laravel 10 Product Management System

## Author
- **Name:** Md. Mizanur Rahman
- **Email:** mizancse2018@gmail.com


## Installation

To set up the project locally, follow these steps:

#### 1. Clone the repository:

```bash
git clone https://github.com/mizanurdev/module20_assignment.git
```
#### 2. Navigate to the project directory:
```
cd module20_assignment
```

#### 3. Install dependencies:
```
composer install
npm install
npm run dev
```

#### 4. Set up environment configuration:
- Copy the .env.example file and rename it to .env:
```
cp .env.example .env
```
- Update the .env file with your database and other configuration details:
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=module20_assignment
DB_USERNAME=root
DB_PASSWORD=
```
#### 5. Generate the application key:
```
php artisan key:generate
```
#### 6. Set up the database
- Run the migrations to create the necessary tables:
```
php artisan migrate
```
- (Optional) To link storage:
```
php artisan storage:link
```

#### 7. Run the application:
```
php artisan serve
```
Now, the application should be running at http://127.0.0.1:8000.


#### URLs
- See Products: http://127.0.0.1:8000/products

#### Contributing

If you'd like to contribute to this project:
- Fork the repository.
- Create a new branch for your feature or bug fix.
- Make your changes and ensure everything works as expected.
- Submit a pull request for review.

#### License
This project is licensed under the MIT License. You are free to use, modify, and distribute the code under the terms of this license.