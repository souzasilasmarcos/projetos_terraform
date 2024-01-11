const { init } = require('@dazn/lambda-powertools');

init();

exports.handler = async (event, context) => {
  console.log('Lambda function code here');
  return 'Success';
};
