# XML Ontology

Part of [OpenFASTER](https://openfaster.org), alongside
[`institutional-ontology`](https://github.com/OpenFASTER-Standard/institutional-ontology),
[`xsd-ontology`](https://github.com/OpenFASTER-Standard/xsd-ontology),
[`spreadsheet-ontology`](https://github.com/OpenFASTER-Standard/spreadsheet-ontology),
and [`realizations`](https://github.com/OpenFASTER-Standard/realizations).

An OWL vocabulary for a concrete XML document instance's actual structure
— real elements in real document order, real attributes, real text
content — as opposed to `xsd-ontology`'s grammar of what's *allowed*.
Mirrors `spreadsheet-ontology`'s role: that repo describes a real
spreadsheet's actual cells, this one describes a real document's actual
elements.

**Novel territory.** Research (2026-09-01, see `bulk-platform`'s
`docs/superpowers/specs/2026-09-01-xml-ontology-and-abox-design.md`)
found no confirmed existing OWL/RDF formalization of the XML
Infoset/DOM to adopt instead — but also didn't confirm none exists. Built
without that confirmation either way.

Licensed [CC BY 4.0](LICENSE).

## Files

- `src/ontology/xml-ontology-edit.ofn` — the hand-authored source (OWL
  Functional Syntax, diff-friendly, never machine round-tripped).
- `scripts/build.sh` — `robot report`/`robot reason` QC, then copies the
  release artifact to `./xml-ontology.owl` at the repo root.

## Building

```
export ROBOT_CMD="java -jar /path/to/robot.jar"   # or just `robot` if on PATH
./scripts/build.sh
```
