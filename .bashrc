alias ls='ls -G'
alias hub='hub browse'
alias rspec-d='docker-compose exec -e RAILS_ENV=test app bundle exec rspec'
alias dcud='docker-compose up -d'
alias dcd='docker-compose down'

# GCP環境変更
alias changestg='gcloud container clusters get-credentials tokyo-b --zone asia-northeast1-c --project wed-staging'
alias changeprd='gcloud container clusters get-credentials tokyo-b --region asia-northeast1 --project wed-production'
# 今の環境
alias gcpcurrent='kubectl config current-context'

# pod一覧
alias get-pod-prd='kubectl -n bellroy-production get pod'
alias get-pod-stg='kubectl -n bellroy-staging get pod'

# 入るコマンド
# kubectl -n bellroy-staging exec -it po/{pod_id} sh -c bellroy-app
