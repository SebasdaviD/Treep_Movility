from PyQt5.QtWidgets import *
from matplotlib.backends.backend_qt5agg import FigureCanvas
from matplotlib.figure import Figure
import matplotlib.animation as animation

class MplWidget_3(QWidget):

    def __init__(self, parent=None, interval=100):

        QWidget.__init__(self, parent)

        self.canvas_3 = FigureCanvas(Figure())

        vertical_layout_3 = QVBoxLayout()
        vertical_layout_3.addWidget(self.canvas_3)

        self.canvas_3.axes = self.canvas_3.figure.add_subplot(111)
        self.setLayout(vertical_layout_3)
