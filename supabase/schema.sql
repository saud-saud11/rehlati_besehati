-- Rehlati Besehati: Core PostgreSQL Schema for Supabase

-- ==========================================
-- 1. USERS & TRAVELER PROFILES
-- ==========================================
CREATE TABLE users (
    id UUID PRIMARY KEY REFERENCES auth.users(id),
    email TEXT UNIQUE NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE traveler_profiles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    sex TEXT CHECK (sex IN ('male', 'female')),
    is_pregnant BOOLEAN DEFAULT FALSE,
    is_breastfeeding BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ==========================================
-- 2. TRIP ARCHITECTURE (Digital Twin Foundation)
-- ==========================================
CREATE TABLE trips (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    title TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status TEXT DEFAULT 'planning' CHECK (status IN ('planning', 'active', 'completed', 'archived')),
    readiness_score INTEGER DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE trip_destinations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    trip_id UUID REFERENCES trips(id) ON DELETE CASCADE,
    country_code TEXT NOT NULL,
    region_id UUID, -- For subnational logic
    city_name TEXT,
    sequence_order INTEGER NOT NULL,
    arrival_date DATE NOT NULL,
    departure_date DATE NOT NULL
);

CREATE TABLE trip_travelers (
    trip_id UUID REFERENCES trips(id) ON DELETE CASCADE,
    traveler_id UUID REFERENCES traveler_profiles(id) ON DELETE CASCADE,
    PRIMARY KEY (trip_id, traveler_id)
);

CREATE TABLE trip_activities (
    trip_id UUID REFERENCES trips(id) ON DELETE CASCADE,
    activity_code TEXT NOT NULL, -- e.g., 'hiking', 'diving', 'rural'
    PRIMARY KEY (trip_id, activity_code)
);

-- ==========================================
-- 3. MEDICAL KNOWLEDGE & RULES ENGINE
-- ==========================================
CREATE TABLE sources (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL, -- e.g., 'CDC Yellow Book'
    version TEXT NOT NULL, -- e.g., '2026'
    is_active BOOLEAN DEFAULT TRUE,
    published_at TIMESTAMPTZ
);

CREATE TABLE clinical_rules (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_id UUID REFERENCES sources(id),
    category TEXT NOT NULL, -- e.g., 'vaccine', 'malaria', 'food_water'
    title_ar TEXT NOT NULL,
    description_ar TEXT NOT NULL,
    status TEXT DEFAULT 'draft' CHECK (status IN ('draft', 'review', 'published')),
    version INTEGER DEFAULT 1,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Note: The actual execution logic for rules (conditions) can be implemented 
-- in JSONB or via application logic in Edge Functions to evaluate age, duration, region, etc.
CREATE TABLE rule_conditions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    rule_id UUID REFERENCES clinical_rules(id) ON DELETE CASCADE,
    condition_type TEXT NOT NULL, -- e.g., 'country', 'age_min', 'activity'
    condition_value JSONB NOT NULL
);

-- ==========================================
-- 4. RECOMMENDATION RESULTS (What Changed Engine)
-- ==========================================
CREATE TABLE trip_recommendations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    trip_id UUID REFERENCES trips(id) ON DELETE CASCADE,
    traveler_id UUID REFERENCES traveler_profiles(id) ON DELETE CASCADE,
    rule_id UUID REFERENCES clinical_rules(id),
    status TEXT NOT NULL, -- e.g., 'ready', 'recommended', 'needs_attention'
    reason_ar TEXT NOT NULL,
    generated_at TIMESTAMPTZ DEFAULT NOW(),
    is_active BOOLEAN DEFAULT TRUE -- Turned false if trip changes make it irrelevant
);
