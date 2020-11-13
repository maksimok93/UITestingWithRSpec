<p><a href="https://github.com/rubocop-hq/rubocop"><img src="https://camo.githubusercontent.com/c4f1664aefb3b2227a3ba660fbd2ebeca5e23eb2/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f636f64655f7374796c652d7275626f636f702d627269676874677265656e2e737667" alt="Ruby Style Guide" data-canonical-src="https://img.shields.io/badge/code_style-rubocop-brightgreen.svg" style="max-width:100%;"></a></p>

<h1>UI Test Automation with RSpec and Capybara</h1>

<p>This project contains automated test scenarios for
<a href="https://rozetka.com.ua/" rel="nofollow">Rozetka</a> using RSpec.</p>

<h2>Project structure</h2>
<p>The following directories tree outlines the most important information about project structure:</p>
<pre lang="text"><code>
├── pages                     &lt;= Page-Object representation of online-store
├── spec
│   ├── features              &lt;= Automated tests for selected scenarios
│   ├── spec_helper.rb        &lt;= Entry point for all support code for specs
├── tests_data                &lt;= Test data for parameterized tests
├── .rubocop.yml              &lt;= Rubocop config file (to enable/disable certain rules/checks)
├── constants.rb              &lt;= Static strings that are used as arguments in automated tests
├── Gemfile                   &lt;= Describes gem dependencies for current project
├── locators.rb               &lt;= References to a corresponding element on the actual web page
├── Rakefile.rb               &lt;= Specifies Rake tasks and describes dependencies
├── README.md
</code></pre>

<h2>Libraries</h2>
<p>The following main tools are used in this project:</p>
<ul>
<li>Capybara</li>
<li>RSpec</li>
<li>selenium-webdriver</li>
</ul>


<h2>Installation</h2>
<p>For installing all required gems from Gemfile use commands below:</p>
<div class="highlight highlight-source-shell"><pre>
$ gem install bundler
$ bundle install</pre></div>

<h2>Tests execution</h2>
<p>If you prefer to use bundler, to run tests use command below:</p>
<div class="highlight highlight-source-shell"><pre>
$ bundle exec rspec --format documentation
</pre></div>
<p>If you use Rake, type this command:</p>
<div class="highlight highlight-source-shell"><pre>
$ rake default
</pre></div>
<p>You can also validate code style with <a href="https://github.com/rubocop-hq/rubocop" rel="nofollow">RuboCop</a> by typing command below:</p>
<div class="highlight highlight-source-shell"><pre>
$ rake rubocop
</pre></div>

<h2>Continuous Integration</h2>
<p>If you want to run the tests with CI, use this shell script - <code>run_ci.sh</code></p>
<p>By default, Test execution report can be viewed with RSpec JUnit formatter plugin (Jenkins) in this file - <code>results.xml</code></p>