# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rdoc}
  s.version = "3.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Dave Thomas", "Phil Hagelberg", "Tony Strauss"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdkcmJy\nYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZFgNu\nZXQwHhcNMDcxMjIxMDIwNDE0WhcNMDgxMjIwMDIwNDE0WjBBMRAwDgYDVQQDDAdk\ncmJyYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZ\nFgNuZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCbbgLrGLGIDE76\nLV/cvxdEzCuYuS3oG9PrSZnuDweySUfdp/so0cDq+j8bqy6OzZSw07gdjwFMSd6J\nU5ddZCVywn5nnAQ+Ui7jMW54CYt5/H6f2US6U0hQOjJR6cpfiymgxGdfyTiVcvTm\nGj/okWrQl0NjYOYBpDi+9PPmaH2RmLJu0dB/NylsDnW5j6yN1BEI8MfJRR+HRKZY\nmUtgzBwF1V4KIZQ8EuL6I/nHVu07i6IkrpAgxpXUfdJQJi0oZAqXurAV3yTxkFwd\ng62YrrW26mDe+pZBzR6bpLE+PmXCzz7UxUq3AE0gPHbiMXie3EFE0oxnsU3lIduh\nsCANiQ8BAgMBAAGjOTA3MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBS5k4Z75VSpdM0AclG2UvzFA/VW5DANBgkqhkiG9w0BAQUFAAOCAQEAHagT4lfX\nkP/hDaiwGct7XPuVGbrOsKRVD59FF5kETBxEc9UQ1clKWngf8JoVuEoKD774dW19\nbU0GOVWO+J6FMmT/Cp7nuFJ79egMf/gy4gfUfQMuvfcr6DvZUPIs9P/TlK59iMYF\nDIOQ3DxdF3rMzztNUCizN4taVscEsjCcgW6WkUJnGdqlu3OHWpQxZBJkBTjPCoc6\nUW6on70SFPmAy/5Cq0OJNGEWBfgD9q7rrs/X8GGwUWqXb85RXnUVi/P8Up75E0ag\n14jEc90kN+C7oI/AGCBN0j6JnEtYIEJZibjjDJTSMWlUKKkj30kq7hlUC2CepJ4v\nx52qPcexcYZR7w==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2011-08-26}
  s.description = %q{RDoc produces HTML and command-line documentation for Ruby projects.  RDoc
includes the +rdoc+ and +ri+ tools for generating and displaying online
documentation.

See RDoc for a description of RDoc's markup and basic use.}
  s.email = ["drbrain@segment7.net", "", "technomancy@gmail.com", "tony.strauss@designingpatterns.com"]
  s.executables = ["rdoc", "ri"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "RI.txt", "Rakefile"]
  s.files = [".autotest", ".document", "History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "RI.txt", "Rakefile", "bin/rdoc", "bin/ri", "lib/rdoc.rb", "lib/rdoc/alias.rb", "lib/rdoc/anon_class.rb", "lib/rdoc/any_method.rb", "lib/rdoc/attr.rb", "lib/rdoc/class_module.rb", "lib/rdoc/code_object.rb", "lib/rdoc/code_objects.rb", "lib/rdoc/constant.rb", "lib/rdoc/context.rb", "lib/rdoc/cross_reference.rb", "lib/rdoc/encoding.rb", "lib/rdoc/erbio.rb", "lib/rdoc/gauntlet.rb", "lib/rdoc/generator.rb", "lib/rdoc/generator/darkfish.rb", "lib/rdoc/generator/markup.rb", "lib/rdoc/generator/ri.rb", "lib/rdoc/generator/template/darkfish/.document", "lib/rdoc/generator/template/darkfish/classpage.rhtml", "lib/rdoc/generator/template/darkfish/filepage.rhtml", "lib/rdoc/generator/template/darkfish/images/brick.png", "lib/rdoc/generator/template/darkfish/images/brick_link.png", "lib/rdoc/generator/template/darkfish/images/bug.png", "lib/rdoc/generator/template/darkfish/images/bullet_black.png", "lib/rdoc/generator/template/darkfish/images/bullet_toggle_minus.png", "lib/rdoc/generator/template/darkfish/images/bullet_toggle_plus.png", "lib/rdoc/generator/template/darkfish/images/date.png", "lib/rdoc/generator/template/darkfish/images/find.png", "lib/rdoc/generator/template/darkfish/images/loadingAnimation.gif", "lib/rdoc/generator/template/darkfish/images/macFFBgHack.png", "lib/rdoc/generator/template/darkfish/images/package.png", "lib/rdoc/generator/template/darkfish/images/page_green.png", "lib/rdoc/generator/template/darkfish/images/page_white_text.png", "lib/rdoc/generator/template/darkfish/images/page_white_width.png", "lib/rdoc/generator/template/darkfish/images/plugin.png", "lib/rdoc/generator/template/darkfish/images/ruby.png", "lib/rdoc/generator/template/darkfish/images/tag_green.png", "lib/rdoc/generator/template/darkfish/images/wrench.png", "lib/rdoc/generator/template/darkfish/images/wrench_orange.png", "lib/rdoc/generator/template/darkfish/images/zoom.png", "lib/rdoc/generator/template/darkfish/index.rhtml", "lib/rdoc/generator/template/darkfish/js/darkfish.js", "lib/rdoc/generator/template/darkfish/js/jquery.js", "lib/rdoc/generator/template/darkfish/js/quicksearch.js", "lib/rdoc/generator/template/darkfish/js/thickbox-compressed.js", "lib/rdoc/generator/template/darkfish/rdoc.css", "lib/rdoc/ghost_method.rb", "lib/rdoc/include.rb", "lib/rdoc/known_classes.rb", "lib/rdoc/markup.rb", "lib/rdoc/markup/attribute_manager.rb", "lib/rdoc/markup/blank_line.rb", "lib/rdoc/markup/document.rb", "lib/rdoc/markup/formatter.rb", "lib/rdoc/markup/formatter_test_case.rb", "lib/rdoc/markup/heading.rb", "lib/rdoc/markup/indented_paragraph.rb", "lib/rdoc/markup/inline.rb", "lib/rdoc/markup/list.rb", "lib/rdoc/markup/list_item.rb", "lib/rdoc/markup/paragraph.rb", "lib/rdoc/markup/parser.rb", "lib/rdoc/markup/pre_process.rb", "lib/rdoc/markup/raw.rb", "lib/rdoc/markup/rule.rb", "lib/rdoc/markup/text_formatter_test_case.rb", "lib/rdoc/markup/to_ansi.rb", "lib/rdoc/markup/to_bs.rb", "lib/rdoc/markup/to_html.rb", "lib/rdoc/markup/to_html_crossref.rb", "lib/rdoc/markup/to_rdoc.rb", "lib/rdoc/markup/to_test.rb", "lib/rdoc/markup/to_tt_only.rb", "lib/rdoc/markup/verbatim.rb", "lib/rdoc/meta_method.rb", "lib/rdoc/method_attr.rb", "lib/rdoc/normal_class.rb", "lib/rdoc/normal_module.rb", "lib/rdoc/options.rb", "lib/rdoc/parser.rb", "lib/rdoc/parser/c.rb", "lib/rdoc/parser/ruby.rb", "lib/rdoc/parser/ruby_tools.rb", "lib/rdoc/parser/simple.rb", "lib/rdoc/rdoc.rb", "lib/rdoc/require.rb", "lib/rdoc/ri.rb", "lib/rdoc/ri/driver.rb", "lib/rdoc/ri/formatter.rb", "lib/rdoc/ri/paths.rb", "lib/rdoc/ri/store.rb", "lib/rdoc/ruby_lex.rb", "lib/rdoc/ruby_token.rb", "lib/rdoc/rubygems_hook.rb", "lib/rdoc/single_class.rb", "lib/rdoc/stats.rb", "lib/rdoc/stats/normal.rb", "lib/rdoc/stats/quiet.rb", "lib/rdoc/stats/verbose.rb", "lib/rdoc/task.rb", "lib/rdoc/text.rb", "lib/rdoc/token_stream.rb", "lib/rdoc/top_level.rb", "test/README", "test/binary.dat", "test/hidden.zip.txt", "test/test.ja.large.rdoc", "test/test.ja.rdoc", "test/test.ja.txt", "test/test.txt", "test/test_attribute_manager.rb", "test/test_rdoc_alias.rb", "test/test_rdoc_any_method.rb", "test/test_rdoc_attr.rb", "test/test_rdoc_class_module.rb", "test/test_rdoc_code_object.rb", "test/test_rdoc_constant.rb", "test/test_rdoc_context.rb", "test/test_rdoc_context_section.rb", "test/test_rdoc_cross_reference.rb", "test/test_rdoc_encoding.rb", "test/test_rdoc_generator_darkfish.rb", "test/test_rdoc_generator_ri.rb", "test/test_rdoc_include.rb", "test/test_rdoc_markup.rb", "test/test_rdoc_markup_attribute_manager.rb", "test/test_rdoc_markup_document.rb", "test/test_rdoc_markup_formatter.rb", "test/test_rdoc_markup_indented_paragraph.rb", "test/test_rdoc_markup_paragraph.rb", "test/test_rdoc_markup_parser.rb", "test/test_rdoc_markup_pre_process.rb", "test/test_rdoc_markup_raw.rb", "test/test_rdoc_markup_to_ansi.rb", "test/test_rdoc_markup_to_bs.rb", "test/test_rdoc_markup_to_html.rb", "test/test_rdoc_markup_to_html_crossref.rb", "test/test_rdoc_markup_to_rdoc.rb", "test/test_rdoc_markup_to_tt_only.rb", "test/test_rdoc_method_attr.rb", "test/test_rdoc_normal_class.rb", "test/test_rdoc_normal_module.rb", "test/test_rdoc_options.rb", "test/test_rdoc_parser.rb", "test/test_rdoc_parser_c.rb", "test/test_rdoc_parser_ruby.rb", "test/test_rdoc_parser_simple.rb", "test/test_rdoc_rdoc.rb", "test/test_rdoc_require.rb", "test/test_rdoc_ri_driver.rb", "test/test_rdoc_ri_paths.rb", "test/test_rdoc_ri_store.rb", "test/test_rdoc_ruby_lex.rb", "test/test_rdoc_rubygems_hook.rb", "test/test_rdoc_single_class.rb", "test/test_rdoc_stats.rb", "test/test_rdoc_task.rb", "test/test_rdoc_text.rb", "test/test_rdoc_top_level.rb", "test/xref_data.rb", "test/xref_test_case.rb", ".gemtest"]
  s.homepage = %q{http://docs.seattlerb.org/rdoc}
  s.post_install_message = %q{Depending on your version of ruby, you may need to install ruby rdoc/ri data:

<= 1.8.6 : unsupported
 = 1.8.7 : gem install rdoc-data; rdoc-data --install
 = 1.9.1 : gem install rdoc-data; rdoc-data --install
>= 1.9.2 : nothing to do! Yay!
}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rdoc}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{RDoc produces HTML and command-line documentation for Ruby projects}
  s.test_files = ["test/test_attribute_manager.rb", "test/test_rdoc_alias.rb", "test/test_rdoc_any_method.rb", "test/test_rdoc_attr.rb", "test/test_rdoc_class_module.rb", "test/test_rdoc_code_object.rb", "test/test_rdoc_constant.rb", "test/test_rdoc_context.rb", "test/test_rdoc_context_section.rb", "test/test_rdoc_cross_reference.rb", "test/test_rdoc_encoding.rb", "test/test_rdoc_generator_darkfish.rb", "test/test_rdoc_generator_ri.rb", "test/test_rdoc_include.rb", "test/test_rdoc_markup.rb", "test/test_rdoc_markup_attribute_manager.rb", "test/test_rdoc_markup_document.rb", "test/test_rdoc_markup_formatter.rb", "test/test_rdoc_markup_indented_paragraph.rb", "test/test_rdoc_markup_paragraph.rb", "test/test_rdoc_markup_parser.rb", "test/test_rdoc_markup_pre_process.rb", "test/test_rdoc_markup_raw.rb", "test/test_rdoc_markup_to_ansi.rb", "test/test_rdoc_markup_to_bs.rb", "test/test_rdoc_markup_to_html.rb", "test/test_rdoc_markup_to_html_crossref.rb", "test/test_rdoc_markup_to_rdoc.rb", "test/test_rdoc_markup_to_tt_only.rb", "test/test_rdoc_method_attr.rb", "test/test_rdoc_normal_class.rb", "test/test_rdoc_normal_module.rb", "test/test_rdoc_options.rb", "test/test_rdoc_parser.rb", "test/test_rdoc_parser_c.rb", "test/test_rdoc_parser_ruby.rb", "test/test_rdoc_parser_simple.rb", "test/test_rdoc_rdoc.rb", "test/test_rdoc_require.rb", "test/test_rdoc_ri_driver.rb", "test/test_rdoc_ri_paths.rb", "test/test_rdoc_ri_store.rb", "test/test_rdoc_ruby_lex.rb", "test/test_rdoc_rubygems_hook.rb", "test/test_rdoc_single_class.rb", "test/test_rdoc_stats.rb", "test/test_rdoc_task.rb", "test/test_rdoc_text.rb", "test/test_rdoc_top_level.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, [">= 2.3.1"])
      s.add_development_dependency(%q<minitest>, ["~> 2"])
      s.add_development_dependency(%q<isolate>, ["~> 3"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
    else
      s.add_dependency(%q<minitest>, [">= 2.3.1"])
      s.add_dependency(%q<minitest>, ["~> 2"])
      s.add_dependency(%q<isolate>, ["~> 3"])
      s.add_dependency(%q<ZenTest>, ["~> 4"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 2.3.1"])
    s.add_dependency(%q<minitest>, ["~> 2"])
    s.add_dependency(%q<isolate>, ["~> 3"])
    s.add_dependency(%q<ZenTest>, ["~> 4"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
  end
end
