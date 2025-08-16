# CLAUDE.md

此文件为Claude Code (claude.ai/code) 在此代码库中工作时提供指导。

## 代码库概述

此代码库包含多个专为Claude Code设计的AI代理集合：

1. **contains-studio** - 一套全面的AI代理集合，旨在加速和增强快速开发的各个方面
2. **dl-ezo** - 一套完整的子代理集合，用于端到端的软件开发自动化
3. **wshobson** - 一套全面的AI子代理集合，涵盖开发、架构、基础设施、质量、安全和业务领域
4. **iannuttall** - 用于代码重构、内容写作、前端设计和项目规划的自定义代理

## 代理分类

根据集合的不同，代理被组织成不同的类别：

### contains-studio 分类：
- 工程类 (ai-engineer, backend-architect, frontend-developer等)
- 产品类 (feedback-synthesizer, sprint-prioritizer, trend-researcher)
- 市场营销类 (app-store-optimizer, tiktok-strategist, content-creator)
- 设计类 (brand-guardian, ui-designer, ux-researcher)
- 项目管理类 (experiment-tracker, project-shipper, studio-producer)
- 工作室运营类 (analytics-reporter, finance-tracker, legal-compliance-checker)
- 测试类 (api-tester, performance-benchmarker, test-results-analyzer)
- 奖励类 (joker, studio-coach)

### dl-ezo 分类：
- 需求与分析类 (requirements-analyst, user-story-generator)
- 设计与架构类 (system-architect, data-architect, security-architect)
- 实现与开发类 (code-reviewer, test-suite-generator, cicd-builder)
- 项目管理类 (project-planner, risk-manager, progress-tracker)
- 部署与运维类 (project-orchestrator, deployment-ops-manager)
- 元管理类 (context-manager, memory-manager, agent-creator)

### wshobson 分类：
- 开发与架构类 (backend-architect, frontend-developer, graphql-architect)
- 语言专家类 (python-pro, javascript-pro, rust-pro等)
- 基础设施与运维类 (devops-troubleshooter, cloud-architect, database-admin)
- 质量与安全类 (code-reviewer, security-auditor, performance-engineer)
- 数据与AI类 (data-scientist, ai-engineer, ml-engineer)
- 业务与市场类 (business-analyst, content-marketer, sales-automator)

### iannuttall 代理：
- code-refactorer, content-writer, frontend-designer, prd-writer
- project-task-planner, security-auditor, vibe-coding-coach

## 安装

要将这些代理与Claude Code一起使用，请将代理定义文件复制到项目的`.claude/agents/`目录中：

```bash
mkdir -p .claude/agents
# 从相应的集合目录复制代理文件
cp contains-studio/*/* .claude/agents/
# 或者
cp dl-ezo/*.md .claude/agents/
# 或者
cp wshobson/*.md .claude/agents/
# 或者
cp iannuttall/agents/*.md .claude/agents/
```

或者，对于全局访问，复制到用户的Claude目录：
```bash
mkdir -p ~/.claude/agents
cp */*.md ~/.claude/agents/
# 或者对于特定集合：
cp contains-studio/*/* ~/.claude/agents/
cp dl-ezo/*.md ~/.claude/agents/
cp wshobson/*.md ~/.claude/agents/
cp iannuttall/agents/*.md ~/.claude/agents/
```

## 代理使用

Claude Code将根据任务上下文和代理描述自动委派给适当的代理。您也可以通过在请求中提及代理名称来明确请求某个代理。

### 使用模式示例：

开发任务：
- "使用backend-architect为用户管理设计REST API"
- "让frontend-developer创建一个响应式仪表板组件"
- "让code-reviewer分析这个认证实现"

项目管理：
- "使用project-orchestrator构建一个完整的Web应用程序"
- "让requirements-analyst创建详细规格说明"
- "让project-planner将此功能分解为任务"

专业领域：
- "使用security-auditor检查OWASP合规性"
- "让performance-engineer优化这个数据库查询"
- "让ai-engineer构建一个RAG系统"

## 主要特性

1. **完全自动化**：从需求到生产部署的端到端开发
2. **智能编排**：代理自动协调和安排工作
3. **领域专业化**：每个代理都是其特定领域的专家
4. **专业质量**：遵循行业最佳实践和方法论
5. **可扩展架构**：模块化设计，保留上下文

## 最佳实践

1. 让Claude Code自动委派 - 主代理会分析上下文并选择最佳代理
2. 明确需求，包括约束条件、技术栈和质量要求
3. 信任代理专业知识 - 每个代理都针对其领域进行了优化
4. 从高层次请求开始，让代理协调复杂的多步骤任务
5. 在代理之间提供上下文，确保它们拥有必要的背景信息