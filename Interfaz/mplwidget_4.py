from PyQt5.QtWidgets import *
from matplotlib.backends.backend_qt5agg import FigureCanvas
from matplotlib.figure import Figure
import matplotlib.animation as animation

class MplWidget_4(QWidget):

    def __init__(self, parent=None, interval=100):

        QWidget.__init__(self, parent)

        self.canvas_4 = FigureCanvas(Figure())

        vertical_layout_4 = QVBoxLayout()
        vertical_layout_4.addWidget(self.canvas_4)

        self.canvas_4.axes = self.canvas_4.figure.add_subplot(111)
        self.setLayout(vertical_layout_4)
