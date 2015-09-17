# Debug App

This is an example app that includes a chart via Lazy High Charts and puts it into
a pdf. It can then display the pdf on a page or send it via email.

It consists of just a controller and a mailer and corresponding views.

I built this to extract out a problem I'm having where the chart shows up in the html version of the pdf but not the pdf itself.

If you want to use the mailer you'll need to configure your smtp stuff over [here](https://github.com/KCErb/chart_pdf_debug_app/blob/master/config/environments/development.rb#L39-L47).
