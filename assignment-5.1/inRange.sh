file=$1
start=$2
end=$3

if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    exit 1
fi

if [ "$start" -gt "$end" ]; then
    echo "Error: Start line must be less than or equal to end line."
    exit 1
fi

head -n "$end" "$file" | tail -n +"$start"
