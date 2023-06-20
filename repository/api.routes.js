const Router = require('express')
const router = new Router()
const questController = require('./quest.controller')

router.get('/quest', questController.getQuests)

// http://localhost:3000/api/questions?questId={id of quest} returns just questions of quest
router.get('/questions', questController.getQuestionsForQuest)

// http://localhost:3000/api/questionWithAnswers?questId={id of quest}?questionNum={number of question in quest 1..4}
// returns question with answers
router.get('/questionWithAnswers', questController.getQuestionWithAnswers)

router.get('/answer/:questionId', questController.getAnswerForQuestion)

router.get('/final/:questId', questController.getFinalsForQuest)

module.exports = router