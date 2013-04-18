class PropercssGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc "This generator creates three folders in app/assets/stylesheets and then populates them with sass files as a means to organize your CSS per the Shay Howe method."
  
  argument :css_style, type: :string, default: "shay_howe_style"

  def create_css_files
    if css_style == "shay_howe_style"
      shays_style
    elsif css_style == "normalize_only"
      normalize_only
    end
  end

  private

  def shays_style
    empty_directory "app/assets/stylesheets/base"
    empty_directory "app/assets/stylesheets/components"
    empty_directory "app/assets/stylesheets/modules"
    copy_file "normalize.css", "app/assets/stylesheets/base/normalize.css"
    create_file "app/assets/stylesheets/base/layout.sass"
    create_file "app/assets/stylesheets/base/typography.sass"
    create_file "app/assets/stylesheets/components/alerts.sass"
    create_file "app/assets/stylesheets/components/buttons.sass"
    create_file "app/assets/stylesheets/components/forms.sass"
    create_file "app/assets/stylesheets/components/list.sass"
    create_file "app/assets/stylesheets/components/nav.sass"
    create_file "app/assets/stylesheets/components/tables.sass"
    create_file "app/assets/stylesheets/modules/aside.sass"
    create_file "app/assets/stylesheets/modules/footer.sass"
    create_file "app/assets/stylesheets/modules/header.sass"
  end

  def normalize_only
    empty_directory "app/assets/stylesheets/base"
    copy_file "normalize.css", "app/assets/stylesheets/base/normalize.css"
  end

end
