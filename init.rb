require 'redmine'

require_dependency 'project_alias_hook'

Rails.logger.info 'Starting Project Alias plugin for Redmine'

Rails.configuration.to_prepare do
    unless String.method_defined?(:html_safe)
        String.send(:include, AliasStringHTMLSafePatch)
    end
    unless Project.included_modules.include?(AliasProjectPatch)
        Project.send(:include, AliasProjectPatch)
    end
    unless ApplicationHelper.included_modules.include?(AliasApplicationHelperPatch)
        ApplicationHelper.send(:include, AliasApplicationHelperPatch)
    end
end

Redmine::Plugin.register :project_alias do
    name 'Project Alias'
    author 'Andriy Lesyuk & Tobias Fischer'
    description 'Allows adding project identifier aliases.'
    url 'https://github.com/johnzimm/redmine-plugin-project_alias'
    version '0.2.1'

    menu :admin_menu, :project_aliases,
                    { :controller => 'project_aliases', :action => 'index' },
                      :caption => :label_project_alias_plural,
                      :after => :projects
end
