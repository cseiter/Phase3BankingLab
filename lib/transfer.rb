class Transfer
  # your code here

  attr_reader :sender, :receiver
  attr_accessor :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    #sender.bank_account.valid? && receiver.bank_account.valid?
    sender.valid? && receiver.valid?
  end

end
