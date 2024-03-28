#!/usr/bin/env bash

proj_dpath="/home/souto/Repos/pisa_2025ft_translation_en-PH_adaptation"
echo "starting point:"
tree $proj_dpath/tm
grep 'source/' $proj_dpath/omegat.project
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/01_COS_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/01_COS_SCI-A_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/02_COS_SCI-B_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/02_COS_SCI-B_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/03_COS_SCI-C_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/03_COS_SCI-C_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/04_QQS_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/04_QQS_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/04_QQS_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/05_QQA_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/05_QQA_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/05_QQA_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/06_COS_LDW_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/06_COS_LDW_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/06_COS_LDW_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/07_COS_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/07_COS_XYZ_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/08_CGA_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/08_CGA_SCI_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/11_COS_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/11_COS_MAT-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/12_COS_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/12_COS_MAT-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/13_COS_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/13_COS_REA-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/14_COS_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/14_COS_REA-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/15_COS_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/15_COS_SCI-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/16_COS_SCI-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/16_COS_SCI-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/17_CGA_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/17_CGA_SCI_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/18_CGA_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/18_CGA_MAT_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/19_CGA_REA_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/19_CGA_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/19_CGA_REA_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/21_COSP_REA-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/21_COSP_REA-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/22_COSP_REA-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/22_COSP_REA-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/23_COSP_MAT-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/23_COSP_MAT-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/24_COSP_MAT-B_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/24_COSP_MAT-B_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/25_COSP_SCI-A_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/25_COSP_SCI-A_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/26_COSP_SCI-A_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/26_COSP_SCI-A_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/27_QQSP_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/27_QQSP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/27_QQSP_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/28_QQAP_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/28_QQAP_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/28_QQAP_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/29_COSP_XYZ_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/29_COSP_XYZ_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/30_CGAP_MAT_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/30_CGAP_MAT_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/31_CGAP_REA_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/31_CGAP_REA_T/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/33_CGAP_SCI_N/32_CGAP_SCI_T/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '---'
perl -i -pe 's/32_CGAP_SCI_T/33_CGAP_SCI_N/g' $proj_dpath/omegat.project && grep 'source/' $proj_dpath/omegat.project
python code/arrange_tmx_files_with_extension.py $proj_dpath && find $proj_dpath/tm -name '*.tmx.zip'
echo '======'
