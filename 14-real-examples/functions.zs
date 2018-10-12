#priority 999

# This function is intended to use in other files
# Other files can only import this file if this file is loaded before the requesting file.
function doThing(text as string) {
    print("Called doThing with: " + text);
}