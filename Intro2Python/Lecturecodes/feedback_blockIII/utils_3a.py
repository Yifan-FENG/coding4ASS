import string

def preprocess(text, 
               unwanted_chars={'.', ',', ':', ';', '"', "'", '\\', "?", "!", '(', ')'},
               verbose=0):
    """
    Split text at white spaces and remove puctuation. 
    Return list of tokens.
    """
    table = {}
    for unwanted_char in unwanted_chars:
        table[ord(unwanted_char)] = ''
    

    if verbose:
        print()
        print('characters to replace by empty space:')
        print(unwanted_chars)
    
    cleaned_text = text.translate(table)
    words = cleaned_text.split(' ')     
    return words


unwanted_punctuation = set(string.punctuation)
output = preprocess('this is a (tricky) test', 
                    unwanted_chars=unwanted_punctuation,
                    verbose=0)
print(output)
