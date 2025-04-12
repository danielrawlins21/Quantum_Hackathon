OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

// Ejemplo de puertas para crear un estado específico
// 1) Se aplica una X a q[0] para ponerlo en |1>
x q[0];

// 2) Se aplica una puerta Hadamard a q[1] para crear superposición |0> + |1>
h q[1];

// 3) Entre lazamos q[1] y q[2] (puerta CNOT)
cx q[1],q[2];

// 4) Medimos
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
