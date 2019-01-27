
class AwsProfileGpg < Formula
  include Language::Python::Virtualenv

  desc "Run aws-cli commands using IAM Access Keys stored in a GPG encrypted credentials file"
  homepage "https://github.com/firstlookmedia/aws-profile-gpg"

  version "0.0.2"

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
    url "https://files.pythonhosted.org/packages/8e/b3/b9f7ffa347057fa44c65197864eec6a8a53f5a24f613b1b7b3f2b755cc65/botocore-1.12.86.tar.gz"
    sha256 "24444e7580f0114c3e9fff5d2032c6f0cfbf88691b1be3ba27c6922507a902ec"
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
    url "https://files.pythonhosted.org/packages/0e/01/68747933e8d12263d41ce08119620d9a7e5eb72c876a3442257f74490da0/python-dateutil-2.7.5.tar.gz"
    sha256 "88f9287c0174266bb0d8cedd395cfba9c58e87e5ad86b2ce58859bc11be3cf02"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b1/53/37d82ab391393565f2f831b8eedbffd57db5a718216f82f1a8b4d381a1c1/urllib3-1.24.1.tar.gz"
    sha256 "de9529817c93f27c8ccbfead6985011db27bd0ddfcdb2d86f3f663385c6a9c22"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "true"
  end

end
