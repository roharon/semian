# frozen_string_literal: true

module BackgroundHelper
  attr_writer :threads

  def teardown
    threads.each(&:kill)
    self.threads = []
  end

  private

  def background(&block)
    thread = Thread.new(&block)
    thread.report_on_exception = false
    threads << thread
    thread.join(0.1)
    thread
  end

  def threads
    @threads ||= []
  end

  def yield_to_background
    threads.each(&:join)
  end
end
