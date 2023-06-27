
const db = require('../db')

class QuestController {
    async getQuests(req, res) {
        const questId = req.query.questId
        let query = 'select * from quest'
        if (questId != null) query += ' where id = ' + questId

        const quests = await db.query(query)
        res.json(quests.rows)
    }


    async getQuestionsForQuest(req, res) {
        const questId = req.query.questId
        const questions = await db.query('select * from question where id_quest = $1', [questId]);
        res.json(questions.rows)
    }

    async getQuestionWithAnswers(req, res) {
        const questId = req.query.questId
        const questionNum = req.query.questionNum
        const questionId = (questId-1)*4 + parseInt(questionNum)
        const question_answers = await
            db.query('SELECT q.id, q.question, jsonb_agg(a.*) AS answers FROM question q LEFT JOIN answer a ON q.id = a.id_question WHERE q.id = $1 GROUP BY q.id, q.question;', [questionId]);
        res.json(question_answers.rows)
    }

    async getAnswerForQuestion(req, res) {
        const id = req.params.questionId
        const questions = await db.query('select * from answer where id_question = $1', [id])
        res.json(questions.rows)
    }

    async getFinalsForQuest(req, res) {
        const id = req.params.questId
        const questions = await db.query('select * from final where id_quest = $1', [id])
        res.json(questions.rows)
    }

}


module.exports = new QuestController()