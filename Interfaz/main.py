import sys
from matplotlib.animation import FuncAnimation
from PyQt5.QtWidgets import *

from PyQt5.uic import loadUi

class InterfazSensado(QMainWindow):

    def __init__(self):
        QMainWindow.__init__(self)
        loadUi('interfaz.ui', self)

        self.setWindowTitle('Treep <3')
        self.pushButton.clicked.connect(self.graficar)
        self.x1_values = [0 for i in range(10)]

        self.y1_values = [0 for i in range(10)]
        self.line1, = self.MplWidget_1.canvas_1.axes.plot([], [], lw=2)
        self.MplWidget_1.canvas_1.axes.set_xlim(left=0, right=10)
        
        self.y2_values = [0 for i in range(10)]
        self.line2, = self.MplWidget_2.canvas_2.axes.plot([], [], lw=2)
        self.MplWidget_2.canvas_2.axes.set_xlim(left=0, right=10)

        self.y3_values = [0 for i in range(10)]
        self.line3, = self.MplWidget_3.canvas_3.axes.plot([], [], lw=2)
        self.MplWidget_3.canvas_3.axes.set_xlim(left=0, right=10)

        self.y4_values = [0 for i in range(10)]
        self.line4, = self.MplWidget_4.canvas_4.axes.plot([], [], lw=2)
        self.MplWidget_4.canvas_4.axes.set_xlim(left=0, right=10)
        
    def update_lines(self, i):
        
        self.f = open('Data.txt', 'r')
        
        self.data = [[float(char) for char in eval(line)] for line in self.f.read().split('\n')[-15:] if line != '']
        self.x1_values = [i+1 for i in range(int(self.data[-1][0])-10, int(self.data[-1][0]))]  

        self.y1_values = [line[1] for line in self.data][-10:]
        self.line1.set_xdata(self.x1_values)
        self.line1.set_ydata(self.y1_values)
        self.MplWidget_1.canvas_1.axes.set_xlim(left=self.x1_values[-10], right=self.x1_values[-1])
        self.MplWidget_1.canvas_1.axes.set_ylim(bottom=min(self.y1_values), top=max(self.y1_values))

        self.y2_values = [line[2] for line in self.data][-10:]
        self.line2.set_xdata(self.x1_values)
        self.line2.set_ydata(self.y2_values)
        self.MplWidget_2.canvas_2.axes.set_xlim(left=self.x1_values[-10], right=self.x1_values[-1])
        self.MplWidget_2.canvas_2.axes.set_ylim(bottom=min(self.y2_values), top=max(self.y2_values))

        self.y3_values = [line[3] for line in self.data][-10:]
        self.line3.set_xdata(self.x1_values)
        self.line3.set_ydata(self.y3_values)
        self.MplWidget_3.canvas_3.axes.set_xlim(left=self.x1_values[-10], right=self.x1_values[-1])
        self.MplWidget_3.canvas_3.axes.set_ylim(bottom=min(self.y3_values), top=max(self.y3_values))
    
        self.y4_values = [line[4] for line in self.data][-10:]
        self.line4.set_xdata(self.x1_values)
        self.line4.set_ydata(self.y4_values)
        self.MplWidget_4.canvas_4.axes.set_xlim(left=self.x1_values[-10], right=self.x1_values[-1])
        self.MplWidget_4.canvas_4.axes.set_ylim(bottom=min(self.y4_values), top=max(self.y4_values))

    def graficar(self):
        self.label.setText('Treep <3 (Funcionando)')
        self.ani1 = FuncAnimation(self.MplWidget_1.canvas_1.figure, self.update_lines, interval=1)
        self.ani2 = FuncAnimation(self.MplWidget_2.canvas_2.figure, self.update_lines, interval=1)
        self.ani3 = FuncAnimation(self.MplWidget_3.canvas_3.figure, self.update_lines, interval=1)
        self.ani4 = FuncAnimation(self.MplWidget_4.canvas_4.figure, self.update_lines, interval=1)
        
if __name__ == '__main__':
    qApp = QApplication(sys.argv)
    interfaz = InterfazSensado()
    interfaz.show()
    sys.exit(qApp.exec_())
