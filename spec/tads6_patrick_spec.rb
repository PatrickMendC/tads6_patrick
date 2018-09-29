RSpec.describe Tads6Patrick do
  it "has a version number" do
    expect(Tads6Patrick::VERSION).not_to be nil
  end

  it "Deveria mostrar as palavras Hello World" do
    x = Tads6Patrick::HelloWorld.new
    expect(x.say).to eq("Hello World")  # expect = espero que isso ...
  end
end
