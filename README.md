## Life Manager

This is an application I am creating for my own purposes.  It will scrape my email and calendar for things I need to manage in my life, such as bank transactions, calendar events, job inquiries, and whatever else I decide.  It is using plain Ruby, no Rails.  I am using `Nokogiri` gem to do some scraping.  I am also using `PostgreSQL`, and since there is no Object Relational Mapper in this projected, the database and CRUD operations will be performed with raw SQL.  I used `Postico 2` to create the database and initialized the connection using the `pg` gem, and a Plain Old Ruby Object.  The database is password protected and I'm using the gem `dotenv` to hide sensitive information.

### Initial Schema

![Screenshot 2024-01-11 at 11 08 03 AM](https://github.com/garussell/life_manager/assets/125214565/07872610-de46-4b87-a6d7-066ec9d230ba)
