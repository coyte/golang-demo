# Accelerator Log

## Options
```json
{
  "deploymentType" : "workload",
  "gitbranch" : "main",
  "giturl" : "https://github.com/TanzuDK/golang-demo.git",
  "minscale" : "1",
  "projectName" : "golang-demo"
}
```
## Log
```
┏ engine (Chain)
┃  Info Running Chain(GeneratorValidationTransform, UniquePath)
┃ ┏ ┏ engine.transformations[0].validated (Combo)
┃ ┃ ┃  Info Combo running as Chain(Merge(merge), UniquePath(UseLast))
┃ ┃ ┃ engine.transformations[0].validated.merge (Chain)
┃ ┃ ┃  Info Running Chain(Merge, UniquePath)
┃ ┃ ┃ ┏ engine.transformations[0].validated.merge.transformations[0] (Merge)
┃ ┃ ┃ ┃  Info Running Merge(YTT, Combo)
┃ ┃ ┃ ┃ ┏ engine.transformations[0].validated.merge.transformations[0].sources[0] (YTT)
┃ ┃ ┃ ┃ ┃ Debug Wrote values file with json content:   {"deploymentType":"workload","gitbranch":"main","artifactVersion":"0.0.1-beta","artifactId":"golang-demo","giturl":"https://github.com/TanzuDK/golang-demo.git","projectName":"golang-demo","minscale":"1"}
┃ ┃ ┃ ┃ ┗  Info Shelling out to YTT with args: [ytt, -f, /tmp/ytt-input16965387500088171033, --data-values-file, /tmp/accelerator-options15115907223860257483.json, --output-files, /tmp/ytt-output4678764651172411094]
┃ ┃ ┃ ┃ ┏ engine.transformations[0].validated.merge.transformations[0].sources[1] (Combo)
┃ ┃ ┃ ┃ ┃  Info Combo running as Include
┃ ┃ ┃ ┃ ┃ engine.transformations[0].validated.merge.transformations[0].sources[1].include (Include)
┃ ┃ ┃ ┃ ┃  Info Will include [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile]
┃ ┃ ┃ ┃ ┃ Debug .github/workflows/techdocs.yml matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug .gitignore didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug Dockerfile matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug Procfile didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug README.md matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug app/html/index.html matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug app/html/style.css matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug app/html/tap-into-prod.png matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug app/main.go matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug catalog/catalog-info.yaml didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug config/workload.yaml didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug docs/index.md matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug docs/links.md matched [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> included
┃ ┃ ┃ ┃ ┃ Debug images/golang.png didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug k8s-resource.yaml didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┃ ┃ Debug mkdocs.yml didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┗ ┗ Debug values.yml didn't match [**/*.md, app/**, docs/**, procfile, .github/workflows/*, Dockerfile] -> excluded
┃ ┃ ┃ ┏ engine.transformations[0].validated.merge.transformations[1] (UniquePath)
┃ ┗ ┗ ┗ Debug Multiple representations for path '.github/workflows/techdocs.yml', will use the one appearing last 
┗ ╺ engine.transformations[1] (UniquePath)
```
