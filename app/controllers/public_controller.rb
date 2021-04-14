class PublicController < ApplicationController
  skip_before_action :authenticate_account!, only: :main

  def main
  end
end
