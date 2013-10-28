module Authentication
  module ActiveRecordHelpers

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def find_for_oauth(auth)
        record = where(provider: auth.provider, uid: auth.uid.to_s).first
        record || create(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: Devise.friendly_token[0,20], name: auth.info.name, github_username: auth.info.nickname, github_access_token: auth.credentials.token)
      end
    end
  end
end
