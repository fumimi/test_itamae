# test_recipe.rb

# package はパッケージをインストールするResource
# nginxのリポジトリをダウンロードする
package 'http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm' do
  not_if 'rpm -q nginx-release-centos-6-0.el6.ngx.noarch'
end

# nignx をインストールするResource
package 'nginx' do
  action :install
end

# nginx を起動
service 'nginx' do
  # action [:enable, :start]
  action :start
end

# execute はシェルコマンドを実行
execute "echo HelloWorld!" do
  command "echo HelloWorld"
end
