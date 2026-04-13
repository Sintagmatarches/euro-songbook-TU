# Euro Songbook

Euro Songbook is a web application for browsing, searching, and managing a digital collection of European songs.

The project is built as a lightweight Cloudflare Pages application with Pages Functions and a D1 database. It focuses on searchable song texts, structured metadata, song pages with versions and external links, administration tools, and prompt based AI helpers that open prepared prompts in ChatGPT without direct API integration.

## Main Features

- Searchable song catalog with filters
- Song pages with lyrics, metadata, versions, and external links
- Prompt buttons for translation, explanation, and contextual analysis through ChatGPT
- User authentication based on JWT
- Favorites
- Administration tools for creating, editing, deleting, and importing songs
- SQLite FTS5 based search

## Tech Stack

- Frontend: vanilla HTML, CSS, and JavaScript
- Hosting: Cloudflare Pages
- Backend: Cloudflare Pages Functions
- Database: Cloudflare D1
- Search: SQLite with FTS5
- Authentication: JWT

## Project Structure

The repository includes frontend files, backend functions, database files, automated tests, and utility scripts for validation, import, and deployment.

## What the Application Does

The application provides a searchable catalog of songs with support for metadata based browsing. Each song page can include the full text, structured metadata, multiple versions, and external references.

The project also includes administration features for maintaining the catalog and importing data in bulk. AI related functionality is intentionally implemented as prompt generation only. The interface prepares a prompt and opens ChatGPT in a new tab. The application does not send song data to a language model through its own backend.

## Local Development

### Requirements

- Node.js
- npm
- Wrangler
- A Cloudflare account with Pages and D1 enabled

### Installation

Install dependencies with `npm install`.

### Running Locally

Start local development using Wrangler Pages development mode.

## Cloudflare Setup

This project is designed for Cloudflare Pages with Pages Functions.

Important: direct upload from the Cloudflare dashboard is not suitable for a project that uses Pages Functions. Deployment should be done through Git integration or Wrangler.

Basic setup steps:

1. Create a Cloudflare Pages project
2. Connect the repository or deploy through Wrangler
3. Use no framework preset, leave the build command empty, and use the repository root as the output directory
4. Create a Cloudflare D1 database
5. Add the DB binding
6. Configure environment variables and secrets

## Environment Notes

The project uses D1 with the `DB` binding.

Recommended settings:

- `JWT_SECRET`: a long random secret for authentication
- `SETUP_TOKEN`: a secret for setup when needed
- `ENABLE_SETUP` set to zero after initial setup

Do not store production secrets in version controlled files. Use Cloudflare secrets in production.

## First Run

1. Open the site and register a user.
2. Initialize the database and insert initial data if required.
3. According to the current project logic, the first registered user can receive administrator access during initial setup.

## Importing Songs

Bulk import is supported through the administration functionality.

The project is intended to support structured song imports and catalog maintenance through admin tools.

## Testing

The repository includes automated tests for search and related functionality, as well as broader validation and deployment checks.

## Security Notes

- Keep production secrets outside the repository
- Use Cloudflare secrets for deployment
- Disable setup functionality after initialization
- Review role management carefully before production use

## Current Status

This repository contains the working implementation of the Euro Songbook application and related development materials. The codebase is focused on practical functionality: content browsing, structured search, moderation, authentication, and deployment on Cloudflare infrastructure.

## Author

Maintained by the repository owner.
