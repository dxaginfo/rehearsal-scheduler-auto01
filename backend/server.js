const express = require('express')
const app = express()

app.use(express.json())

app.get('/health', (req, res) => res.json({status:'ok'}))
// Other rehearsal scheduling APIs here

const PORT = process.env.PORT || 4000
app.listen(PORT,()=>console.log('API running on '+PORT))
