# APEX Nitro

Material APEX is built using [APEX Nitro](https://github.com/OraOpenSource/apex-nitro).

If you want to contribute to Material APEX, you will have to get it running with APEX Nitro. To do so, follow these steps:

1. Install [APEX Nitro](https://github.com/OraOpenSource/apex-nitro#install)
2. Clone the Material APEX GitHub repository on your system
3. Get the Material APEX [config file](apex-nitro-config.json) and
	1. replace any reference to `/Users/vmorneau/Documents/GitHub/` to your path from step (2).
	2. replace the url with your own APEX server pointing to the Material APEX demo application
4. Run `apex-nitro config`
5. Import the file from step (3) into APEX Nitro using the import feature.
6. (Optionally) Rename the project to `material-apex` or any other name you wish
7. Run `apex-nitro launch material-apex`
8. Enjoy
