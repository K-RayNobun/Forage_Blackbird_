npx create-react-app react-app
cd react-app
npm start
git init
git add . && git commit -m "Initial commit"
gh repo create react-app --public --source=. --remote=upstream --push

git checkout -b update_logo

# 4. Replace existing logo with new one (using curl to download/overwrite)
curl -o src/logo.svg https://cdn-ikponof.nitrocdn.com/vGqfYAGlOLDkYkJqZhYIYKEsibdbZnkc/assets/images/optimized/rev-ec05fa5/www.propelleraero.com/wp-content/uploads/2023/05/logo-footer.svg

# 5. Replace existing link in App.js with new one
# NOTE: The '-i ''' is for macOS/BSD sed. Use 'sed -i' alone for most Linux distributions.
sed -i '' 's|https://reactjs.org|https://www.propelleraero.com/dirtmate/|g' src/App.js

git add .
git commit -m "feat: Update logo and link to Propeller Aero assets"
git push -u origin update_logo

# 7. Create PR from “update_logo” to “master” branch
gh pr create --base master --head update_logo --title "Update Logo and Link" --body "Replaced the React logo and link with Propeller Aero assets."

gh pr merge update_logo --squash

# REPO_URL https://github.com/K-RayNobun/Forage_Blackbird_.git
