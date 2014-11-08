#! /bin/sh
# @(#) blife.sh ver.1.0  2014.11.3  (c)Takeru.
#
# Usage:
#      blife.sh
#
# Description:
#      This script tells you this MacBook's battery status. 
#
#      Copyright (c) 2014 Takeru.
#      Released under the MIT license
#      http://opensource.org/licenses/MIT
#
#############################################################
ioreg -l                                                    |
grep '\(product-name\)\|\(Capacity\)\|\(CycleCount\)'       |
awk '{
    if($(NF-2)=="\"product-name\"")model=$NF;
    else if($(NF-2)=="\"MaxCapacity\"")curCap=$NF;
    else if($(NF-2)=="\"CurrentCapacity\"")Cap=$NF;
    else if($(NF-2)=="\"CycleCount\"")curCC=$NF;
    else if($(NF-2)=="\"DesignCapacity\"")maxCap=$NF;
    else if($(NF-2)~"\"DesignCycleCount")maxCC=$NF}         # ウチのMBP,Early2011ではDesignCycleCount9Cという名前だったので、ここだけ部分一致比較にしておく。
END{
    if(model!~"MacBook")print "Effective only on the MacBook.\n";
    else{
        if(curCap!=0)SOC=100*Cap/curCap;                    # 除算エラー避け
        if(maxCap!=0)SOH=100*curCap/maxCap;                 # 除算エラー避け
        printf("Your MacBook\047s Battery status is\n"      \
            "Charge Remaining\t%d\(mAh\)\n"                 \
            "State of Charge\t\t%d%%\n"                     \
            "Cycle Count\t\t%d\n"                           \
            "Cycle Count Remaining\t%d\n"                   \
            "Full Charge Capacity\t%d\(\mAh\)\n"            \
            "State of Health\t\t%3.1f%%\n\n",
            Cap,SOC,curCC,maxCC-curCC,curCap,SOH)}
    }'                                                      |
grep -v -                                                   # 負の値が出たら異常値として表示しない。
