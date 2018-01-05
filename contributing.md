# Contributing to Material APEX
👍🎉 First off, thanks for taking the time to contribute! 🎉👍

The following is a set of guidelines, not rules, for contributing to Material APEX. Use your best judgment, and feel free to propose changes to this document in a pull request.

## How can I contribute?
### Improve documentation
As a user of Material APEX you're the perfect candidate to help us improve our documentation. Typo corrections, error fixes, better explanations, more examples, etc. Open issues for things that could be improved. Anything. Even improvements to this document.

### Submitting an issue
- Search the issue tracker before opening an issue.
- Ensure you're using the latest version of Material APEX.
- Use a clear and descriptive title.
- Include as much information as possible: Steps to reproduce the issue, error message, screenshots, etc.
- The more time you put into an issue, the more we will drill.

### Pull Requests
This means actual code contributions.

**Please ask first** before working on any significant pull request, otherwise you risk spending a lot of time working on something that the project's developers might not want to merge into the project.

#### Pre-requisites
Material APEX is built using [APEX Nitro](https://github.com/OraOpenSource/apex-nitro). Head there first and follow the instructions to install APEX Nitro on your system.

#### Steps
1. Fork the project, clone your fork, and configure the upstream:
   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/material-apex.git
   # Navigate to the newly cloned directory
   cd material-apex
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/vincentmorneau/material-apex.git
   ```

2. If you cloned a while ago, get the latest changes from upstream:
   ```bash
   git checkout master
   git pull upstream master
   ```

3. Install the Material APEX dependencies
   ```bash
   npm install
   ```

4. Download the APEX Nitro [configuration file](/apex-nitro/material-apex.json)

	a. Search and replace all occurrences of `CHANGE_ME_PATH` to the path from step 1

	b. Search and replace all occurrences of `CHANGE_ME_URL` with the URL from your Material APEX environment.

5. Configure APEX Nitro
   ```bash
   apex-nitro config
   ```
   A browser tab should open.

	a. Use the "Import" button

	b. Choose the file from step 4

	c. Save. You can close the tab now.

6. Launch APEX Nitro
   ```bash
   apex-nitro launch material-apex
   ```

7. Make your changes

8. commit your changes
   ```bash
   git commit -m "your git commit message"
   ```

9. Push your changes up to your fork:
   ```bash
   git push
   ```

10. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/) with a clear title and description
