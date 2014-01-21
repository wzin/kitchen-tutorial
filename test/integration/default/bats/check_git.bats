#!/usr/bin/env bats

@test "check if git is installed" {
  run git help
  [ "$status" -eq 0 ]
}

@test "check if git is installed in the right place" {
  run which git
  [ "${lines[0]}" = "/usr/bin/git" ]
}
