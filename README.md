# Calorie Track

The Calorie Tracker is a user-friendly application designed to help users monitor their daily caloric 
intake and manage their diet effectively. 
Built using Django, the project leverages classic web technologies like HTML, CSS, and JavaScript for a responsive and interactive frontend.
## 🚀 Features

- **User Authentication:** Secure user registration, login, and logout functionality.
- **Calorie Tracking:** Add, view, and delete consumed foods with detailed nutritional information.
- **Daily Summary:** Track your daily caloric intake and monitor macronutrients (carbs, proteins, fats).
- **Responsive Design:**  A clean and intuitive interface built using HTML, CSS, and JavaScript.

## 🛠️ Tech Stack

- **Backend:** Python, Django
- **Database:** PostgreSQL
- **Containerization:** Docker
- **Frontend:**HTML, CSS, JavaScript
- **Templating Engine:** Django Templates

## 🌐 URL Endpoints
#### Authentication & User Management
- **User Registration:** `/register/`
- **User Login:** `/login/`
- **User Logout:** `/logout/`
#### Calorie Tracking
- **Home Page:** `/`
- **Delete Consumed Food:** `/<int:id>/`
## 📦 Installation 
Clone the repository:
```bash
git clone https://github.com/YaroslavMarkivskyi/calorie-tracker.git
```
Navigate to the project directory:
```bash
cd calorie-tracker
```
Set up and run the application using Docker Compose:
```bash
docker-compose up --build
```
Access the application at:
- Home Page - [http://localhost:8000/](http://localhost:8000/)
- Admin Panel - [http://localhost:8000/admin/](http://localhost:8000/admin/)
##### To create a superuser after setting up the application with Docker, follow these steps:
Run the following command to enter the Docker container for your Django application:
```bash
docker-compose run --rm app sh
```
Inside the container, create a superuser using Django's createsuperuser command:
```bash
python manage.py createsuperuser
```
Follow the prompts to enter your desired superuser credentials (username, email, and password).

Once complete, exit the container by typing:
```bash
exit
```
