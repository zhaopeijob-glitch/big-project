# 架构与技术方案（Agent-2 输出）
- 技术栈：Next.js + Tailwind + shadcn/ui + FastAPI + PostgreSQL + S3/OSS + WebSocket
- 分层结构：前端（apps/web）/ 后端（apps/api）/ 公共库（packages/*）
- 流程与时序：登录→选择市场→节日日历→创建活动→甘特→物料→复盘
- 鉴权：JWT + RBAC
- 国际化：i18n，时区/货币格式
- 日志与可观测性：请求日志、Trace、Metrics
