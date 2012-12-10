#!perl

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}


use Test::More;
eval 'use Test::CPAN::Meta::YAML';
plan skip_all => 'Test::CPAN::Meta::YAML required for testing META.yaml' if $@;
meta_yaml_ok();
