CREATE TABLE agents (
    agent_id    INTEGER PRIMARY KEY,
    agent_name  TEXT,
    team        TEXT,
    hire_date   DATE
);

CREATE TABLE customers (
    customer_id  INTEGER PRIMARY KEY,
    full_name    TEXT,
    city         TEXT,
    signup_date  DATE
);

CREATE TABLE orders (
    order_id     INTEGER PRIMARY KEY,
    customer_id  INTEGER REFERENCES customers(customer_id),
    order_ts     TIMESTAMP,
    amount       NUMERIC(10,2),
    status       TEXT
);

CREATE TABLE refunds (
    refund_id    INTEGER PRIMARY KEY,
    order_id     INTEGER REFERENCES orders(order_id),
    refund_ts    TIMESTAMP,
    amount       NUMERIC(10,2),
    agent_id     INTEGER REFERENCES agents(agent_id),
    reason       TEXT
);

