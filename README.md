# برنامه‌نویسی عامل‌محور (Agentic Coding) — جلسه تیم

ارائه ۶۰ دقیقه‌ای به زبان فارسی درباره ساخت نرم‌افزار در تیم با عامل‌های هوش مصنوعی:
Spec، Rule، Skill، توسعه مبتنی بر Spec (دیدگاه martinfowler.com) و جریان کامل
کسب‌وکار ← PO ← Tech Lead ← Developer ← Tester.

![cover](assets/img/cover.jpg)

## فایل‌ها

| فایل | توضیح |
|---|---|
| **سایت آنلاین** | https://mohammadrezatahmasebi.github.io/ai-agentic-meeting/ |
| [`slides.html`](slides.html) | اسلایدهای تعاملی در مرورگر |
| [`handbook.html`](handbook.html) | راهنمای جامع HTML |
| [`slides.pdf`](slides.pdf) | اسلایدها (PDF، ۱۶:۹) |
| [`handbook.pdf`](handbook.pdf) | راهنما (PDF، A4) |
| [`samples/`](samples) | فایل‌های نمونه .NET قابل کپی در پروژه |
| [`samples/templates/`](samples/templates) | قالب نوشتن Spec، Rule، Skill و درخت تصمیم |

## ارائه با مرورگر

آنلاین: [اسلایدها](https://mohammadrezatahmasebi.github.io/ai-agentic-meeting/slides.html) · [راهنما](https://mohammadrezatahmasebi.github.io/ai-agentic-meeting/handbook.html)

یا `slides.html` را محلی در Chrome باز کنید:

- `←` یا `Space`: اسلاید بعدی · `→`: قبلی
- `N`: نمایش یادداشت سخنران
- `F`: تمام‌صفحه
- `#12` در انتهای آدرس: پرش به اسلاید ۱۲

## ساختار نمونه‌ها

```
samples/
  AGENTS.md                              # Rule مشترک همه ابزارها
  CLAUDE.md                              # @AGENTS.md + نکات Claude Code
  .github/copilot-instructions.md        # Copilot
  .cursor/rules/*.mdc                    # Rule های Cursor با glob
  .agents/skills/dotnet-cqrs-feature/    # Skill: افزودن فیچر CQRS
  .agents/skills/ef-migration/           # Skill: migration امن
  .claude/agents/code-reviewer.md        # Subagent بازبین read-only
  specs/001-installment-followup/        # Spec + Plan + Tasks (سبک Spec Kit)
  templates/                             # راهنمای نوشتن + درخت تصمیم
```

## خلاصه یک‌خطی

- **Spec** = این بار چه بسازیم
- **Rule** = همیشه اینجا چطور کار می‌کنیم
- **Skill** = این نوع کار را چطور انجام بدهیم
- **Business Doc** = کسب‌وکار چه معنایی دارد (ماده خام، نه پیکربندی عامل)

## ساخت دوباره PDF

```bash
./build-pdf.sh
```

نیازمند Google Chrome. فونت Vazirmatn در `assets/fonts` قرار دارد.

## منابع اصلی

- Birgitta Böckeler — [Understanding Spec-Driven-Development: Kiro, spec-kit, and Tessl](https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html)
- Birgitta Böckeler — [Context Engineering for Coding Agents](https://martinfowler.com/articles/exploring-gen-ai/context-engineering-coding-agents.html)
- Birgitta Böckeler — [Harness engineering for coding agent users](https://martinfowler.com/articles/harness-engineering.html)
- Kief Morris — [Humans and Agents in Software Engineering Loops](https://www.martinfowler.com/articles/exploring-gen-ai/humans-and-agents.html)
- [Agent Skills specification](https://agentskills.io) · [AGENTS.md](https://agents.md) · [GitHub Spec Kit](https://github.com/github/spec-kit)
- [Anthropic — Best practices for Claude Code](https://code.claude.com/docs/en/best-practices)
- [DORA 2025](https://dora.dev/research/2025/dora-report) · [METR study](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/)

فهرست کامل منابع در `handbook.pdf` فصل ۱۲.
