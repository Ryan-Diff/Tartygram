const fs = require('fs');
const pool = require('../lib/utils/pool');
const request = require('supertest');
const app = require('../lib/app');
const UserService = require('../lib/services/user-service');

describe('Tartygram routes', () => {
  beforeEach(() => {
    return pool.query(fs.readFileSync('./sql/setup.sql', 'utf-8'));
  });

  it('signup a new user via POST', async() => {
    const response = await request(app)
      .post('/api/v1/auth/signup')
      .send({
        email: 'email@email.com',
        password: '1234',
        profilePhotoUrl: 'jpg.jpg'
      });

    expect(response.body).toEqual({
      id: expect.any(String),
      email: 'email@email.com',
      profilePhotoUrl: 'jpg.jpg'
    });
  });
});
