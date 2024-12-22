Here's the revised version of the README, with some formatting and structure improvements:

---

# Simple Blog API

This project is a RESTful API for a blog application. It allows users to register, authenticate, and manage blog posts. The API supports CRUD operations for posts, JWT-based authentication, and additional features like pagination, search, and post liking.

---

## Features

### User Management
- **Sign Up:** Register users with a name, email, and password.
- **Authentication:** Log in using JWT tokens for secure access to protected endpoints.

### Blog Post Management
- **Create:** Authenticated users can create posts with a title and content.
- **Read:** All users (authenticated or not) can view posts.
  - Pagination is supported, displaying 10 posts per page.
- **Update:** Only the creator of a post can edit it.
- **Delete:** Only the creator of a post can remove it.

### Additional Features
- **Search:** Search posts by title using a query parameter.
- **Like Posts:** Users can like posts (one like per user per post).
- **Error Handling:** Comprehensive error messages and HTTP status codes for various scenarios.

---

## Requirements

### Dependencies
- **Ruby:** 3.0.3
- **Rails:** 7.x.x
- **Database:** PostgreSQL (or SQLite for development)
- **Gems Used:**
  - `devise` or custom JWT for authentication
  - `pundit` for authorization
  - `kaminari` for pagination

---

## Installation

### Prerequisites
- Ruby 3.0.3
- Rails
- PostgreSQL (or SQLite for development) installed and running

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/your-repository/blog-api.git
   cd blog-api
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Seed the database (optional):
   ```bash
   rails db:seed
   ```

5. Start the Rails server:
   ```bash
   rails server
   ```

---

## Usage

### API Endpoints

#### Authentication
- **POST /signup:** Register a new user.
- **POST /login:** Log in and receive a JWT token.

#### Blog Posts
- **POST /posts:** Create a new post (requires authentication).
- **GET /posts:** Retrieve all posts (supports pagination).
- **GET /posts/:id:** Retrieve a specific post by ID.
- **PATCH /posts/:id:** Update a post (requires authentication; only the owner can update).
- **DELETE /posts/:id:** Delete a post (requires authentication; only the owner can delete).

### Error Handling
- Comprehensive error handling with appropriate HTTP status codes:
  - `404` for resource not found.
  - `401` for unauthorized access (e.g., invalid/missing token).
  - `422` for validation errors (e.g., missing title or content).

---

This version is structured more clearly, and the code blocks are properly indented. The headings and steps are also made easier to follow.
