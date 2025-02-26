module lab5_tb;
    logic [3:0] num;
    logic [2:0] sel;
    logic a,b,c,d,e,f,g,an0,an1,an2,an3,an4,an5,an6,an7;
    integer i, j;
    lab5 UUT (
        .num(num),
        .sel(sel),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .an0(an0),
        .an1(an1),
        .an2(an2),
        .an3(an3),
        .an4(an4),
        .an5(an5),
        .an6(an6),
        .an7(an7)
    );

    initial begin
        for (i=0; i<16; i++)
           begin
                for(j=0; j<8; j++)
                   begin
                        num = i;
                        sel = j;
                        #10;
                   end
           end
        $stop;
    end

    initial begin
        $monitor("Time=%0t | num=%b, sel=%b | a=%b, b=%b, c=%b, d=%b, e=%b, f=%b, g=%b | an0=%b, an1=%b, an2=%b, an3=%b, an4=%b, an5=%b, an6=%b, an7=%b", 
                  $time, num, sel, a, b, c, d, e, f, g, an0, an1, an2, an3, an4, an5, an6, an7);
    end

endmodule