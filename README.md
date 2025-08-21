# NUR Packages

This is a Nix User Repository containing custom packages.

## Available Packages

- `argonaut` - A GitOps CLI tool for managing ArgoCD applications
- `another-tool` - An example tool for the NUR repository  
- `my-cli` - A custom CLI tool

## Usage

After registering this repo in NUR, users can install packages with:

```bash
nix-env -iA nur.repos.darksworm.argonaut
nix-env -iA nur.repos.darksworm.another-tool
nix-env -iA nur.repos.darksworm.my-cli
```

## Registration in NUR

To register this repository in NUR:

1. Fork [nix-community/NUR](https://github.com/nix-community/NUR)
2. Add this repo to `repos.json`:
   ```json
   {
     "repos": {
       "darksworm": {
         "url": "https://github.com/darksworm/nur-packages"
       }
     }
   }
   ```
3. Create a pull request back to upstream