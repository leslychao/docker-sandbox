Расширенные моки для CastleMock

Пути (после запуска контейнера):
- OZON:
  - POST /v2/product/info/list (body: {"page":1|2|3})
  - POST /v2/posting/fbo/list (поддерживает фильтр по статусу в body: {"status":"delivered"})
  - POST /v2/analytics/data (body: {"dimension":"day"} или {"dimension":"sku"})
  - POST /v2/finance/transaction/list
  - POST /v1/price/list
  - GET  /v1/review/list
  - GET  /v2/throttle/test -> 429
  - GET  /v2/auth/check     -> 401
- WB:
  - GET /api/v1/supplier/orders
  - GET /api/v1/supplier/stocks
  - GET /api/v1/supplier/incomes
  - GET /api/v1/supplier/sales
  - GET /api/v1/feedbacks
  - GET /api/v1/limit/test  -> 429
  - GET /api/v1/auth/check  -> 401

Примеры:
curl -X POST http://localhost:8080/v2/product/info/list -H "Content-Type: application/json" -d '{"page":1}'
curl -X POST http://localhost:8080/v2/analytics/data -H "Content-Type: application/json" -d '{"dimension":"day"}'
curl -X GET  http://localhost:8080/api/v1/supplier/stocks
curl -X GET  http://localhost:8080/v2/throttle/test