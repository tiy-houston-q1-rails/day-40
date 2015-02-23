class ReceiptMailer < ApplicationMailer

  def receipt(charge)
    @product = charge.product
    mail( to: "customer@example.com",
          from: "do-not-reply@macsnothacks.com",
          subject: "You've got macs!"
        )

  end
end
