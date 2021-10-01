from PyQt5.QtWidgets import *
from matplotlib.backends.backend_qt5agg import FigureCanvas
from matplotlib.figure import Figure
import matplotlib.animation as animation

class MplWidget_1(QWidget):

    def __init__(self, parent=None, interval=100):

        QWidget.__init__(self, parent)

        self.canvas_1 = FigureCanvas(Figure())

        vertical_layout_1 = QVBoxLayout()
        vertical_layout_1.addWidget(self.canvas_1)

        self.canvas_1.axes = self.canvas_1.figure.add_subplot(111)
        self.setLayout(vertical_layout_1)
