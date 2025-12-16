echo "Arrêt des conteneurs..."

docker stop nginx1 2>/dev/null
docker stop nginx2 2>/dev/null
docker stop nginx-lb 2>/dev/null

echo "Suppression du réseau Docker..."

docker network rm tplb 2>/dev/null

echo "Nettoyage terminé."
