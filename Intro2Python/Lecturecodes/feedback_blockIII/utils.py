from nltk.tokenize import sent_tokenize, word_tokenize
from glob import glob
import operator


def get_paths(input_folder):
    """
    retrieve all paths of txt files in input_folder

    :param str input_folder: folder with txt files

    :rtype: list
    :return: list of strings
    """
    paths = []
    for txt_path in glob(f'{input_folder}/*txt'):
        paths.append(txt_path)
    return paths


def get_basic_stats(txt_path):
    """
    Compute three statistics:
        * The number of sentences
        * The number of tokens
        * The size of the vocabulary used (i.e. unique tokens)

    :param str txt_path: path to txt file with plain text

    :rtype: dict
    :return: dict with three keys: num_sents, num_tokens, vocab_size
    """
    with open(txt_path) as infile:
        text = infile.read()

    if txt_path.endswith('AnnaKarenina.txt'):
        num_chapter_or_acts = text.count('Chapter')
    elif txt_path.endswith('HuckFinn.txt'):
        num_chapter_or_acts = text.count('CHAPTER')
    elif txt_path.endswith('Macbeth.txt'):
        num_chapter_or_acts = text.count('ACT')
    else:
        raise Exception(f'{txt_path} not part of accepted txt files')

    stats = {
        'num_sents' : 0,
        'num_tokens' : 0,
        'vocab_size' : 0,
        'num_chapters_or_acts' : num_chapter_or_acts,
    }

    vocab = set()
    token2freq = {}

    for sent in sent_tokenize(text):
        stats['num_sents'] += 1
        tokens = word_tokenize(sent)
        for token in tokens:
            vocab.add(token)
            stats['num_tokens'] += 1

            if token not in token2freq:
                token2freq[token] = 0
            token2freq[token] += 1

    stats['vocab_size'] = len(vocab)

    top_20_tokens = []
    index = 0
    for token, freq in sorted(token2freq.items(),
                              key=operator.itemgetter(1),
                              reverse=True):
        if index == 20:
            break
        top_20_tokens.append(token)

        index += 1

    assert len(top_20_tokens) == 20
    stats['top_20_tokens'] = top_20_tokens

    return stats
