# Load color support
autoload -U colors && colors

# 1. Left Prompt (Top Line)
# %n = user, %B%m%b = BOLD host, %~ = directory
PROMPT='%F{green}%n@%B%m%b%f [%F{cyan}%~%f] $(git_prompt_info)
'

# 2. Left Prompt (Bottom Line)
# %B = start bold, %b = stop bold
# Logic: If error (?), show error code, then bold arrow. Else bold cyan arrow.
PROMPT+='%(?.%F{magenta}%B→%b.%F{red}%? %B→%b)%f '

# 3. Right Prompt (Timestamp)
RPROMPT='%F{242}%D{%H:%M:%S}%f'

# 4. Git Styling
ZSH_THEME_GIT_PROMPT_PREFIX="%F{white}(%F{208}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{white})%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow}* "
ZSH_THEME_GIT_PROMPT_CLEAN=""
