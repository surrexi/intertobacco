class TobaccoCipherController < ApplicationController
  def check_cipher
    if TobaccoCipher.where(cipher: cipher_params[:cipher]).exists?
      flash[:notice] = 'Поздравляю у вас наш продукт!'
    else
      flash[:error] = "Похоже у вас не качественный товар!"
    end
    redirect_to root_path :action => 'check_cipher'
  end

  private

  def cipher_params
    params.require(:cipher).permit(:cipher)
  end
end
