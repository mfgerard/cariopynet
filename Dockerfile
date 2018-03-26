FROM ubuntu:16.04
MAINTAINER Matias Gerard <mgerard@sinc.unl.edu.ar>

# Web Demo Builder - Base Docker image for Python 3.5

ENV python_env="/python_env"

# Install base packages
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && apt-get install -y --no-install-recommends \
      build-essential \
      pkg-config \
      gfortran \
      libatlas-base-dev \
      fonts-lyx \
      libfreetype6-dev \
      libpng-dev \
      python3=3.5* \
      python-dev \
      python3-pip \
      python3-tk \
      #python3-venv 
      tk-dev \
      libyaml-dev \
      wkhtmltopdf \
      imagemagick && \
    rm -rf /var/lib/apt/lists/* 
    #\
    #apt-get update python3-pip
    
    


# python packages
RUN pip3 install -U pip
RUN pip3 install -U setuptools

RUN pip3 install -U virtualenv==12.0.7
RUN virtualenv ${python_env}

COPY install_python_module /usr/local/bin/

RUN install_python_module pip==9.0.3
RUN install_python_module setuptools==39.0.1
RUN install_python_module alabaster==0.7.10
RUN install_python_module appdirs==1.4.3
#RUN install_python_module apturl==0.5.2
RUN install_python_module Babel==2.4.0
RUN install_python_module backports.weakref==1.0rc1
RUN install_python_module beautifulsoup4==4.4.1
RUN install_python_module bleach==1.5.0
RUN install_python_module blinker==1.3
#RUN install_python_module Brlapi==0.6.4
RUN install_python_module chardet==2.3.0
RUN install_python_module checkbox-support==0.22
#RUN install_python_module command-not-found==0.3
#RUN install_python_module cryptography==1.2.3
RUN install_python_module cycler==0.10.0
RUN install_python_module Cython==0.25.2
RUN install_python_module dask==0.14.0
RUN install_python_module deap==1.0.1
RUN install_python_module decorator==4.0.6
#RUN install_python_module defer==1.0.6
RUN install_python_module docutils==0.13.1
RUN install_python_module elm==0.1.1
RUN install_python_module entrypoints==0.2.2
RUN install_python_module enum34==1.1.6
RUN install_python_module ez-setup==0.9
RUN install_python_module feedparser==5.1.3
RUN install_python_module future==0.16.0
RUN install_python_module futures==3.1.1
RUN install_python_module gdbn==0.1
RUN install_python_module gevent==1.2.2
RUN install_python_module gnumpy==0.2
RUN install_python_module greenlet==0.4.12
RUN install_python_module guacamole==0.9.2
RUN install_python_module imagesize==0.7.1
RUN install_python_module imutils==0.4.0
RUN install_python_module Jinja2==2.8
RUN install_python_module joblib==0.11
RUN install_python_module jsonschema==2.6.0
RUN install_python_module kazam==1.4.5
RUN install_python_module language-selector==0.1
RUN install_python_module Lasagne==0.2.dev1
RUN install_python_module lime==0.1.1.19
RUN install_python_module llvmlite==0.17.1
RUN install_python_module louis==2.6.4
RUN install_python_module lxml==3.5.0
RUN install_python_module Mako==1.0.3
RUN install_python_module Markdown==2.6.8
RUN install_python_module MarkupSafe==0.23
RUN install_python_module matplotlib==1.5.1
RUN install_python_module mistune==0.7.4
RUN install_python_module msgpack-python==0.4.8
RUN install_python_module nbconvert==5.1.1
RUN install_python_module nbformat==4.3.0
RUN install_python_module networkx==1.11
RUN install_python_module nolearn==0.6.0
RUN install_python_module notebook==5.0.0
#RUN install_python_module numba==0.32.0
RUN install_python_module numpy==1.13.1
RUN install_python_module oauthlib==1.0.3
#RUN install_python_module onboard==1.2.0
RUN install_python_module Optunity==1.0.1
RUN install_python_module packaging==16.8
RUN install_python_module padme==1.1.1
RUN install_python_module pandas==0.20.1
RUN install_python_module pandas-ml==0.4.0
RUN install_python_module pandocfilters==1.4.1
RUN install_python_module pexpect==4.0.1
RUN install_python_module pickleshare==0.7.4
RUN install_python_module Pillow==3.1.2
RUN install_python_module plainbox==0.25
RUN install_python_module prompt-toolkit==1.0.14
RUN install_python_module protobuf==3.3.0
RUN install_python_module ptyprocess==0.5
RUN install_python_module pyasn1==0.1.9
RUN install_python_module pycups==1.9.73
RUN install_python_module pycurl==7.43.0
RUN install_python_module Pygments==2.2.0
RUN install_python_module pygobject==3.20.0
RUN install_python_module pygpu==0.6.5
RUN install_python_module PyInstaller==3.2.1
RUN install_python_module PyJWT==1.3.0
RUN install_python_module pyparsing==2.2.0
RUN install_python_module python-apt==1.1.0b1
RUN install_python_module python-dateutil==2.4.2
RUN install_python_module python-debian==0.1.27
RUN install_python_module python-systemd==231
RUN install_python_module pytz==2014.10
RUN install_python_module pyxdg==0.25
RUN install_python_module PyYAML==3.12
RUN install_python_module pyzmq==16.0.2
RUN install_python_module qtconsole==4.3.0
RUN install_python_module reportlab==3.3.0
RUN install_python_module requests==2.9.1
RUN install_python_module scikit-image==0.12.3
RUN install_python_module scikit-learn==0.19.0
RUN install_python_module scipy==0.19.1
RUN install_python_module screen-resolution-extra==0.0.0
RUN install_python_module sessioninstaller==0.0.0
RUN install_python_module simplegeneric==0.8.1
RUN install_python_module sip==4.19.2
RUN install_python_module six==1.10.0
RUN install_python_module sklearn-extensions==0.0.2
RUN install_python_module snowballstemmer==1.2.1
RUN install_python_module Sphinx==1.6.2
RUN install_python_module sphinx-rtd-theme==0.1.6
RUN install_python_module sphinxcontrib-napoleon==0.2.9
RUN install_python_module sphinxcontrib-websupport==1.0.1
RUN install_python_module ssh-import-id==5.5
#RUN install_python_module system-service==0.3
RUN install_python_module tabulate==0.7.5
RUN install_python_module terminado==0.6
RUN install_python_module testpath==0.3
RUN install_python_module Theano==0.9.0
RUN install_python_module toolz==0.8.2
RUN install_python_module tornado==4.5.1
RUN install_python_module traitlets==4.3.2
#RUN install_python_module ubuntu-drivers-common==0.0.0
#RUN install_python_module ufw==0.35
RUN install_python_module urllib3==1.13.1
RUN install_python_module wcwidth==0.1.7
RUN install_python_module webencodings==0.5.1
RUN install_python_module Werkzeug==0.12.2
RUN install_python_module widgetsnbextension==2.0.0
#RUN install_python_module xdiagnose==3.8.4.1
#RUN install_python_module xkit==0.0.0
RUN install_python_module XlsxWriter==0.7.3
RUN install_python_module zerorpc==0.6.1

RUN pip3 install -r https://raw.githubusercontent.com/Lasagne/Lasagne/master/requirements.txt

RUN ln -s ${python_env}/bin/python /usr/local/bin/python

# Create a new user "developer".
# It will get access to the X11 session in the host computer

ENV uid=1000
ENV gid=${uid}

COPY init.sh /
COPY create_user.sh /
COPY matplotlibrc_tkagg /
COPY matplotlibrc_agg /

ENTRYPOINT ["/init.sh"]
CMD ["/create_user.sh"]
