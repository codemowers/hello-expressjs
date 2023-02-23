const express = require('express')
const promBundle = require("express-prom-bundle");
const app = express()
const port = 3000

// Add the options to the prometheus middleware most option are for http_request_duration_seconds histogram metric
const metricsMiddleware = promBundle({
  includeMethod: true,
  includePath: true,
  includeStatusCode: true,
  includeUp: true,
  customLabels: {project_name: 'hello_world', project_type: 'test_metrics_labels'},
  promClient: {
    collectDefaultMetrics: {
    }
  }
});
// add the prometheus middleware to all routes
app.use(metricsMiddleware)

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
