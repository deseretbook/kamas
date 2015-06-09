# Configure scrypt password hashing engine to generate more secure keys
SCrypt::Engine::DEFAULTS[:key_len] = 46
SCrypt::Engine::DEFAULTS[:salt_size] = 10
SCrypt::Engine::DEFAULTS[:max_time] = 0.5
SCrypt::Engine::DEFAULTS[:max_mem] = 8.megabytes

Passwords.calibrate
