# -*- coding: utf-8 -*-
#
import sys
import os
import shlex
import sphinx_rtd_theme

sys.path.insert(0, os.path.abspath('.'))

# -- General configuration ------------------------------------------------

extensions = [
    'sphinxcontrib.spelling',
    'sphinx.ext.autodoc',
    'breathe',
    'sphinx.ext.viewcode',
]

spelling_word_list_filename = 'spelling_wordlist.txt'

templates_path = ['_templates']

source_suffix = '.rst'
master_doc = 'index'

# General information about the project.
project = u'GraphicsLib'
copyright = u'2015, Roie R. Black'
author = u'Roie R. Black'

version = 'Fall.15.1'
release = '1.0'

language = None

today_fmt = '%B %d, %Y'
exclude_patterns = []
pygments_style = 'sphinx'

todo_include_todos = False

#--- Options for breathe --------------------------------------------------

breathe_projects = {"sphinx": 'xml'}
breathe_default_project = "sphinx"
breathe_domain_by_extension = {"c" : "c", "h" : "c", "cpp" : "cpp", "cpp" : "hpp"}
#breathe_domain_by_file_pattern = {"path/cpp_header.h" : "cpp"}
breathe_projects_source = {
    "sphinx" :
        ( "../", [ "src/main.cpp", 
                   "lib/GraphicsLib.h", 
                   "lib/GraphicsLib.cpp", 
                   "test/test_main.cpp"
                 ] 
        )
}

breathe_default_members = ('members', 'undoc-members')
breathe_implementation_filename_extensions = ['.c', '.cc', '.cpp']

# -- Other options --------------------------------------------------------

# Add tag as switch between minimal and full documentation
# - minimal-doc: Minimal documentation
# - full-doc: Full documentation
#tags.add('minimal-doc')
#tags.has('minimal-doc')

# The default programming language for the highlighting capabilities
# Use 'c' (CLexer) for C, use 'cpp' or 'c++' (CppLexer) for C++.
highlight_language = 'c'

# -- Options for HTML output ----------------------------------------------

html_theme = 'sphinx_rtd_theme'
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
html_theme_options = {
}

html_sidebars = {
    'sidebar': ['localtoc.html', 'sourcelink.html', 'searchbox.html']
}

html_title = "CS1 GraphicsLib"
html_short_title = "GraphicsLib"
html_logo = '_static/images/ACClogo.png'
html_favicon = '_static/images/favicon.ico'

html_static_path = ['_static']
html_last_updated_fmt = '%b %d, %Y'
#html_sidebars = {}
#html_use_index = True
html_show_sourcelink = True
html_show_sphinx = True
html_show_copyright = True

# -- Options for LaTeX output ---------------------------------------------

latex_elements = {
'papersize': 'letterpaper',
'pointsize': '11pt',
#'preamble': '',
}

latex_documents = [
  (master_doc, 'GraphicsLib.tex', u'CS1 GraphicsLib',
   u'Roie R. Black', 'manual'),
]

latex_logo = '_static/images/ACClogo.png'
#latex_show_urls = False
#latex_appendices = []
#latex_domain_indices = True

