#
# Merge upstream repository
#
.PHONY: merge-upstream
merge-upstream: ## Merge upstream repository
	git fetch upstream
	git checkout remotes/upstream/main
	git checkout -b chore-merge-upstream
	git rebase main
	git push origin chore-merge-upstream
