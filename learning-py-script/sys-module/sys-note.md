# sys.argv - command line argument example

#### This is a simple example of taking argument in command line then displaying it

```python
    #!/usr/bin/python3
    import sys
    if len(sys.argv)==2:
        name=sys.argv[1]
        print("Hello,%s"%(name))
    else:
        print("Enter only one argument after the file name")
```
The first line is the shebang it tells which python intrepreter is being used. here i used python3
```python
if len(sys.argv)==2
This will check the argument size in the cli

sys.argv[1]
will retrive the second argument fromt he cli 
```
```
python3 sysargv.py argument2

Here, sysargv.py is the first argument so to display the arguement2 we need to use sys.argv[1]

```
