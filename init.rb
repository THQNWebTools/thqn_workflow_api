Redmine::Plugin.register :thqn_workflow_api do
  name 'THQN Workflow API'
  author 'Alex Stanev, THQ Nordic'
  description 'API to access workflow transitions and field permissions.'
  version '1.0.0'
  url 'https://github.com/THQNWebTools/thqn_workflow_api'
  author_url 'https://www.stanev.org'
  requires_redmine :version_or_higher => '6.0.0'
end
