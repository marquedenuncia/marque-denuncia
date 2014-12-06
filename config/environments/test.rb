# Copyright 2014 de Larissa Reis e Icaro Jerry
#
# Este arquivo é parte do programa Marque Denúncia. O Marque Denúncia é um
# software livre; você pode redistribuí-lo e/ou modificá-lo dentro dos termos da
# GNU General Public License como publicada pela Fundação do Software Livre
# (FSF); na versão 3 da Licença. Este programa é distribuído na esperança que
# possa ser útil, mas SEM NENHUMA GARANTIA; sem uma garantia implícita de
# ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a licença para
# maiores detalhes. Você deve ter recebido uma cópia da GNU General Public
# License, sob o título LICENCA, junto com este programa, se não, acesse
# http://www.gnu.org/licenses/

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = false

  # Configure static asset server for tests with Cache-Control for performance.
  config.serve_static_assets  = true
  config.static_cache_control = 'public, max-age=3600'

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
