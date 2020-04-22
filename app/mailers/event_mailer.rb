class EventMailer < ApplicationMailer
  default from: 'robertmcduffymusic@gmail.com'

  def event_notification_email
    @listservs = Listserv.all
    @event = params[:event]
    @listservs.each do |listserv| 
      mail(to: listserv.email, subject: "Robert McDuffy's got a new event!")
    end 
  end 
end
