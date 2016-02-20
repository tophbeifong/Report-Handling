class ReportHandler
  def initialize(report_name = "report.rpt")
    @report_name = report_name
  end

  public
  def build(report_headers, report_body, jsonify)
    return puts "Invalid use of \"jsonify\"." if !jsonify.is_a? (Hash)
    current_time = Time.now
    if jsonify[:jsonify] == false
      report_file = File.open(@report_name, "w") do |file_line|
        report_headers.each do |header_hash|
          header_hash.each do |k, v|
            file_line.puts "#{k}: #{v}\r\n"
          end
        end
        file_line.puts "Date/Time: #{current_time}"

        file_line.puts "\r\n\r\nReport Body:\r\n#{report_body}"
      end
    elsif jsonify[:jsonify] == true
      report_file = File.open(@report_name, "w") do |file_line|
        file_line.puts '[{'
        report_headers.each do |header_hash|
          header_hash.each do |k, v|
            file_line.puts "{\"#{k}\":\"#{v}\"},\r\n"
          end
        end
        file_line.puts "{\"Date_Time\":\"#{current_time}\"},"

        file_line.puts "{\"Report_Body\":\"#{report_body}\"}\r\n}]"

      end
    end
  end
end
