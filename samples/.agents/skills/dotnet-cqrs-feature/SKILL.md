---
name: dotnet-cqrs-feature
description: Add a MediatR CQRS feature (Command/Query, Handler, Validator, Controller endpoint) in a .NET Clean Architecture solution. Use when the user asks to add a new API feature, use-case, command, or query.
---

# Skill: Add .NET CQRS Feature

## When to use
Creating a new Application use-case with API endpoint following team conventions.

## Prerequisites
1. Read the feature Spec in `specs/**/spec.md` (acceptance criteria).
2. Confirm layer placement with Clean Architecture rules.

## Steps
1. **Name the use-case** (e.g. `FollowUpInstallment`).
2. **Application layer**
   - Create `Commands/` or `Queries/` folder item
   - `*Command` / `*Query` record
   - `*Handler : IRequestHandler<...>`
   - `*Validator : AbstractValidator<...>` (FluentValidation)
3. **Interfaces**
   - Add/extend repository interface in Application if needed
4. **Infrastructure**
   - Implement repository methods only if missing
5. **Host**
   - Thin controller action that sends via MediatR
6. **Tests**
   - Handler unit tests for happy path + validation failure
7. **Verify**
   - `dotnet build && dotnet test`
   - Map each acceptance criterion to a test or demo note

## Output checklist
- [ ] Handler + Validator + Controller
- [ ] No business logic in controller
- [ ] Tests green
- [ ] Spec acceptance criteria covered

## References
See `references/folder-layout.md` if unsure where files go.
