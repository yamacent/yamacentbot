class TweetContent

  def self.buildTweet
    now = Time.now
    origin = Time.new(now.year, 4, 1)

    yday = now.yday
    day_from_origin = yday - origin.yday
    yday_percent = percent_of_day(yday)
    day_from_origin_percent = percent_of_day(day_from_origin)

    "#{now.month}月#{now.day}日は#{now.year}年の#{yday}日目(#{yday_percent}%)\n" +
    "4月1日から#{day_from_origin}日目(#{day_from_origin_percent}%)\n" +
    "今日もそれなりにがんばろう #{now.strftime('%H:%M:%S')}"
  end

  private

    def self.percent_of_day(day)
      ((day.to_f / 365) * 100).round
    end

end
