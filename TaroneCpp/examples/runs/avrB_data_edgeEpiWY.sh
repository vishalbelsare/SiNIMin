# @Author: guanja
# @Date:   2019-08-06 20:49:46
# @Last Modified by:   guanja
# @Last Modified time: 2019-08-12 10:50:25


ROOT="/home/guanja/projects/cpkgs/TaroneCpp/TaroneCpp"

EXEC="${ROOT}/compiled/edge_epistasis"

DAT_FN="${ROOT}/examples/data_athal/avrB_X.txt"
COV_FN="${ROOT}/examples/data_athal/avrB_covar_n2.txt"
EDG_FN="${ROOT}/examples/data_athal/AI_interactions_edges_sym.txt"
LAB_FN="${ROOT}/examples/data_athal/avrB_Y.txt"
MAP_FN="${ROOT}/examples/data_athal/avrB_snp_map.txt"
SNP_FN="${ROOT}/examples/data_athal/avrB_snpID.txt"

N_THREADS=5

timestamp=$(date +%s)

OUT_PR="${ROOT}/examples/output_athal/edgeEpiWY" 
mkdir -p "${OUT_PR}"
OUT_PR+="/edgeEpiWY_avrB_${timestamp}"



"${EXEC}" \
  -i "${DAT_FN}" \
  -l "${LAB_FN}" \
  -c "${COV_FN}" \
  -m "${MAP_FN}" \
  -e "${EDG_FN}" \
  -s "${SNP_FN}" \
  -f 0.05 \
  -d 1 \
  -p 1000 \
  -n "${N_THREADS}" \
  -o "${OUT_PR}" \