# export TASTEBIN_URL=

tastebin_save() {
    local URL=${TASTEBIN_URL}/tastes/
    curl -sS -i -X POST ${URL} | sed "s|^Location: |Location: ${URL}|"
}

tastebin_save_as() {
    local URL=${TASTEBIN_URL}/tastes/${1}
    curl -sS -i -X PUT ${URL} && echo "Location: ${URL}"
}
