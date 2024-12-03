function fn() {
  var env = karate.env; // get java system property 'karate.env'
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    validateUrl: 'http://localhost:8080/api/v3/ems-policy-validation-service/validate',
    calculateUrl: 'http://localhost:8080/api/v3/ems-policy-validation-service/calculate',
    bearerToken: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.e30.hJzubJmaMMeODOdSoH9BKqcLC6ZcSYBxbgiFzE2MJZgx',
  };

  return config;
}
