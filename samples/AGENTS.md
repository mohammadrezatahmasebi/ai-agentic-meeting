# AGENTS.md — راهنمای عامل‌های کدنویسی (.NET Clean Architecture)

این فایل منبع مشترک برای Cursor، Copilot، Codex و سایر عامل‌هاست.
قوانین دائمی پروژه اینجا هستند؛ جزئیات فیچر در `specs/` و رویه‌های تکراری در `.agents/skills/`.

## نمای پروژه
- استک: .NET / C#، Clean Architecture (Domain / Application / Infrastructure / Host)
- الگو: CQRS با MediatR، FluentValidation، Result pattern
- تست: xUnit + NSubstitute

## دستورهای حیاتی
```bash
dotnet build
dotnet test
dotnet format
```

## قوانین معماری (همیشه)
- Domain نباید به Infrastructure یا Host وابسته باشد.
- کنترلرها نازک بمانند؛ منطق کسب‌وکار در Handler/Service.
- فیلدهای پولی فقط `decimal` — هرگز `double`/`float`.
- رمز، توکن و Connection String را در کد هاردکد نکن.
- برای فیچر جدید، اول Spec در `specs/` را بخوان؛ بدون معیار پذیرش کد نزن.

## وقتی کدام artifact را بخوانی
| نیاز | فایل |
|---|---|
| قرارداد این فیچر | `specs/**/spec.md` |
| قانون دائمی | همین فایل + `.cursor/rules/` |
| رویه تکراری (مثلاً CQRS) | `.agents/skills/*/SKILL.md` |
| دانش دامنه | `docs/domain/` (اگر موجود بود) |

## Definition of Done برای هر تغییر
1. بیلد سبز
2. تست‌های مرتبط پاس
3. معیارهای پذیرش Spec پوشش داده شده
4. بدون secret در diff
