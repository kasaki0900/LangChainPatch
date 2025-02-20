LIBRARY_PATH=$(python -c "import langchain; print(langchain.__file__)")
LIBRARY_DIR=$(dirname "$LIBRARY_PATH")
TARGET_FILE="$LIBRARY_DIR/llms/openai.py"

echo "run patch"
if [ -f "$TARGET_FILE" ]; then
    mv ./LangChainPatch/openai.py "$TARGET_FILE"
    echo "File replaced successfully."
else
    echo "Target file does not exist: $TARGET_PATH"
fi
