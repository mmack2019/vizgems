
function vg_ospfmonchecker {
    typeset rest ip
    integer errn=0 warnn=0

    if [[ $3 == \#* ]] then
        print -r -- "rec=${3//'|'+'|'/'|'}"
        print WARNING entry is commented out
        print "errors=0\nwarnings=1"
        return 0
    fi

    rest=$3
    ip=${rest%%\|+\|*}

    if [[ $ip != ?(#)+([0-9]).+([0-9]).+([0-9]).+([0-9]) ]] then
        print ERROR ip address syntax error: $ip
        print "errors=1\nwarnings=0"
        return 1
    fi

    print -r -- "rec=$ip"
    print "errors=$errn\nwarnings=$warnn"

    return 0
}
