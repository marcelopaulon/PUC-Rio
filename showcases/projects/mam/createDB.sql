create database mam;

create table if not exists scalars (
    node_amount integer not null,
    area_sq_m integer not null,
    lpn_fn_ratio smallint not null,
    relay_type varchar(255) not null,
    delta_ms integer not null,
    speed_ms smallint not null,
    series smallint not null,
    rep smallint not null,
    module text,
    name text not null,
    type text,
    value text,
    full_row text,
    created_at date not null,
    primary key(node_amount, area_sq_m, lpn_fn_ratio, relay_type, delta_ms, speed_ms, series, rep, module, name)
);

