# GitHub Copilot Instructions

Follow Clean Architecture for this .NET solution.

- Keep Domain free of Infrastructure dependencies.
- Prefer MediatR handlers over fat controllers.
- Use `decimal` for money.
- Never commit secrets.
- Before implementing a feature, read `specs/**/spec.md` and satisfy acceptance criteria.
- Run `dotnet build` and `dotnet test` after changes.
- Shared policy lives in `AGENTS.md`; keep this file short.
