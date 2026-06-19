-- ===============================
-- OTP Table Creation Script
-- Database: PostgreSQL
-- ===============================

-- Create OTP table
CREATE TABLE IF NOT EXISTS otp (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    email VARCHAR(255) NOT NULL,
    otp_code VARCHAR(6) NOT NULL,
    otp_type VARCHAR(20) DEFAULT 'EMAIL',
    expires_at TIMESTAMP NOT NULL,
    verified BOOLEAN DEFAULT FALSE,
    attempts INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_email ON otp(email);
CREATE INDEX IF NOT EXISTS idx_otp_code ON otp(otp_code);
CREATE INDEX IF NOT EXISTS idx_expires_at ON otp(expires_at);
CREATE INDEX IF NOT EXISTS idx_user_email_verified ON otp(user_id, email, verified);
CREATE INDEX IF NOT EXISTS idx_created_at ON otp(created_at);

-- Create trigger function for auto-updating updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger
DROP TRIGGER IF EXISTS update_otp_updated_at ON otp;
CREATE TRIGGER update_otp_updated_at 
BEFORE UPDATE ON otp
FOR EACH ROW 
EXECUTE FUNCTION update_updated_at_column();

-- Verify table creation
SELECT 'OTP table created successfully!' AS status;
SELECT table_name, column_name, data_type, is_nullable
FROM information_schema.columns 
WHERE table_name = 'otp'
ORDER BY ordinal_position;
