docker run -v $PWD/mkcert_data:/mkcert_data vizviewer/vizviewer_notebook "/mkcert_data/make_certificates.sh"

echo "Adding CA root certificates to system security storage... (root password required)"
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain $PWD/mkcert_data/rootCA.pem