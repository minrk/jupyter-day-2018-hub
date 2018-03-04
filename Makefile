upgrade:
	helm upgrade --install jupyterhub \
	    jupyterhub/jupyterhub \
	    --version=v0.6 \
	    --namespace=default \
	    -f config.yml \
	    -f secret.yml

dind:
	kubectl apply -f dind.yml

.PHONY: dind upgrade
