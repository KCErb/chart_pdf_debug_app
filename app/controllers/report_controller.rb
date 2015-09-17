require 'chart_maker'

class ReportController < ApplicationController
  def index
  end

  def report
    @chart = ChartMaker.make_demo_chart

    # Return a PDF
    respond_to do |format|
      # Redirect html response to debug
      format.html do
        redirect_to report_preview_path + '.pdf?debug=1'
      end
      format.pdf do
        render pdf: 'pdf-file', #filename doesn't matter?
               layout: 'pdf.haml',
              #  javascript_delay: 60000,
               show_as_html: params[:debug]
      end
    end
  end

  def generate
    ReportMailer.report_email(params).deliver
    redirect_to root_path
  end
end
