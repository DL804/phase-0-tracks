require_relative 'solo'


describe Word do
  let(:player) { Word.new ("word")}


 # it "input letter and output spaces and letter" do
 # 	player.check_user2input("o")
 #   expect(player.printstatus).to eq ["_w"]
 # end
  it "stores the user1input" do
    expect(player.player1input).to eq "word"
  end



end
