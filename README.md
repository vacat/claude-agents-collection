# Claude Code Agents Collection

[English Version](#english-version) | [中文版本](#中文版本)

## English Version

This repository contains a comprehensive collection of specialized AI agents for Claude Code, organized into multiple curated collections:

### Agent Collections

1. **contains-studio** - A comprehensive collection of specialized AI agents designed to accelerate and enhance every aspect of rapid development
2. **dl-ezo** - A complete collection of specialized sub-agents for end-to-end software development automation
3. **wshobson** - A comprehensive collection of specialized AI subagents for development, architecture, infrastructure, quality, security, and business domains
4. **iannuttall** - Custom agents for code refactoring, content writing, frontend design, and project planning

### Key Features

- **Complete Automation**: End-to-end development from requirements to production deployment
- **Intelligent Orchestration**: Agents automatically coordinate and sequence work
- **Domain Specialization**: Each agent is an expert in their specific area
- **Professional Quality**: Follows industry best practices and methodologies
- **Scalable Architecture**: Modular design with context preservation

### Installation

To use these agents with Claude Code, copy the agent definition files to your project's `.claude/agents/` directory:

```bash
mkdir -p .claude/agents
# Copy the agent files from the appropriate collection directory
cp contains-studio/*/* .claude/agents/
# or
cp dl-ezo/*.md .claude/agents/
# or
cp wshobson/*.md .claude/agents/
# or
cp iannuttall/agents/*.md .claude/agents/
```

Alternatively, for global access, copy to your user's Claude directory:
```bash
mkdir -p ~/.claude/agents
cp */*.md ~/.claude/agents/
# or for specific collections:
cp contains-studio/*/* ~/.claude/agents/
cp dl-ezo/*.md ~/.claude/agents/
cp wshobson/*.md ~/.claude/agents/
cp iannuttall/agents/*.md ~/.claude/agents/
```

### Usage

Claude Code will automatically delegate to the appropriate agent based on the task context and the agent's description. You can also explicitly request an agent by mentioning their name in your request.

---

## 中文版本

这个仓库包含了一个为Claude Code准备的全面的AI代理集合，分为多个精心策划的集合：

### 代理集合

1. **contains-studio** - 一个全面的AI代理集合，旨在加速和增强快速开发的各个方面
2. **dl-ezo** - 一个完整的专业子代理集合，用于端到端的软件开发自动化
3. **wshobson** - 一个全面的AI子代理集合，涵盖开发、架构、基础设施、质量和安全等领域
4. **iannuttall** - 用于代码重构、内容写作、前端设计和项目规划的定制代理

### 主要特性

- **完整自动化**：从需求到生产部署的端到端开发
- **智能编排**：代理自动协调和安排工作
- **领域专业化**：每个代理都是其特定领域的专家
- **专业质量**：遵循行业最佳实践和方法论
- **可扩展架构**：模块化设计，保留上下文

### 安装

要将这些代理与Claude Code一起使用，请将代理定义文件复制到项目的`.claude/agents/`目录：

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

或者，为了全局访问，可以复制到用户的Claude目录：
```bash
mkdir -p ~/.claude/agents
cp */*.md ~/.claude/agents/
# 或者针对特定集合：
cp contains-studio/*/* ~/.claude/agents/
cp dl-ezo/*.md ~/.claude/agents/
cp wshobson/*.md ~/.claude/agents/
cp iannuttall/agents/*.md ~/.claude/agents/
```

### 使用方法

Claude Code会根据任务上下文和代理描述自动委派给适当的代理。您也可以通过在请求中提及代理名称来显式请求特定代理。