# Running your first Jupyter notebook


-   [Running the Notebook](https://jupyter.readthedocs.io/en/latest/running.html)
    -   [Basic Steps](https://jupyter.readthedocs.io/en/latest/running.html#basic-steps)
        
        1.  Start the notebook server from the  [command line](https://jupyter.readthedocs.io/en/latest/glossary.html#term-command-line):
            
            jupyter notebook
            
        2.  You should see the notebook open in your browser.
            

        ## [Starting the Notebook Server](https://jupyter.readthedocs.io/en/latest/running.html#id2)[](https://jupyter.readthedocs.io/en/latest/running.html#starting-the-notebook-server "Permalink to this headline")

        After you have installed the Jupyter Notebook on your computer, you are ready to run the notebook server. You can start the notebook server from the  [command line](https://jupyter.readthedocs.io/en/latest/glossary.html#term-command-line)  (using  [Terminal](https://jupyter.readthedocs.io/en/latest/glossary.html#term-terminal)  on Mac/Linux,  [Command Prompt](https://jupyter.readthedocs.io/en/latest/glossary.html#term-Command-Prompt)  on Windows) by running:

        **jupyter notebook**

        This will print some information about the notebook server in your terminal, including the URL of the web application (by default,  `http://localhost:8888`):

        $ jupyter notebook
        [I 08:58:24.417 NotebookApp] Serving notebooks from local directory: /Users/catherine
        [I 08:58:24.417 NotebookApp] 0 active kernels
        [I 08:58:24.417 NotebookApp] The Jupyter Notebook is running at: http://localhost:8888/
        [I 08:58:24.417 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).

        It will then open your default web browser to this URL.

        When the notebook opens in your browser, you will see the  [Notebook Dashboard](https://jupyter.readthedocs.io/en/latest/glossary.html#term-Notebook-Dashboard), which will show a list of the notebooks, files, and subdirectories in the directory where the notebook server was started. Most of the time, you will wish to start a notebook server in the highest level directory containing notebooks. Often this will be your home directory.

        **Notebook Dashboard**

        ![_images/tryjupyter_file.png](https://jupyter.readthedocs.io/en/latest/_images/tryjupyter_file.png)


    
    -   [Starting the Notebook Server](https://jupyter.readthedocs.io/en/latest/running.html#starting-the-notebook-server)
    -   [Introducing the Notebook Server’s Command Line Options](https://jupyter.readthedocs.io/en/latest/running.html#introducing-the-notebook-server-s-command-line-options)
