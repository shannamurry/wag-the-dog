require "rails_helper"

RSpec.describe Walker, type: :model do
  subject { Walker.new(first_name: "Jack", last_name: "Smith", phone: "8889995678", email: "jsmith@sample.com", city: "Pennbrook", details: "Lorem ipsum...", user: FactoryBot.create(:user), area: FactoryBot.create(:area)) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a phone number" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the phone number is not 10 chars" do
    subject.phone = "123123123"
    expect(subject).to_not be_valid
  end

  it "is not valid if the phone number is not all digits" do
    subject.phone = "123123aaa"
    expect(subject).to_not be_valid
  end

  it "is not valid if the email address doesn't have a @" do
    subject.email = "nihilisticharegmail.com"
    expect(subject).to_not be_valid
  end
end
