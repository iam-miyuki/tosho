echo "Install Symfony dependences..."

# Étape 5 : Installer les dépendances Symfony (sans les dev si en prod)
composer install --no-scripts --no-interaction --prefer-dist

# Build asserts
php bin/console importmap:install
php bin/console asset-map:compile

echo "Fin de l'install Symfony dependences."

echo "warn: .env need to be edited for prod"
cp .env.dev .env

echo "lancement serveur php"
exec php -S 0.0.0.0:8000 -t public

