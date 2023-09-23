# Django HTMX Base Project

Example project which integrates the use of HTMX in a Django project.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Things you will need to have installed:
```
Python 3.10.12
```

### Installing

Navigate to the root of the project and execute the following command to create a virtual environment:
```
python -m venv venv
```

Activate the virtual environment:
```
source venv/bin/activate
```

Install the related dependencies:
```
pip install -r requirements.txt
```

## Running the tests

The pytest testing framework was used. The unit tests can be executed by running the following command:
```
pytest -vvv
```

## Deployment

Navigate into the base project directory from root:
```
cd baseproject
```

Start the development server:
```
python manage.py runserver
```

You should be able to access the web application at:
```
http://127.0.0.1:8000/
```

## Alternative Deployment with Docker (tested on Windows 10 + Docker Desktop)

From the root directory of the project, execute the following command:
```
docker-compose up
```

You should be able to access the web application at:
```
http://127.0.0.1:8000/
```

## Built With

* [Django](https://www.djangoproject.com/)
* [HTMX](https://htmx.org/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Django](https://www.djangoproject.com/)
* [HTMX](https://htmx.org/)
