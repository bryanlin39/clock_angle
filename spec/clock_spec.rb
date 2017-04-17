require('rspec')
require('clock')

describe('String#clock_angle') do
  it('returns the difference between the hour and minute angles') do
    expect('3:00'.clock_angle()).to(eq(90))
  end

  it('returns the smallest angle between the two hands') do
    expect('9:00'.clock_angle()).to(eq(90))
  end
end
