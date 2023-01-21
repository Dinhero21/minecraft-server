#!bin/bash

# Output directory
OUTPUT="output"

# File to run after completion
RUN_FILE="run.sh"

# Default directory
DEFAULT="default"

# Overwrite directory
OVERWRITE="overwrite"

# Temporary directory
TEMP="temp"

# Url of the repository
REPO_URL="$(git config --get remote.origin.url)"

# Clone repository to current directory
  rm -rf $TEMP

  # Clone repository to temporary directory
  echo Cloning repository...
  git clone $REPO_URL $TEMP -q
  echo Clone complete!

  # Move files from temporary directory to current directory
    cp -rf $TEMP/* .
    rm -rf $TEMP

# Merge files
  echo Merging files...

  mkdir -p $TEMP

  # Merge default files
    # Move default files to temporary directory
      cp -rf $DEFAULT/* $TEMP
      rm -rf $DEFAULT

  # Merge current files
    if [ -d "$OUTPUT" ]
    then
      # Move current files to temporary directory
        cp -rf $OUTPUT/* $TEMP
        rm -rf $OUTPUT
    fi

  # Merge override files
    # Move override files to temporary directory
      cp -rf $OVERWRITE/* $TEMP
      rm -rf $OVERWRITE

  # Move temporary directory files to output directory
    mkdir -p $OUTPUT

    cp -rf $TEMP/* $OUTPUT
    rm -rf $TEMP

  echo Merging complete!

# Start the run file
if [ -f "$OUTPUT/$RUN_FILE" ]
then
  cd $OUTPUT
  bash $RUN_FILE
  cd ..
fi