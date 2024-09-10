# GoIgnite

GoIgnite is a lightweight Golang web framework inspired by PHP's Laravel 8, designed for building APIs and web applications efficiently. It offers a structured way to develop web applications with a clear separation of concerns, including MVC architecture, templating engines, and built-in support for API creation.

## Features

- MVC architecture (Models, Views, Controllers)
- Blade-like templating system for HTML rendering
- RESTful API support
- Easy routing for both web and API
- Database migrations and ORM integration (supports GORM, XORM, etc.)
- Middleware support
- Centralized configuration management
- Logging and caching
- Unit testing support
- Localization for multilingual applications

## Folder Structure

```text
/GoIgnite
  ├── /app
  │   ├── /controllers         # Handles requests and logic
  │   ├── /models              # Data models and ORM logic
  │   ├── /middlewares         # Middleware functions
  ├── /bootstrap
  │   └── app.go               # Application initialization
  ├── /config
  │   └── config.go            # Configuration files
  ├── /database
  │   ├── /migrations          # Database migrations
  │   └── database.go          # Database connection setup
  ├── /public                  # Public assets (CSS, JS, images)
  ├── /resources
  │   ├── /views               # Templating files (HTML)
  │   └── /lang                # Localization files
  ├── /routes
  │   ├── web.go               # Web routes
  │   └── api.go               # API routes
  ├── /storage
  │   ├── /logs                # Log files
  │   ├── /app                 # Cached views, sessions, etc.
  ├── /tests                   # Unit and integration tests
  ├── /vendor                  # Go module dependencies
  ├── go.mod                   # Go module definition
  └── main.go                  # Application entry point
