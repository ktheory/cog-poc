FROM ruby:2.3-alpine

ADD step1.rb /

CMD ["/step1.rb"]
