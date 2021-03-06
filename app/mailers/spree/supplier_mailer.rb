module Spree
  class SupplierMailer < Spree::BaseMailer

    default from: Spree::Store.default.mail_from_address

    def welcome(supplier_id)
      @supplier = Supplier.find supplier_id
      mail to: @supplier.user.email, subject: Spree.t('supplier_mailer.welcome.subject')
    end

  end
end
