CREATE DATABASE dns;
USE dns;

CREATE TABLE records (
    id INT AUTO_INCREMENT PRIMARY KEY,
    zone VARCHAR(255),
    host VARCHAR(255),
    type VARCHAR(10),
    data VARCHAR(255),
    ttl INT,
    mx_priority INT,
    refresh INT,
    retry INT,
    expire INT,
    minimum INT,
    serial BIGINT,
    resp_person VARCHAR(64),
    primary_ns VARCHAR(64),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO records (zone, host, type, data, ttl) VALUES
('example.com.', '@', 'A', '192.0.2.1', 86400),
('example.com.', 'www', 'A', '192.0.2.1', 86400),
('example.com.', '@', 'MX', 'mail.example.com.', 86400),
('example.com.', 'mail', 'A', '192.0.2.2', 86400);