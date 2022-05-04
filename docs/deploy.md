デプロイ手順

## staging
- プロジェクトディレクトリに移動
- `git pull`で最新の状態を取得
- 環境変数ファイル`.env.staging`の値を確認
- スキーマに変更がある場合は`RAILS_ENV=staging bin/rails db:migrate`でマイグレーションを実行
- `RAILS_ENV=staging bin/rails assets:precompile`でアセットのコンパイル
- `systemctl restart puma-stg.service`でデーモンを再起動

## production
- 環境変数ファイル`.env.production`の値を確認
- スキーマに変更がある場合は`RAILS_ENV=production bin/rails db:migrate`でマイグレーションを実行
- `systemctl restart puma-prod.service`でデーモンを再起動
