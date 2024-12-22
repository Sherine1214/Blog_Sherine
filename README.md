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

##Installation

#Prerequisites
- Ruby 3.0.3
- Rails 
- PostgreSQL installed and running

#Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repository/blog-api.git
   cd blog-application
2.Install dependencies:
  bundle install
3.Set up the database:
  rails db:create
  rails db:migrate
4.Seed the database (optional):
  rails db:seed
5.Start the Rails server:
  rails server

#Usage
1.API Endpoints
2.Authentication
3.POST /signup: Register a new user.
4.POST /login: Log in and receive a JWT token.
5.Blog Posts
6.POST /posts: Create a new post (requires authentication).
7.GET /posts: Retrieve all posts (supports pagination).
8.GET /posts/:id: Retrieve a specific post by ID.
9.PATCH /posts/:id: Update a post (requires authentication; only the owner can update).
10.DELETE /posts/:id: Delete a post (requires authentication; only the owner can delete).
##This also includes error handling
