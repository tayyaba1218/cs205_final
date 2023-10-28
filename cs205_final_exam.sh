#!/bin/sh

file_name=$1

total_pokemon=$(awk 'NR>1 {count++} END {print count}' $file_name)

avg_hp=$(awk -F'\t' 'NR>1 {sum+=$6} END {print sum/(NR-1)}' $file_name)

avg_attack=$(awk -F'\t' 'NR>1 {sum+=$7} END {print sum/(NR-1)}' $file_name)


echo "===== SUMMARY OF DATA FILE ====="
echo "    File name: $file_name"
echo "    Total Pokemon: $total_pokemon"
echo "    Avg. HP: $avg_hp"
echo "    Avg. Attack: $avg_attack"
echo "===== END SUMMARY ====="

