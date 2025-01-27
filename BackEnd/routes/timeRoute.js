const express = require('express')
const router =  express.Router()
const timeController = require('../controllers/timeController')

// router.get('/home', homeController.getHome)
router.post('/time', timeController.postTime)


module.exports = router