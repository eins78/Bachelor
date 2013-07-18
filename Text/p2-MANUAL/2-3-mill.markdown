# mill

`mill` is the backend for the papermill project, combining all the pieces described in the software stack


## build

### auto

If there is no valid configuration file found, instead of an error, 
we try our best at guessing what we should do.

This is done according to the following algorithm.

- I

Additionally, since there are no configuration values for anything, 
we use the default configuration as described below.

### configuration

    {
      "output_dir": "_output"
    }


