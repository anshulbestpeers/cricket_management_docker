// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'turbo-rails';
import * as ActiveStorage from "@rails/activestorage";
import "channels"
import "controllers";
import 'tailwindcss/base';
import 'tailwindcss/components';
import 'tailwindcss/utilities';
ActiveStorage.start();
