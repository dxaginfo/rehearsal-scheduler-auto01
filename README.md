# Rehearsal Scheduler
Automatically schedules band rehearsals, sends reminders, tracks attendance, and suggests optimal rehearsal times.

## Features
- Schedule rehearsals and send reminders
- Attendance tracking
- Optimal time suggestions
- Role-based access
- Integration with Google Calendar and notifications (email/SMS)
- Mobile responsive

## Setup Instructions
1. Clone the repository
2. Install dependencies (`npm install` for root and front-end)
3. Setup PostgreSQL database
4. Add environment variables for database, Twilio, email, API keys
5. Run database migration scripts
6. Start development: `npm run dev` (for back-end and front-end if monorepo)
7. To build for production: `npm run build` / `npm start`
8. Deployment via Docker, Vercel or Heroku (see docker-compose.yml and Procfile)

## Tech Stack
- Frontend: React
- Backend: Node.js/Express
- Database: PostgreSQL
- CI/CD: GitHub Actions
- Deployment: Docker, Vercel, Heroku
