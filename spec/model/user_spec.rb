require 'rails_helper'

RSpec.describe User, type: :model do
    context "Validar nome do usuario" do
        it 'ele seja valido' do
            user = User.new(name: 'Atos', email: 'atosborges00@gmail.com', password: '123456')
            expect(user).to be_valid
        end

        it 'ele não seja valido' do
            user = User.new(email: 'atosborges00@gmail.com', password: '123456')
            expect(user).to_not be_valid
        end

        it 'e retorna não pode ser em branco' do
            user = User.new(name: nil)
            user.valid?
            expect(user.errors[:name]).to include("can't be blank")
        end
    end

    context "Validar email do usuario" do
        it 'ele seja valido' do
            user = User.new(name: 'Atos', email: 'atosborges00@gmail.com', password: '123456')
            expect(user).to be_valid
        end

        it 'ele não seja valido' do
            user = User.new(name: 'Atos', password: '123456')
            expect(user).to_not be_valid
        end

        it 'e retorna não pode ser em branco' do
            user = User.new(email: nil)
            user.valid?
            expect(user.errors[:email]).to include("can't be blank")
        end
    end
end

