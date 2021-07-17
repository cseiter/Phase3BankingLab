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

  def execute_transaction
    #accounts valid and sender > amount
    if valid? && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      status = "rejected"
    end

  end

end
