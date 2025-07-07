# RStudio script: render_and_push.R

# ✅ Render your Quarto site
quarto::quarto_render()

# ✅ Stage all changes
system("git add .")

# ✅ Commit with a timestamp
commit_msg <- paste0("Auto-update site on ", Sys.Date())
system(paste("git commit -m", shQuote(commit_msg)))

# ✅ Push to GitHub
system("git push")

message("✔ Sitio renderizado y cambios enviados a GitHub.")
