DROP TABLE IF EXISTS users CASCADE;
-- DROP TABLE IF EXISTS posts CASCADE;
-- DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE users (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    profile_photo_url TEXT NOT NULL
);

-- CREATE TABLE posts (
--     id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     user_id BIGINT NOT NULL REFERENCES users(id),
--     photo_url TEXT NOT NULL,
--     caption TEXT NOT NULL,
--     tags TEXT[]
-- );

-- CREATE TABLE comments (
--     id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     comment_by TEXT NOT NULL REFERENCES users(id),
--     post_id BIGINT NOT NULL REFERENCES posts(id),
--     comment TEXT NOT NULL
-- );
