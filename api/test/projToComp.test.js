const assert = require('assert');
const request = require('supertest');
const app = require('../server.js');

describe('POST /projtocomp', function() {
    // it('should insert rows into the projectsToCompetence table', async function(done) {
    //     // Set up test data in the database
    //     const projID = [1, 2, 3];
    //     const compID = 4;
    //     const sql = `INSERT INTO projectsToCompetence (id, name) VALUES ${projID.map((id) => `(${id}, 'Project ${id}')`).join(', ')}`;
    //     await app.con.promise().query(sql);
      
    //     // Make a request to the function with a valid request body
    //     request(app)
    //       .post('/projtocomp')
    //       .send({ projID, compID })
    //       .expect(200)
    //       .end(async function(err, res) {
    //         if (err) return done(err);
      
    //         // Check that the correct number of rows were inserted
    //         const result = await con.promise().query(`SELECT COUNT(*) as count FROM projectsToCompetence WHERE idCompetence = ${compID}`);
    //         assert.strictEqual(result[0].count, projID.length);
      
    //         // Check that the inserted rows contain the correct data
    //         const rows = await con.promise().query(`SELECT * FROM projectsToCompetence WHERE idCompetence = ${compID}`);
    //         rows.forEach((row) => {
    //           assert(projID.includes(row.idProject));
    //         });
      
    //         done();
    //       });
    //   });
    
  it('should return "Success" when called with a valid request body', function(done) {
      request(app)
        .post('/projtocomp')
        .send({ projID: [1, 2, 3], compID: 4 })
        .expect(200)
        .expect((res) => {
          assert.strictEqual(res.text, 'Success');
        })
        .end(done);
    });

  it('should return "Success" when called with a valid request body', function(done) {
    request(app)
      .post('/projtocomp')
      .send({ projID: [1, 2, 3], compID: 4 })
      .expect(200)
      .expect('Success', done);
  });

  it('should handle an empty projID array correctly', function(done) {
    request(app)
      .post('/projtocomp')
      .send({ projID: [], compID: 4 })
      .expect(200)
      .expect('Success', done);
  });

  it('should handle invalid data in the request body correctly', function(done) {
    request(app)
      .post('/projtocomp')
      .send({ projID: [1, 2, 'invalid'], compID: 'invalid' })
      .expect(200)
      .expect('Success', done);
  });
});
