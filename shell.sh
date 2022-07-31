rails generate model team slug:string name:string flag:string group:string group_number:string position:integer played:integer won:integer drawn:integer lost:integer goals_for:integer goals_against:integer goals_difference:integer points:integer

##_create_teams.rb
# default: 0 on [:played, :won, :drawn, :lost, :goals_for, :goals_aggainst, :goals_difference, :points]

rails generate scaffold match date:datetime stage:string group:string result:string status:string home_score:integer away_score:integer

##_create_matches.rb
# default: "not_started" on :status
# default: 0 on [:home_score, :away_score]
# t.references :home_team, null: false
# t.references :away_team, null: false
# add_foreign_key :matches, :teams, column: :home_team_id
# add_foreign_key :matches, :teams, column: :away_team_id

# Device install
bundle install devise
rails generate devise:install
rails generate devise User
rails g devise:views

##_devise_create_users.rb
# ## Not-devise fields
# t.string :name

rails generate scaffold party name:string sharing_code:string

rails generate scaffold pool party_admin:boolean references:party references:user

rails generate model bet pool:references match:references guess:string hit:boolean enabled:boolean

##_ceate_bets.rb
# default: true on :enabled
