# درخت تصمیم: Spec / Rule / Skill / Business Doc

## سؤال راهنما
«این متن را کجا بگذارم تا عامل درست کار کند؟»

```
آیا این فقط برای یک فیچر/تغییر فعلی است؟
  └─ بله → SPEC بنویس (specs/.../spec.md)
  └─ خیر
       آیا یک قانون دائمی کدنویسی/معماری/امنیت است؟
         └─ بله → RULE بنویس (AGENTS.md یا .cursor/rules/*.mdc)
         └─ خیر
              آیا یک رویه تکراری «چطور انجام بده» است؟
                └─ بله → SKILL بنویس (.agents/skills/.../SKILL.md)
                └─ خیر → BUSINESS/PRODUCT DOC بماند (docs/domain/)
                         و از Spec به آن لینک بده
```

## مثال‌های سریع

| جمله | کجا؟ |
|---|---|
| اقساط معوق بیش از ۳۰ روز follow-up شوند | Business doc + داخل Spec به‌عنوان معیار پذیرش |
| Domain نباید Infrastructure را ببیند | Rule |
| برای فیچر جدید این مراحل CQRS را طی کن | Skill |
| در این اسپرینت endpoint follow-up بساز | Spec |
| واژه‌نامه: قسط، بیمه‌نامه، فروشنده | Business/domain doc |

## اشتباه رایج
کپی کردن کل BRD داخل `AGENTS.md` → context شلوغ، قانون مبهم، نگهداری سخت.
به‌جای آن: BRD در docs، خلاصه قابل‌تست در Spec، قرارداد دائمی در Rule، رویه در Skill.
