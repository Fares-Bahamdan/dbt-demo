with teams as (
    select * from {{ ref("example_teams__teams") }}
),

team_locations as (
    select * from {{ ref("team_locations") }}
),

Final as (
    select teams.Teams,
    team_locations.city,
    team_locations.state,
    teams.teams = '{{ var("current_champion") }}' as is_champion

    from teams

    left join team_locations
    on team_locations.name = teams.teams
)

select * from Final