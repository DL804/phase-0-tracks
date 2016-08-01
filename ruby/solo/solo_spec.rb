require_relative 'solo'


describe Word do
  let(:player) { Word.new (["wo"])}


  it "input letter and output spaces and letter" do
  	player.check_user2input("o")
    expect(player.printstatus).to eq ["_w"]
  end

end
