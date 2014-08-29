api = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.26

; CORE PATCHES

; Fix notices on PHP 5.4 and editing nodes with multiple terms.
projects[drupal][patch][1525176] = https://drupal.org/files/issues/drupal7.entity-system.1525176-143.patch

; Raise minimum PHP version to work around core requirements check bug.
; Keep eyeballs posted on http://drupal.org/node/1724130.
projects[drupal][patch][1724012] = http://drupal.org/files/drupal-increase-php-version-1724012_0.patch

; Allow installation profile inheritance
projects[drupal][patch][] = http://drupal.org/files/1356276-make-D7-21.patch

projects[isb][type] = "profile"
projects[isb][download][type] = "git"
projects[isb][download][url] = "https://github.com/datagovuk/ISB.git"
projects[isb][download][branch] = "master"

; Download the Spark install profile and recursively build all its dependencies
projects[spark][type] = profile
projects[spark][download][type] = git
projects[spark][download][tag] = 7.x-1.0-beta1

; Download additional contributed modules not included in Spark distro
projects[features][version] = "2.0"
projects[features][subdir] = "contrib"
projects[features][patch][] = "http://raw.github.com/datagovuk/dgu_d7/master/patches/features_dont_convert_strings_to_integers.patch"

projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "contrib"

projects[diff][version] = "3.2"
projects[diff][subdir] = "contrib"

projects[entityreference][version] = "1.1"
projects[entityreference][subdir] = "contrib"

projects[lexicon][version] = "1.10"
projects[lexicon][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"
# Prevent losing manual aliases with node_save() calls https://drupal.org/node/936222
projects[pathauto][patch][] = "http://drupal.org/files/pathauto-persist-936222-130-pathauto-state.patch"

projects[rules][version] = "2.7"
projects[rules][subdir] = "contrib"

projects[rules_url_argument][version] = "1.2"
projects[rules_url_argument][subdir] = "contrib"

projects[field_permissions][version] = "1.0-beta2"
projects[field_permissions][subdir] = "contrib"

projects[field_group][version] = "1.1"
projects[field_group][subdir] = "contrib"

projects[conditional_fields][version] = "3.0-alpha1"
projects[conditional_fields][subdir] = "contrib"

projects[stringoverrides][version] = "1.8"
projects[stringoverrides][subdir] = "contrib"

projects[fieldable_panels_panes][version] = "1.5"
projects[fieldable_panels_panes][subdir] = "contrib"

projects[context][version] = "3.2"
projects[context][subdir] = "contrib"

projects[redirect][version] = "1.0-rc1"
projects[redirect][subdir] = "contrib"
projects[redirect][patch][] = "http://raw.github.com/datagovuk/dgu_d7/master/patches/redirect_module_remove_oops_message.patch"

projects[advuser][version] = "3.0-beta1"
projects[advuser][subdir] = "contrib"

projects[google_analytics][version] = "2.0"
projects[google_analytics][subdir] = "contrib"