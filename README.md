# CRON_ACT6
Automating a Task Using GitHub Actions
Objective:
Schedule a GitHub Actions workflow to log the current date and time to a file in your repository.
Step 1: Create a GitHub Repository
1. Go to GitHub and create a new repository.
2. Clone the repository to your local machine:
Step 2: Create the Bash Script
 Inside the repository, create a file named log_time.sh:
 Save and exit (CTRL+X, then Y, then Enter).
 Make it executable:
 Commit and push:
Step 3: Set Up GitHub Actions
 In your repository, go to Actions and click New Workflow.
 Click Set up a workflow yourself and name it log-cron.yml.
 Add the following code:
name: Log Time Job
on:
 schedule:
 - cron: "*/5 * * * *" # Runs every 5 minutes
jobs:
 log_time:
 runs-on: ubuntu-latest
 steps:
 - name: Checkout repository
 uses: actions/checkout@v3
 - name: Run logging script
 run: |
 chmod +x log_time.sh
 ./log_time.sh
 - name: Commit and push changes
 run: |
 git config --global user.name "github-actions"
 git config --global user.email "github-actions@github.com"
 git add log.txt
 git commit -m "Update log file with new timestamp" || echo "No changes to
commit"
 git push
 Click Commit Changes.
Step 4: Watch It Run
1. The workflow will run automatically based on the schedule (*/5 * * * * means every 5
minutes).
2. Check the Actions tab to see if it runs successfully.
3. Open log.txt in your repo to see the timestamps updating over time.
