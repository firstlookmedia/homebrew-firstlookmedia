
class AwsProfileGpg < Formula
  include Language::Python::Virtualenv

  desc "Run aws-cli commands using IAM Access Keys stored in a GPG encrypted credentials file"
  homepage "https://github.com/firstlookmedia/aws-profile-gpg"

  version "0.0.1"

  url "https://github.com/firstlookmedia/aws-profile-gpg/archive/0.0.1.tar.gz"
  sha256 "53245938042e5fc171f9a0a7a4121b2439a8553d4d6f38e44714cb7d0ff8f08e"

  head "https://github.com/firstlookmedia/aws-profile-gpg.git"

  depends_on "python@2"
  depends_on "gpgme"

  resource "pygpgme" do
    url "https://files.pythonhosted.org/packages/dc/96/b2bcbd3a216af313bb9045c2e573aa18653876a65db471b86be7598234dd/pygpgme-0.3.tar.gz"
    sha256 "5fd887c407015296a8fd3f4b867fe0fcca3179de97ccde90449853a3dfb802e1"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/f6/6f/8df979ecb0aeaf82a62dc561c243405bf4f5264833a2c5463576172df596/botocore-1.12.23.tar.gz"
    sha256 "e19d83d787575644e5c52654a979b931f198394ad1b27412b7d37ce6cbbc3c6e"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
    sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/a0/b0/a4e3241d2dee665fea11baec21389aec6886655cd4db7647ddf96c3fad15/python-dateutil-2.7.3.tar.gz"
    sha256 "e27001de32f627c22380a688bcc43ce83504a7bc5da472209b4c70f02829f0b8"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/3c/d2/dc5471622bd200db1cd9319e02e71bc655e9ea27b8e0ce65fc69de0dac15/urllib3-1.23.tar.gz"
    sha256 "a68ac5e15e76e7e5dd2b8f94007233e01effe3e50e8daddf69acfd81cb686baf"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "true"
  end

end
