class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]


  has_many :posts
  has_many :diaries
  has_many :comments

  validates :email, uniqueness: {message: "이미 존재하는 이메일입니다."}, presence: {message: "이메일이 입력되지 않았습니다."}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :phone, presence: {message: "전화번호가 입력되지 않았습니다."}, uniqueness: {message: "이미 존재하는 전화번호 입니다."},
            length: {is: 11,too_short: '전화번호가 잘못 입력되었습니다.(숫자만입력해주세요)',too_long: '전화번호가 잘못 입력되었습니다.(숫자만입력해주세요)'}
  validates :name, presence: { message: "이름을 입력해주세요." }
  validates :nickname, presence: { message: "별명을 입력해주세요." }, uniqueness: {message: "이미 존재하는 닉네임 입니다."}
  validates :birth,  presence: { message: "생년월일을 선택해주세요." }, length: {is: 8,too_short: '생년월일이 잘못 입력되었습니다.(ex)19950902',
            too_long: '생년월일이 잘못 입력되었습니다.(ex)19950902'}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
