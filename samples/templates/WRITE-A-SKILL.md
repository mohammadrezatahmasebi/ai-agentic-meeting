# چگونه یک Skill خوب بنویسیم

## ساختار (استاندارد agentskills.io)
```
.agents/skills/my-skill/
  SKILL.md
  references/     # اختیاری
  scripts/        # اختیاری
  assets/         # اختیاری
```

## Frontmatter ضروری
```yaml
---
name: my-skill          # کوچک، با خط تیره، هم‌نام پوشه
description: چه می‌کند و کی باید فعال شود (trigger مهم است)
---
```

## بدنه
- مراحل شماره‌دار
- دستورهای ترمینال دقیق
- چک‌لیست خروجی
- Never / Don't برای ریسک‌ها

## Progressive disclosure
1. اول فقط name+description (~100 توکن)
2. وقتی مرتبط بود کل SKILL.md
3. references/scripts فقط در صورت نیاز

## چک‌لیست
- [ ] description شامل trigger واضح است
- [ ] رویه تکراری است (نه یک فیچر یک‌باره)
- [ ] زیر ~5000 توکن؛ اضافه‌ها در references
- [ ] با یک مثال واقعی تیم (.NET) تست شده
