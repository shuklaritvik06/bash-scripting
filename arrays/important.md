# Important

```markdown
- ${varname:-word} # if varname exists and isn't null, return its value; otherwise return word

- ${varname:=word} # if varname exists and isn't null, return its value; otherwise set it word and then return its value

- ${varname:+word} # if varname exists and isn't null, return word; otherwise return null

- ${varname:offset:length} # performs substring expansion. It returns the substring of $varname starting at offset and up to length characters
```
