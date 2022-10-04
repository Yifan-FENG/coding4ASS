import utils_3a


def count(text):
    """
    Count words in a text exlcuding punctuation marks.
    """ 
    word_list = utils_3a.preprocess(text)
    
    word_counts = dict()
    
    for word in word_list:
        if word not in word_counts:
            word_counts[word] = 0
        word_counts[word] += 1
        
    return word_counts

output = count('I am using this as a (test) string for my function to make sure the function works.')
print(output)