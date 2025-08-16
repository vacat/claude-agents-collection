# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository contains multiple collections of specialized AI agents for Claude Code:

1. **contains-studio** - A comprehensive collection of specialized AI agents designed to accelerate and enhance every aspect of rapid development
2. **dl-ezo** - A complete collection of specialized sub-agents for end-to-end software development automation
3. **wshobson** - A comprehensive collection of specialized AI subagents for development, architecture, infrastructure, quality, security, and business domains
4. **iannuttall** - Custom agents for code refactoring, content writing, frontend design, and project planning

## Agent Categories

The agents are organized into different categories depending on the collection:

### contains-studio Categories:
- Engineering (ai-engineer, backend-architect, frontend-developer, etc.)
- Product (feedback-synthesizer, sprint-prioritizer, trend-researcher)
- Marketing (app-store-optimizer, tiktok-strategist, content-creator)
- Design (brand-guardian, ui-designer, ux-researcher)
- Project Management (experiment-tracker, project-shipper, studio-producer)
- Studio Operations (analytics-reporter, finance-tracker, legal-compliance-checker)
- Testing (api-tester, performance-benchmarker, test-results-analyzer)
- Bonus (joker, studio-coach)

### dl-ezo Categories:
- Requirements & Analysis (requirements-analyst, user-story-generator)
- Design & Architecture (system-architect, data-architect, security-architect)
- Implementation & Development (code-reviewer, test-suite-generator, cicd-builder)
- Project Management (project-planner, risk-manager, progress-tracker)
- Deployment & Operations (project-orchestrator, deployment-ops-manager)
- Meta-Management (context-manager, memory-manager, agent-creator)

### wshobson Categories:
- Development & Architecture (backend-architect, frontend-developer, graphql-architect)
- Language Specialists (python-pro, javascript-pro, rust-pro, etc.)
- Infrastructure & Operations (devops-troubleshooter, cloud-architect, database-admin)
- Quality & Security (code-reviewer, security-auditor, performance-engineer)
- Data & AI (data-scientist, ai-engineer, ml-engineer)
- Business & Marketing (business-analyst, content-marketer, sales-automator)

### iannuttall Agents:
- code-refactorer, content-writer, frontend-designer, prd-writer
- project-task-planner, security-auditor, vibe-coding-coach

## Installation

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

## Agent Usage

Claude Code will automatically delegate to the appropriate agent based on the task context and the agent's description. You can also explicitly request an agent by mentioning their name in your request.

### Example Usage Patterns:

For development tasks:
- "Use the backend-architect to design a REST API for user management"
- "Have the frontend-developer create a responsive dashboard component"
- "Get the code-reviewer to analyze this authentication implementation"

For project management:
- "Use the project-orchestrator to build a complete web application"
- "Have the requirements-analyst create detailed specifications"
- "Get the project-planner to break down this feature into tasks"

For specialized domains:
- "Use the security-auditor to check for OWASP compliance"
- "Have the performance-engineer optimize this database query"
- "Get the ai-engineer to build a RAG system"

## Key Features

1. **Complete Automation**: End-to-end development from requirements to production deployment
2. **Intelligent Orchestration**: Agents automatically coordinate and sequence work
3. **Domain Specialization**: Each agent is an expert in their specific area
4. **Professional Quality**: Follows industry best practices and methodologies
5. **Scalable Architecture**: Modular design with context preservation

## Best Practices

1. Let Claude Code delegate automatically - the main agent analyzes context and selects optimal agents
2. Be specific about requirements, including constraints, tech stack, and quality requirements
3. Trust agent expertise - each agent is optimized for their domain
4. Start with high-level requests to let agents coordinate complex multi-step tasks
5. Provide context between agents to ensure they have necessary background information