#!/usr/bin/env ruby

# TODO: Assumes Java, Ant installed. Check this.

HOME = Dir.home
CWD = File.expand_path(File.dirname(__FILE__))
SITE_LISP_DIR = File.join(CWD, 'site-lisp')
JDEE_DIR = File.join(SITE_LISP_DIR, 'jdee')
TERN_DIR = File.join(SITE_LISP_DIR, 'tern')

puts 'Setting up Emacs...'

def build_jdee
  puts 'Building JDEE for Emacs...'

  Dir.chdir(JDEE_DIR)

  success = [
           system('ant clean-all > /dev/null 2>&1'),
           system('ant configure > /dev/null 2>&1'),
           system('ant build > /dev/null 2>&1')
          ]

  unless success.all?
    puts 'JDEE for Emacs build failed.'
  else
    puts 'JDEE for Emacs build succeeded.'
  end
end

def install_tern
  puts 'Installing Tern for Emacs...'

  Dir.chdir(TERN_DIR)

  success = system('npm install > /dev/null 2>&1')

  unless success
    puts 'Tern for Emacs installation failed.'
  else
    puts 'Tern for Emacs installation succeeded.'
  end
end

build_jdee
install_tern

puts 'Finished setting up Emacs. Run Emacs to install all packages.'
