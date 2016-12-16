/* citus--6.1-3--6.1-4.sql */

SET search_path = 'pg_catalog';

CREATE FUNCTION get_distribution_value_shardid(table_name regclass, distribution_value anyelement)
	RETURNS bigint
	LANGUAGE C STRICT
	AS 'MODULE_PATHNAME', $$get_distribution_value_shardid$$;
COMMENT ON FUNCTION get_distribution_value_shardid(table_name regclass, distribution_value anyelement)
    IS 'return shard id which belongs to given table and contains given value';
    
RESET search_path;
