### Creating a Project

To create a new Firebase project from the CLI:

```bash
npx -y firebase-tools@latest projects:create
```

You will be prompted to:
1. Enter a **Project ID** (must be 6-30 chars, lowercase, digits, and hyphens; must be unique globally).
2. Enter a **display name**.

#### Common Issues
- **ID Already Exists:** If your chosen Project ID is taken, the command will fail. Try adding a random suffix or using a more specific name.
- **Project Quota Exceeded:** Most Google accounts have a limit on the number of projects. If you hit this limit, you must delete an old project via the [Firebase Console](https://console.firebase.google.com/) or request a quota increase.
- **Invalid ID:** IDs must start with a letter and only contain lowercase letters, numbers, and hyphens.
