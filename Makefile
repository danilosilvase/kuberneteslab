getAll:
	kubectl get nodes
	@echo "\n"
	kubectl get deployments
	@echo "\n"
	kubectl get pods -o wide
	@echo "\n"
	kubectl get services -o wide
	@echo "\n"
	kubectl get hpa

getPublicIP:

getClusterInfo:

deploy:
	kubectl run ${APP}

scale:
	kubectl scale --replicas=10 deplyments ${APP}

autoscale:
	kubectl autoscale deployment
	kubectl autoscale deployment --autoscale

cleanup:
	kubectl delete deployment
	kubectl delete service
	kubectl delete -f .

rollout:
	kubectl set image deployment/${APP} ${APP}=novaimagem:v2
	
rollback:
	kubectl set image deployment/${APP} ${APP}=novaimagem:v1

status:
	kubectl rollout status deployment/${APP}



