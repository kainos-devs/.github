# <ins>Contributing Guidelines</ins> ✨

Thank you for your interest in contributing! 🤗 We're excited to have you onboard and build something meaningful together.

## <ins>Project Structure Guidelines</ins> 🧱

- All source code should go into a `/src` directory unless the entire project consists of just one or two small files (under 200 lines). In such cases, you may place the files directly in the root of the repository or still choose to create a `/src` folder for consistency.

- File names must follow _snake_case_ formatting (e.g., `some_file.c`) and should be as descriptive as possible. For example, if you're writing a C file to manage dynamically growing and shrinking memory buffers—useful for features like string builders, text input, or in-memory editors—name it `dynamic_buffer.c` instead of something vague like `buff.c` or `buffer.c`.

- Every project should include a `/docs` folder containing clearly written, beginner-friendly documentation. While a single `README.md` can work for small projects, a multi-file structure with a table of contents is preferred. You may use tools like Docusaurus, Jekyll, or simply plain Markdown files to generate the docs.

- Helper scripts such as `.sh`, `.py`, `.ps1`, or similar utility files (like build tools, automation helpers, linters, or initializers) should be placed inside a `/scripts` directory. For example, files like `build.sh`, `init_project.sh`, or `format_code.py` would belong here.

- If you're working on a web-based project, we recommend using Vite for setup due to its speed and simplicity. For other types of projects, refer to repositories tagged with `embedded-project` or similar and follow their structure as a guideline.

- Git doesn't track empty directories by default. If you need to keep one (e.g., for future expansion), add a `.keep` file inside it. Always include a proper `.gitignore` file tailored to your environment and language to avoid committing unnecessary files.

- Use `README.md` as the root-level readme and capitalize it (`README.md`). Subdirectories may contain their own `readme.md`, though this is optional and usually only necessary for standalone components or modules. Follow standard Markdown conventions to ensure clarity and accessibility. For syntax help, refer to the [Writing Markdown](##writing-markdown) section.

- We strongly encourage adding a `LICENSE` file in the root of every open-source project. This clarifies how the project may be used, modified, and distributed, protects contributors legally, and encourages responsible reuse. You can use permissive licenses like **MIT**, **Apache-2.0**, or stricter ones like **GPL** depending on your goals. _**Please don’t leave your project unlicensed**_.

- Commit messages should be meaningful, concise, and descriptive. Avoid vague terms like "fix" or "update"—instead, use messages like "fix: resolve buffer overflow in input parser" or "feat: add theme support to terminal UI." Use the specific commit style guide (in [commit_conventions](commit_conventions.md)), be sure to follow it consistently. This not only helps in understanding code history but is also critical when generating changelogs and performing automated releases.

- Including a `CHANGELOG.md` is highly recommended for projects that evolve over time. This file should log notable changes between versions or milestones—what was **added**, **removed**, **fixed**, or **changed**—and ideally follow **semantic versioning**. A clear changelog helps contributors understand project history and helps users know what’s new before updating.

- For projects that include a **command-line interface** (CLI), it’s important to provide usage examples. This can be part of the main `README.md` or placed in a separate `USAGE.md` file. The examples should cover **installation**, **basic usage**, **available flags**, and **common commands**. Realistic examples can make the difference between a tool being understood and it being abandoned.

## <ins>Branching Strategy</ins> 🔧

We follow a structured branching model to ensure clarity, stability, and ease of collaboration throughout the development lifecycle. Every branch has a specific purpose. Please adhere to this structure when contributing:

- The `main` branch represents the most stable version of the project. It contains **thoroughly tested**, **production-ready** code. Only tested features or hotfixes that have passed review should be merged into `main`. If you’re using the project in production or showcasing it publicly, this is the branch you should rely on.

- The `dev` branch acts as the **active development stream**. All **new features**, **bug fixes**, and **improvements** are first merged here. Once a set of changes is complete and considered stable, `de`v is merged into `main`. Think of `dev` as the staging ground for what’s next.

- **Feature-specific development** should be done in a branch prefixed with `feature/`, followed by a **clear and short name** describing the feature. For example, a new dark mode feature would be implemented in a branch called `feature/dark-mode`. This keeps features isolated and easy to track or roll back if necessary.

- **Bugs** and **quick patches** should be addressed in a branch prefixed with `fix/`, followed by a **short description of the issue**. For example, `fix/input-crash` would contain changes aimed at resolving a crash caused by user input. These branches are usually merged into `dev` first, and then eventually into `main` once verified.

This branching model supports **clean collaboration**, **easier reviews**, **rollback safety**, and **smoother releases**. Always pull the latest changes from `dev` before starting your work, and consider **rebasing** or **syncing** before opening a pull request to reduce **merge conflicts**.

> ### <ins>**Note**</ins> 📌
>
> If you’re new to Git or version control in general, we strongly recommend watching the excellent free **Git tutorial** by _**freeCodeCamp.org**_ on **YouTube** or any other video listed below:
    👉 [Git and GitHub for Beginners – Crash Course by freeCodeCamp](https://youtu.be/RGOj5yH7evk)
    👉 [Everything You Need to Know about Git | ForrestKnight](https://youtu.be/K6Q31YkorUE)

## <ins>Commits</ins> 📜 

We follow a structured and expressive commit style to keep the project history clean, understandable, and easy to maintain. All contributors should use our custom convention (more at [commit_conventions](commit_conventions.md))

Each commit message should begin with a `@timestamp` prefix, which marks when the change was made. This improves chronological traceability, especially in fast-moving collaborative workflows or multi-feature branches. Timestamps are formatted as `@YYYYMMDD-HHMMSS` (24hr format, no punctuation), for example:

```
`@2025_07_13-112851`: Add some more readme files 📝 
`@20250713-111241` `feat`: add line highlight support ✨
`@20250713-1145` `fix[editor]`: resolve crash when editing empty files 🛠

```

Beyond the timestamp, the commit type (`feat`, `fix`, etc.), `scope` (optional, in `[brackets]`), and descriptive message should follow. We also allow enhancements like backtick-wrapped types, minimal emoji use (if fitting), and trailing metadata such as `Reviewed-By:` or `Refs:`.

For a complete guide to the structure, allowed types, scopes, and formatting rules, refer to [commit_conventions](commit_conventions.md). That document also explains what `Refs:` means and how to correctly use metadata fields.

Please ensure your commits follow this convention before opening a pull request. You can use tools like `git commit --amend` or `git rebase -i` to fix messages after committing.

If you prefer a smoother workflow for generating and managing commit messages, use the provided helper script located at `.github/commits/helper.sh` (_**Note**: It’s a basic version for now — still under development._)

That's it! We value **consistency**, **clarity**, and **collaboration**. Mistakes are part of the process—what matters most is learning together and improving the project as a team. 🚀




