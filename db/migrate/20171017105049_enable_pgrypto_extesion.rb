class EnablePgryptoExtesion < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'
  end
end
