class ReportMailer < ActionMailer::Base
  default from: "iamkcerb@gmail.com"

  def report_email(params)
    @chart = ChartMaker.make_demo_chart

    pdf_string = render_to_string pdf: 'test_report',
                                  template: 'report/report.pdf.haml',
                                  layout: 'pdf.haml'

    pdf = WickedPdf.new.pdf_from_string(pdf_string)

    attachments['test_report.pdf'] = pdf

    mail to: params['email'], subject: 'Smoke Test'
  end
end
