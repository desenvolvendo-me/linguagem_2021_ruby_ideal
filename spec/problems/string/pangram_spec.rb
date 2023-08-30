# frozen_string_literal: true

RSpec.describe Problems::String::Pangram do
  describe "#run" do
    let(:pangram) { described_class.new }
    subject { pangram.run(input) }

    context "when input is a complete pangram" do
      let(:input) { "The quick brown fox jumps over the lazy dog" }
      it "returns an empty string" do
        expect(subject).to eq("")
      end
    end

    context "when input is missing some characters" do
      let(:input) { "Hello World" }
      it "identifies the missing characters" do
        expect(subject).to eq("abcfgijkmnpqstuvxyz")
      end
    end

    context "when input contains only uppercase characters" do
      let(:input) { "HELLO WORLD" }
      it "treats uppercase and lowercase characters equally" do
        expect(subject).to eq("abcfgijkmnpqstuvxyz")
      end
    end

    context "when input is an empty string" do
      let(:input) { "" }
      it "returns all alphabets" do
        expect(subject).to eq("abcdefghijklmnopqrstuvwxyz")
      end
    end

    context "when input is a full alphabet" do
      let(:input) { "abcdefghijklmnopqrstuvwxyz" }
      it "returns an empty string" do
        expect(subject).to eq("")
      end
    end
  end
end

