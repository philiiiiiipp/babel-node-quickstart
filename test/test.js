/* @flow */

const expect = require('chai').expect;
import index from '../';

describe('Test', function () {
  it('should return Hello World', function () {
    expect(index.helloWorld()).to.be.equal('Hello World');
  });
});
