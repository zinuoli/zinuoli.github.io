# Zinuo Li's Academic Website - Deployment Guide

This repository contains Zinuo Li's academic website built using the al-folio Jekyll theme.

## Quick Deployment to GitHub Pages

### Step 1: Create GitHub Repository
1. Go to [GitHub](https://github.com) and create a new repository
2. Name it exactly: `zinuoli.github.io` (replace `zinuoli` with your GitHub username)
3. Make sure it's set to **Public**
4. Do NOT initialize with README, .gitignore, or license (since we already have these files)

### Step 2: Push Code to GitHub
```bash
# Add the GitHub repository as remote origin
git remote add origin https://github.com/zinuoli/zinuoli.github.io.git

# Push the code to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select **GitHub Actions**
5. The site will automatically deploy using the included GitHub Actions workflow

### Step 4: Access Your Website
After deployment (usually takes 2-5 minutes), your website will be available at:
`https://zinuoli.github.io`

## Local Development

### Prerequisites
- Ruby (version 2.7 or higher)
- Bundler gem

### Setup
```bash
# Install dependencies
bundle install

# Run local server
bundle exec jekyll serve

# Access locally at http://localhost:4000
```

## Customization

### Personal Information
- Edit `_config.yml` for basic site configuration
- Update `_pages/about.md` for your bio and profile
- Replace `assets/img/zinuo.jpg` with your photo

### Publications
- Edit `_bibliography/papers.bib` to add/modify publications
- Add publication preview images to `assets/img/publication_preview/`

### Blog Posts
- Add new posts to `_posts/` directory
- Follow the naming convention: `YYYY-MM-DD-title.md`

### Projects
- Add project pages to `_projects/` directory
- Include project images in `assets/img/`

### News Updates
- Add news items to `_news/` directory
- These appear on the homepage

## Features Included

- ✅ Responsive design
- ✅ Publication management with BibTeX
- ✅ Blog system
- ✅ Project showcase
- ✅ CV page
- ✅ News/announcements
- ✅ Social media integration
- ✅ Google Scholar integration
- ✅ Dark/light theme toggle
- ✅ SEO optimization
- ✅ GitHub Pages deployment

## Support

For issues with the al-folio theme, visit: https://github.com/alshedivat/al-folio

For questions about this specific setup, contact: zinuo.li@research.uwa.edu.au