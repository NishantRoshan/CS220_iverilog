`include "A1Q1_one_bit_adder.v"
module eight_bit_adder(
    sum,cout,a,b,cin
);
    output[7:0] sum;
    output cout;
    input cin;
    input[7:0] a,b;
    wire c1,c2,c3,c4,c5,c6,c7;
    one_bit_adder b1(sum[0],c1,a[0],b[0],cin);
    one_bit_adder b2(sum[1],c2,a[1],b[1],c1);
    one_bit_adder b3(sum[2],c3,a[2],b[2],c2);
    one_bit_adder b4(sum[3],c4,a[3],b[3],c3);
    one_bit_adder b5(sum[4],c5,a[4],b[4],c4);
    one_bit_adder b6(sum[5],c6,a[5],b[5],c5);
    one_bit_adder b7(sum[6],c7,a[6],b[6],c6);
    one_bit_adder b8(sum[7],cout,a[7],b[7],c7);
endmodule