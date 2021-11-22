# Django and React with Reverse-Proxy

Docker Container for Django and React apps with Nginx reverse-proxy

## Default routes

1. API (Backend entrypoint)
   - `ALL /api`
2. Django admin page
   - `ALL /admin`
3. Django static files
   - `GET /django_static/`
4. React navigation
   - `GET /*`
