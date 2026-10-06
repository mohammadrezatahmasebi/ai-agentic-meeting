---
name: ef-migration
description: Create and apply EF Core migrations safely in a .NET project. Use when the user asks for a database migration, schema change, or Add-Migration / dotnet ef migrations add.
---

# Skill: EF Core Migration

## Steps
1. Confirm entity/configuration changes are in the correct Infrastructure project.
2. Review that Domain entities still have no EF attributes if the team uses Fluent configuration.
3. Generate migration:
   ```bash
   dotnet ef migrations add <Name> --project <Infrastructure> --startup-project <Host>
   ```
4. Review generated migration for destructive changes (drop column/table).
5. Apply locally only if user asks:
   ```bash
   dotnet ef database update --project <Infrastructure> --startup-project <Host>
   ```
6. Run `dotnet build` and relevant tests.

## Never
- Never invent connection strings.
- Never drop production data without explicit human approval.
- Never commit `appsettings.Development.json` secrets.
