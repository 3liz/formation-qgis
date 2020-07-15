github-pages:
	@rm -rf docs/
	@mkdir docs/
	@cp -R media/ docs/media/
	@cp logo.png docs/
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown index.md docs/index.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown 01_interface.md docs/01_interface.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown 02_ajout_couches.md docs/02_ajout_couches.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown 03_expressions.md docs/03_expressions.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown 04_jointure_attributaire.md docs/04_jointure_attributaire.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown autres.md docs/autres.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown extensions.md docs/extensions.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown etiquettes.md docs/etiquettes.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown formulaire.md docs/formulaire.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown mise_en_page.md docs/mise_en_page.html
	@docker run --rm -w /plugin -v $(shell pwd):/plugin etrimaille/pymarkdown symbologie_vecteur.md docs/symbologie_vecteur.html

