PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE users (
    id TEXT PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    pass_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN ('user','admin')),
    created_at TEXT NOT NULL
  );
INSERT INTO "users" VALUES('u09005cadfa2a912b','u1738884609@test.com','pbkdf2$120000$q79qsLS8Q2wkbvlOOlx+iQ$xFfgW78IYaBZ3WdH9YVfil9q4N0zfkDR0YgmYB/704I','admin','2026-02-09 15:53:42');
INSERT INTO "users" VALUES('u7ab6ee143943751e','u1633168727@test.com','pbkdf2$100000$m3Hvh3TdIt4Tp7e1mU+g4A$IQZ3y3Vzx8al2VQRcfmmFOg7TTKmLaL/EmhJHqT4Syw','user','2026-02-09 15:58:10');
INSERT INTO "users" VALUES('ub8923d49c8759160','u442441685@test.com','pbkdf2$100000$4F1zV9LH966Nxl3Dx3xbEQ$A+ZJ6ieY43h0/FYUkdggnayZ7DKeEiHkn8VIXqmqFJ4','user','2026-02-09 16:02:16');
INSERT INTO "users" VALUES('u42b8c776e295ebfd','u904914693@test.com','pbkdf2$100000$RZ+1RZEB5cm6nwJM8ftifA$Z8t333HcpqLgGsgVCgQKU2KMahA+aWTpu6AberbXZjs','user','2026-02-09 16:08:23');
INSERT INTO "users" VALUES('u7fc905053faaa915','u1304741673@test.com','pbkdf2$100000$4ZsjdaZAXmkDG2r+yNOUgw$xvbNohTVsv0HELcZ0XSyBur6cq2GH1LGKLtZFAb/1+Q','user','2026-02-09 16:15:53');
INSERT INTO "users" VALUES('u4e4b97cee4464582','sintagmatarches@gmail.com','pbkdf2$100000$5aDdZnf8RfwH9JAjaqR0Eg$MKehJrevKTfLAw22Ak8gOijTcyCpipkn6bEiwEDSMVU','user','2026-02-09 16:22:16');
INSERT INTO "users" VALUES('ub6ebc72f27043c03','nikolaevskyivalera@gmail.com','pbkdf2$100000$At2UDNUfqAwq37sj0J5hsQ$0uOUqlMcJ+mI17/5BppIeGa0FuJlCHusaP723iLMa7I','user','2026-02-09 16:24:29');
