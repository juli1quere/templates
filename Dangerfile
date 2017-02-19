# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# if git.lines_of_code > 3 && !git.modified_files.include?("CHANGELOG.yml")
if !git.modified_files.include?("CHANGELOG.yml") && !declared_trivial
  fail("Please include a CHANGELOG entry. \nYou can find it at [CHANGELOG.md](https://github.com/SwiftGen/SwiftGen/blob/master/CHANGELOG.md).")
  message "We use the following format for CHANGELOG entries:\n\n" +
          '```' + "\n" +
          "* Describe your change here.  Don't forget to use 2 spaces at the end of the last line describing your change.  \n" +
          "  [#nn](https://github.com/SwiftGen/SwiftGen/pull/nn)"
end
