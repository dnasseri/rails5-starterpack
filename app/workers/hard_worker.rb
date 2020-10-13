class HardWorker
  include Sidekiq::Worker

  def perform(name)
    puts("Working hard #{name}? Or hardly working?")
  end
end
