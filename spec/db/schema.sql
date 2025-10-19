-- 数据库初始表（简化骨架）
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  name TEXT,
  role TEXT NOT NULL DEFAULT 'member',
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE campaigns (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  market TEXT NOT NULL,
  platform TEXT NOT NULL,
  holiday TEXT,
  strength TEXT,
  owner_id INTEGER REFERENCES users(id),
  start_date DATE,
  end_date DATE,
  status TEXT DEFAULT 'planning',
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  campaign_id INTEGER REFERENCES campaigns(id),
  title TEXT NOT NULL,
  assignee_id INTEGER REFERENCES users(id),
  phase TEXT,
  due_date DATE,
  status TEXT DEFAULT 'todo',
  progress INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE assets (
  id SERIAL PRIMARY KEY,
  campaign_id INTEGER REFERENCES campaigns(id),
  kind TEXT, -- banner/email/social/video
  filename TEXT,
  url TEXT,
  uploader_id INTEGER REFERENCES users(id),
  created_at TIMESTAMPTZ DEFAULT now()
);
