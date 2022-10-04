import utils
import os


input_folder = '../Data/books'

paths = utils.get_paths(input_folder)

book2stats = {}

for path in paths:
    stats = utils.get_basic_stats(path)
    basename = os.path.basename(path)
    book = basename.strip('.txt')
    book2stats[book] = stats

keys = ['num_sents', 'num_tokens', 'vocab_size', 'num_chapters_or_acts']
stats2book_with_highest_value = {}

for key in keys:
    winner = None
    max_value = 0

    for book, stats in book2stats.items():

        if stats[key] > max_value:
            winner = book
            max_value = stats[key]

    stats2book_with_highest_value[key] = winner


for book, stats in book2stats.items():
    
    output_path = f'top_20_{book}.txt'
    
    with open(output_path, 'w') as outfile:
        for token in stats['top_20_tokens']:
            outfile.write(f'{token}\n')