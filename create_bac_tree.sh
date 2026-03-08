#!/usr/bin/env bash

set -e

ROOT="bac-tunisie"
EXAMS=("trimestre-1" "trimestre-2" "trimestre-3" "principal" "controle")
LEAFS=("sujet" "correction")

create_subject_tree() {
  local section="$1"
  shift
  local subjects=("$@")

  for subject in "${subjects[@]}"; do
    for exam in "${EXAMS[@]}"; do
      for leaf in "${LEAFS[@]}"; do
        mkdir -p "$ROOT/$section/$subject/$exam/$leaf"
        touch "$ROOT/$section/$subject/$exam/$leaf/.gitkeep"
      done
    done
  done
}

mkdir -p "$ROOT"

# Section Informatique
create_subject_tree "informatique" \
  "algorithmique-programmation" \
  "sti" \
  "mathematiques" \
  "physique" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts" \
  "option-economie"

# Section Mathématiques
create_subject_tree "mathematiques" \
  "mathematiques" \
  "physique" \
  "sciences-naturelles" \
  "informatique" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

# Section Sciences expérimentales
create_subject_tree "sciences-experimentales" \
  "sciences-naturelles" \
  "physique" \
  "chimie" \
  "mathematiques" \
  "informatique" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

# Section Technique
create_subject_tree "technique" \
  "technique" \
  "technologie" \
  "mecanique" \
  "electrique" \
  "mathematiques" \
  "physique" \
  "informatique" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

# Section Économie et gestion
create_subject_tree "economie-gestion" \
  "economie" \
  "gestion" \
  "comptabilite" \
  "mathematiques" \
  "informatique" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

# Section Lettres
create_subject_tree "lettres" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "histoire" \
  "geographie" \
  "informatique" \
  "sport" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

# Section Sport
create_subject_tree "sport" \
  "sport" \
  "sciences-naturelles" \
  "physique" \
  "mathematiques" \
  "arabe" \
  "francais" \
  "anglais" \
  "philosophie" \
  "informatique" \
  "option-allemand" \
  "option-espagnol" \
  "option-italien" \
  "option-musique" \
  "option-arts"

echo "Structure créée dans le dossier: $ROOT"
