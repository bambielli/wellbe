<%
  @path = "/etc/profile.d/rubber.sh"
  current_path = "/mnt/#{rubber_env.app_name}-#{Rubber.env}/current" 
%>

# convenience to simply running rails console, etc with correct env
export RUBBER_ENV=<%= Rubber.env %>
export RAILS_ENV=<%= Rubber.env %>
export PUBLISHABLE_KEY=pk_test_BGjeOsizNGYO1XX48cU69ecg
export SECRET_KEY=sk_test_E5ZpopuhLLQJVXEY7VYgb2B2
alias current="cd <%= current_path %>"
alias release="cd <%= Rubber.root %>"
