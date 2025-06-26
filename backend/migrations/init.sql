CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE NOT NULL,
  role VARCHAR(20),
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE bands (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  owner_id INTEGER REFERENCES users(id)
);

CREATE TABLE band_members (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  band_id INTEGER REFERENCES bands(id),
  role VARCHAR(20)
);

CREATE TABLE rehearsals (
  id SERIAL PRIMARY KEY,
  band_id INTEGER REFERENCES bands(id),
  scheduled_for TIMESTAMP,
  created_by INTEGER REFERENCES users(id),
  notes TEXT
);

CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  member_id INTEGER REFERENCES band_members(id),
  status VARCHAR(10),
  response_at TIMESTAMP
);

CREATE TABLE notifications (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  message TEXT,
  sent_at TIMESTAMP,
  type VARCHAR(20)
);
