json.extract! job, :id, :title, :content, :pay, :contact_name, :mobile, :wechat, :job_suburb, :user_id, :expiration_date, :created_at, :updated_at
json.url job_url(job, format: :json)
