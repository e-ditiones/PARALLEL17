# PARALLEL17

Parallel corpus (diplomatic vs normalised) of 17th c. French texts

## Corpus

The corpus is available in two different formats:
1. TSV ([corpus_tsv folder](https://github.com/e-ditiones/PARALLEL17/tree/master/corpus_tsv))
2. XML-TMX ([corpus_tmx folder](https://github.com/e-ditiones/PARALLEL17/tree/master/corpus_tmx))

<span style="color:red;"><b>WARNING</b> Part of the TSV files have been corrected and not the XML-TMX files.</span>

A detailed list of the corpus is available [here](https://github.com/e-ditiones/PARALLEL17/blob/master/TableOfContent.tsv).

## Transcriptions
Transcripts are almost diplomatic. Long *ſ* is maintained ( *plaiſir* and not *plaisir*).
Ligatures which have disappeared ( *ſt*, *st*, *ct*) are not kept, but not those that are maintained in contemporary French (*œ*, *æ*).

## Licence
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licence Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International Licence</a>.

## Use the normaliser
To use the tool, you need to:
1. Download and install NMTPYTORCH ([you can find some help here](https://github.com/lium-lst/nmtpytorch/wiki/Installation)).
2. Download the ```NORM17``` folder from this repository
3. Prepare the text running ```./prepare_data.bash <NAME_OF_FILE>```
4. Normalise the text running ```./translate_file.bash <NAME_OF_FILE.tok>```

## Contribute
If you want to contribute, you can do so by cloning the repository and sending us a pull request, or by sending an email at simon.gabay[at]unine.ch.

## Cite this repository
Simon Gabay (éd.), _PARALLEL17: a parallel corpus (diplomatic vs normalised) of 17th c. French texts_, Neuchâtel: Université de Neuchâtel, 2019, [https://github.com/e-ditiones/PARALLEL17](https://github.com/e-ditiones/PARALLEL17).

Please keep me posted if you use this data! simon.gabay[at]unine.ch

## Contact
simon.gabay[at]unine.ch
