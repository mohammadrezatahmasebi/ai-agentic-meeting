# Plan — 001 Installment Follow-up

## رویکرد
افزودن use-case در Application با MediatR، پیاده‌سازی داده در Infrastructure، endpoint نازک در Host.

## فایل‌های پیشنهادی
1. `Application/.../FollowUp/GetOverdueInstallmentsQuery.cs` + Handler
2. `Application/.../FollowUp/AddInstallmentFollowUpCommand.cs` + Handler + Validator
3. `Application/.../IInstallmentRepository.cs` (متدهای جدید)
4. `Infrastructure/.../InstallmentRepository.cs`
5. `Host/Controllers/InstallmentsController.cs`
6. `Tests/.../FollowUp*Tests.cs`

## ریسک‌ها
- تعریف دقیق «۳۰ روز معوق» نسبت به timezone
- مجوز دسترسی فروشنده

## ترتیب اجرا
1. مدل‌ها و اینترفیس
2. Query معوق‌ها + تست
3. Command ثبت follow-up + تست
4. Controller
5. Review با code-reviewer subagent
