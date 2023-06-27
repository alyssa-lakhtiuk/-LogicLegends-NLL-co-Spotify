const assert = require('assert');
const sinon = require('sinon');
const QuestController = require('../repository/quest.controller');
const db = require('../db')

describe('QuestController', () => {
    it('should fetch ALL quests and send the JSON response', async () => {
        // Mock the request object
        const req = {
            query: {
                questId: null // Set the questId value as needed
            }
        };

        const res = {
            json: sinon.spy()
        };

        // Call the getQuests method
        await QuestController.getQuests(req, res, db);

        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0], [{"id":1,"name":"What instrument are you at the Summer Theater in Odesa?"},{"id":2,"name":"What kind of performer you are at the fair city 2023"},{"id":3,"name":"What kind of British band are you?"},{"id":4,"name":"What kind of musician are you in the band?"},{"id":5,"name":"What Eurovision winner you are?"},{"id":6,"name":"What continent you are in music tours?"},{"id":7,"name":"What an opera you are?"},{"id":8,"name":"What Muse album are you"}]);
    });
});

describe('QuestController: id = 1', () => {
    it('should fetch quest by id = 1 and send the JSON response', async () => {
        // Mock the request object
        const req = {
            query: {
                questId: 1 // Set the questId value as needed
            }
        };

        const res = {
            json: sinon.spy()
        };

        // Call the getQuests method
        await QuestController.getQuests(req, res, db);

        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0],
            [{"id": 1, "name": "What instrument are you at the Summer Theater in Odesa?"}]);
    });
});

describe('QuestController: Questions', () => {
    it('should fetch questions for quest by id = 2', async () => {
        // Mock the request object
        const req = {
            query: {
                questId: 2 // Set the questId value as needed
            }
        };
        const res = {
            json: sinon.spy()
        };
        // Call the getQuests method
        await QuestController.getQuestionsForQuest(req, res, db);
        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0],
            [{"id": 5, "id_quest": 2, "question": "Have you ever heard of the Faine Misto music festival?"},
                {
                    "id": 6,
                    "id_quest": 2,
                    "question": "How many hours a day do you listen to music?"
                },
                {
                    "id": 7,
                    "id_quest": 2,
                    "question": "How often do you go to concerts?"
                },
                {
                    "id": 8,
                    "id_quest": 2,
                    "question": "What genres of music do you listen to?"
                }]);
    });
});

describe('QuestController: Question with answers', () => {
    it('should fetch answers for question by id = 2 with  for quest by id = 3', async () => {
        // Mock the request object
        const req = {
            query: {
                questId: 3,
                questionNum: 2// Set the questId value as needed
            }
        };

        const res = {
            json: sinon.spy()
        };

        // Call the getQuests method
        await QuestController.getQuestionWithAnswers(req, res, db);

        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0],
            [{
                "id": 10,
                "question": "How many times have you watched The Crown?",
                "answers": [{
                    "c1": 4,
                    "c2": 1,
                    "c3": 5,
                    "c4": 2,
                    "c5": 3,
                    "id": 37,
                    "answer": "What?",
                    "id_question": 10
                }, {
                    "c1": 5,
                    "c2": 4,
                    "c3": 2,
                    "c4": 1,
                    "c5": 3,
                    "id": 38,
                    "answer": "I know the entire royal family in 10 generations",
                    "id_question": 10
                }, {
                    "c1": 4,
                    "c2": 3,
                    "c3": 1,
                    "c4": 5,
                    "c5": 2,
                    "id": 39,
                    "answer": "I watched it because of the handsome main character",
                    "id_question": 10
                }, {
                    "c1": 2,
                    "c2": 3,
                    "c3": 5,
                    "c4": 1,
                    "c5": 4,
                    "id": 40,
                    "answer": "I have this series in my plans",
                    "id_question": 10
                }]
            }]);
    });
});

describe('QuestController: Answers by question id', () => {
    it('should fetch answers for question by id = 4', async () => {
        // Mock the request object
        const req = {
            params: {
                questId: 4 // Set the questId value as needed
            }
        };
        const res = {
            json: sinon.spy()
        };
        // Call the getQuests method
        await QuestController.getFinalsForQuest(req, res, db);
        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0],
            [
                {
                    "id": 16,
                    "id_quest": 4,
                    "text": "Singer"
                },
                {
                    "id": 17,
                    "id_quest": 4,
                    "text": "Guitarist"
                },
                {
                    "id": 18,
                    "id_quest": 4,
                    "text": "Bass guitarist"
                },
                {
                    "id": 19,
                    "id_quest": 4,
                    "text": "Keyboard player"
                },
                {
                    "id": 20,
                    "id_quest": 4,
                    "text": "Drummer"
                }
            ]);
    });
});
describe('QuestController: Final answers for the quest by id', () => {
    it('should fetch final answers for question by id = 14', async () => {
        // Mock the request object
        const req = {
            params: {
                questionId: 12 // Set the questId value as needed
            }
        };
        const res = {
            json: sinon.spy()
        };
        // Call the getQuests method
        await QuestController.getAnswerForQuestion(req, res, db);
        // Assert the expected behavior
        assert.deepEqual(res.json.firstCall.args[0],
            [
                {
                    "id": 45,
                    "id_question": 12,
                    "answer": "I also have plans for it)",
                    "c1": 3,
                    "c2": 4,
                    "c3": 5,
                    "c4": 2,
                    "c5": 1
                },
                {
                    "id": 46,
                    "id_question": 12,
                    "answer": "I already live there",
                    "c1": 4,
                    "c2": 5,
                    "c3": 3,
                    "c4": 1,
                    "c5": 2
                },
                {
                    "id": 47,
                    "id_question": 12,
                    "answer": "I have been several times ",
                    "c1": 1,
                    "c2": 4,
                    "c3": 3,
                    "c4": 2,
                    "c5": 5
                },
                {
                    "id": 48,
                    "id_question": 12,
                    "answer": "I go there on regular basis",
                    "c1": 5,
                    "c2": 4,
                    "c3": 2,
                    "c4": 1,
                    "c5": 3
                }
            ]);
    });
});


