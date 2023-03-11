FROM fedora
WORKDIR /app
RUN dnf -y install openscad python gcc python3-devel git && \
    dnf clean all

RUN pip3 install jupyterlab
RUN pip3 install git+https://github.com/jreiberkyle/SolidPython.git@BOSL2-update
RUN pip3 install git+https://github.com/jreiberkyle/ViewSCAD.git

RUN useradd jovyan -p jovyan
USER jovyan
WORKDIR /home/jovyan/app

EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0"]
