querydata=(
    args=(
        dtools='inv alarm'
        vtools='alarmtab'
    )
    dt_inv=(
        poutlevel=o
        runinparallel=y
    )
    dt_alarm=(
        inlevels=o
        reruninv=n
    )
    vt_alarmtab=(
        pnodeattr=(
            label='%(c.name)%'
        )
        pnodenextqid='nextqid/_str_detailed'
    )
)
