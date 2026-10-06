# چگونه یک Rule خوب بنویسیم

## کجا بگذاریم
- مشترک همه ابزارها: `AGENTS.md`
- Cursor با scope: `.cursor/rules/*.mdc` (`globs`, `alwaysApply`)
- Claude Code: `CLAUDE.md` (می‌تواند `@AGENTS.md` را import کند)
- Copilot: `.github/copilot-instructions.md` (کوتاه؛ جزئیات در AGENTS.md)

## قانون خوب
- کوتاه و دستوری: Do / Don't
- دائمی است (نه مخصوص یک تیکت)
- در صورت امکان با glob محدود شود
- مالک: Tech Lead؛ مثل کد review شود

## قانون بد
- متن طولانی شبیه مقاله
- دستورات مخصوص یک فیچر (باید Spec باشد)
- آموزش گام‌به‌گام (باید Skill باشد)
- کپی BRD

## اسکلت `.mdc`
```yaml
---
description: یک خط — کی اعمال شود
globs: "**/*.cs"
alwaysApply: false
---

# عنوان
- Do ...
- Don't ...
```
