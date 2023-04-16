# require 'faraday'
# require 'json'

class HomeController < ApplicationController
  # protect_from_forgery with: :null_session

  def index
    conn = Faraday.new(url: 'http://localhost:3001')
    # index
    response = conn.get('/movies.json')

    # show
    # response = conn.get('/movies/2.json')

    # create
    # movie_data = { movie: {title: 'Yaro'}}
    # response = conn.post('/movies.json') do |request|
    #   request.headers['Content-Type'] = 'application/json'
    #   request.body = JSON.generate(movie_data)
    # end

    # update
    # movie_data = { movie: {title: 'Yaro part 2'}}
    # response = conn.patch('/movies/11.json') do |request|
    #   request.headers['Content-Type'] = 'application/json'
    #   request.body = JSON.generate(movie_data)
    # end

    # delete
    # conn.delete('/movies/2.json')
    @body_json = JSON.parse(response.body)
  end
end
