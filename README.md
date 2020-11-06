# PARALLEL17

Parallel corpus (diplomatic vs normalised) of 17th c. French texts

## Corpus

The corpus is available in two different formats:
1. TSV ([corpus_tsv folder](https://github.com/e-ditiones/PARALLEL17/tree/master/corpus_tsv))
2. XML-TMX ([corpus_tmx folder](https://github.com/e-ditiones/PARALLEL17/tree/master/corpus_tmx))

<b>WARNING Part of the TSV files have been corrected and not the XML-TMX files.</b>

A detailed list of the corpus is available [here](https://github.com/e-ditiones/PARALLEL17/blob/master/TableOfContent.tsv).

## Transcriptions
Transcripts are almost diplomatic. Long *ſ* is maintained ( *plaiſir* and not *plaisir*).
Ligatures which have disappeared ( *ſt*, *st*, *ct*) are not kept, but not those that are maintained in contemporary French (*œ*, *æ*).

## Use the normaliser
To use the tool, you need to:
1. Download and install NMTPYTORCH ([you can find some help here](https://github.com/lium-lst/nmtpytorch/wiki/Installation)).
2. Download the ```NORM17``` folder from this repository
3. Prepare the text running ```./prepare_data.bash <NAME_OF_FILE>```
4. Normalise the text running ```./translate_file.bash <NAME_OF_FILE.tok>```

## Contribute
If you want to contribute, you can do so by cloning the repository and sending us a pull request, or by sending an email at simon.gabay[at]unige.ch.

## Acknowledgments
Additional data and corrections have been provided by Philippe Gambette ([GitHub](https://github.com/PhilippeGambette)) and his colleagues from Gustave Eiffel university.

## Cite this repository
Please use one of the following publications, preferably the latest.

```bibtex
@inproceedings{gabay:hal-02276150,
  TITLE = {{A Workflow For On The Fly Normalisation Of 17th c. French}},
  AUTHOR = {Gabay, Simon and Riguet, Marine and Barrault, Lo{\"i}c},
  URL = {https://hal.archives-ouvertes.fr/hal-02276150},
  BOOKTITLE = {{DH2019}},
  ADDRESS = {Utrecht, Netherlands},
  ORGANIZATION = {{ADHO}},
  YEAR = {2019},
  MONTH = Jul,
  KEYWORDS = {17th Century France ; Parallel corpus building},
  PDF = {https://hal.archives-ouvertes.fr/hal-02276150/file/DH2019_final.pdf},
  HAL_ID = {hal-02276150},
  HAL_VERSION = {v1},
}
```

```bibtex
@inproceedings{gabay:hal-02596669,
  TITLE = {{Traduction automatique pour la normalisation du fran{\c c}ais du XVII e si{\`e}cle}},
  AUTHOR = {Gabay, Simon and Barrault, Lo{\"i}c},
  URL = {https://hal.archives-ouvertes.fr/hal-02596669},
  BOOKTITLE = {{TALN 2020}},
  ADDRESS = {Nancy, France},
  ORGANIZATION = {{ATALA}},
  SERIES = {27{\`e}me Conf{\'e}rence sur le Traitement Automatique des Langues Naturelles},
  YEAR = {2020},
  MONTH = Jun,
  KEYWORDS = {Normalisation ; 17th c French ; Neural Machine Translation (NMT) ; Statistical Machine Translation (SMT) ; Digital humanities ; Humanit{\'e}s num{\'e}riques ; Fran{\c c}ais classique ; Traduction automatique neuronale ; Traduction automatique statistique},
  PDF = {https://hal.archives-ouvertes.fr/hal-02596669/file/main.pdf},
  HAL_ID = {hal-02596669},
  HAL_VERSION = {v1},
}
```

Please keep me posted if you use this data! simon.gabay[at]unige.ch

## Contact
simon.gabay[at]unige.ch

## Licence
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licence Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International Licence</a>.
