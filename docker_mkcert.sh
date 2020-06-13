docker run -v $PWD/certificate_storage:/mkcert_data registry.gitlab.com/vizsana/vizviewer_notebook "/mkcert_data/make_certificates.sh"

echo "Adding CA root certificates to system security storage... (root password required)"
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $PWD/certificate_storage/rootCA.pem