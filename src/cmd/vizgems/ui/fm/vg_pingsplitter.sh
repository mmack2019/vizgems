
function vg_pingsplitter {
    typeset rec ip name v

    if [[ $3 == '' ]] then
        print -u2 SWIFT ERROR missing mode
        return 1
    fi

    if [[ $4 == '' ]] then
        print -u2 SWIFT ERROR missing record
        return 1
    fi

    rec=$4
    set -- $4
    ip=$1
    shift
    name="$@"
    v="$rec|++|$ip|+|$name"

    print -r "<option value='${v//\'/%27}'>$rec"

    return 0
}
