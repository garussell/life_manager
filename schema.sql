-- Run this script to create schema:  `psql -h localhost -U your_username -d your_database_name -a -f create_schema.sql`

CREATE TABLE user (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Scrape from Gmail and sort by type (e.g., bank transactions, bills, job postings, etc.)
CREATE TABLE email (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    sender_email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    received_at TIMESTAMP NOT NULL,
    type VARCHAR(255) NOT NULL,
    INDEX idx_email_user_id (user_id)
);

-- From Google Calendar
CREATE TABLE calendar_event (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    date TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    INDEX idx_calendar_event_user_id (user_id)
);

-- Can include goals set by user, such as "get a job" or "vacation" or "get in shape"
CREATE TABLE goal (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    end_date TIMESTAMP NOT NULL,
    INDEX idx_goal_user_id (user_id)
);