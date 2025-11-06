-- === ПОЛЬЗОВАТЕЛЬ И БАЗА ===
CREATE USER datapulse WITH PASSWORD 'datapulse';
CREATE DATABASE datapulse OWNER datapulse;

-- === ПОДКЛЮЧАЕМСЯ К БАЗЕ ===
\c datapulse;

-- === СХЕМА ===
CREATE SCHEMA datapulse;

-- === ПРИВИЛЕГИИ ===
GRANT ALL PRIVILEGES ON DATABASE datapulse TO datapulse;
GRANT CREATE, USAGE ON SCHEMA datapulse TO datapulse;

-- === SEARCH PATH ===
SET search_path TO datapulse;

-- === РАСШИРЕНИЯ (по необходимости) ===
-- Если не нужна геометрия — удалите строку с postgis
-- CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- (опционально вернуться в postgres)
\c postgres;
