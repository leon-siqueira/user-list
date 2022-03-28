module IndexHelper
  # alternates the color of the row
  def alternate_color(count)
    count.odd? ? 'bg-light' : 'bg-grey'
  end
end
