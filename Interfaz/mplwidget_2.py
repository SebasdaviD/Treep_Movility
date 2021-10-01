from PyQt5.QtWidgets import *
from matplotlib.backends.backend_qt5agg import FigureCanvas
from matplotlib.figure import Figure
import matplotlib.animation as animation

class MplWidget_2(QWidget):

    def __init__(self, parent=None, interval=100):

        QWidget.__init__(self, parent)

        self.canvas_2 = FigureCanvas(Figure())

        vertical_layout_2 = QVBoxLayout()
        vertical_layout_2.addWidget(self.canvas_2)

        self.canvas_2.axes = self.canvas_2.figure.add_subplot(111)
        self.setLayout(vertical_layout_2)
