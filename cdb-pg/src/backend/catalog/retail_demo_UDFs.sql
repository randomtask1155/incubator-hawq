-- prep_udfs.sql

-- This script creates the demonstration UDFs

DROP SCHEMA IF EXISTS retail_demo CASCADE;
CREATE SCHEMA retail_demo;

SET search_path=retail_demo;

DROP FUNCTION IF EXISTS box_muller( FLOAT8, FLOAT8 );
CREATE FUNCTION box_muller( FLOAT8, FLOAT8 ) RETURNS FLOAT8 AS '$libdir/libbm.so', 'box_muller' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller( BIGINT, BIGINT, SMALLINT, BOOLEAN );
CREATE FUNCTION box_muller( BIGINT, BIGINT, SMALLINT, BOOLEAN ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_mm' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller( BIGINT, BIGINT, SMALLINT );
CREATE FUNCTION box_muller( BIGINT, BIGINT, SMALLINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_mm' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller( BIGINT, BIGINT );
CREATE FUNCTION box_muller( BIGINT, BIGINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_mm' LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT );
CREATE FUNCTION box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_double' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT, SMALLINT );
CREATE FUNCTION box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT, SMALLINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_double' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT, SMALLINT, BOOLEAN );
CREATE FUNCTION box_muller_double( BIGINT, BIGINT, BIGINT, BIGINT, SMALLINT, BOOLEAN) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_double' LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS box_muller_half( BIGINT, BIGINT );
CREATE FUNCTION box_muller_half( BIGINT, BIGINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_half' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller_half( BIGINT, BIGINT, SMALLINT );
CREATE FUNCTION box_muller_half( BIGINT, BIGINT, SMALLINT ) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_half' LANGUAGE C STRICT;
DROP FUNCTION IF EXISTS box_muller_half( BIGINT, BIGINT, SMALLINT, BOOLEAN );
CREATE FUNCTION box_muller_half( BIGINT, BIGINT, SMALLINT, BOOLEAN) RETURNS BIGINT AS '$libdir/libbm.so', 'box_muller_half' LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS power_rand( BIGINT, BIGINT, INT );
CREATE FUNCTION power_rand( BIGINT, BIGINT, INT) RETURNS BIGINT AS '$libdir/libbm.so', 'power_rand' LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS crand( BIGINT, BIGINT );
CREATE FUNCTION crand( BIGINT, BIGINT) RETURNS BIGINT AS '$libdir/libbm.so', 'crand' LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS rand_flag( FLOAT8 );
CREATE FUNCTION rand_flag( FLOAT8) RETURNS BOOLEAN AS '$libdir/libbm.so', 'rand_flag' LANGUAGE C STRICT;
