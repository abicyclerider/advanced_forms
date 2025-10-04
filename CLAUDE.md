# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Purpose

This project is designed to create a hands-on tutorial for learning advanced forms concepts from The Odin Project lesson: https://www.theodinproject.com/lessons/ruby-on-rails-advanced-forms

The goal is to build practical examples demonstrating:
- Nested forms with `accepts_nested_attributes_for`
- Dynamic form fields (adding/removing nested records)
- Many-to-many relationships through forms
- Complex validations across nested models
- Form helpers for associations

## Technology Stack

- **Rails**: 8.0.3
- **Ruby**: 3.3.5
- **Database**: PostgreSQL
- **Frontend**: Hotwire (Turbo + Stimulus), Importmap
- **Asset Pipeline**: Propshaft
- **Background Jobs**: Solid Queue (database-backed)
- **Caching**: Solid Cache (database-backed)
- **Cable**: Solid Cable (database-backed)
- **Testing**: Minitest with Capybara and Selenium for system tests

## Common Commands

### Development
```bash
rails server           # Start development server (localhost:3000)
bin/dev               # Start dev server with asset watching
rails console         # Open Rails console
```

### Database
```bash
rails db:create       # Create databases
rails db:migrate      # Run pending migrations
rails db:rollback     # Rollback last migration
rails db:reset        # Drop, create, and migrate database
rails db:seed         # Load seed data
```

### Testing
```bash
rails test                           # Run all tests
rails test test/models               # Run model tests
rails test test/controllers          # Run controller tests
rails test test/system               # Run system tests
rails test <file_path>               # Run specific test file
rails test <file_path>:<line>        # Run specific test by line number
```

### Code Quality
```bash
bin/rubocop                          # Run Rubocop linter
bin/rubocop -a                       # Auto-correct Rubocop offenses
bin/brakeman                         # Run security scanner
```

### Deployment
```bash
bin/kamal deploy      # Deploy with Kamal
```

## Database Architecture

Rails 8 uses multiple databases for different concerns:
- **Primary**: Main application data (`advanced_forms_development`)
- **Cache**: Solid Cache data (`advanced_forms_development_cache`)
- **Queue**: Solid Queue jobs (`advanced_forms_development_queue`)
- **Cable**: Solid Cable WebSocket connections (`advanced_forms_development_cable`)

Each has separate migration paths under `db/`.
