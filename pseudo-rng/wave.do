onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /LFSR_PRNG/clk
add wave -noupdate /LFSR_PRNG/rst
add wave -noupdate /LFSR_PRNG/seed
add wave -noupdate -radix unsigned /LFSR_PRNG/out
add wave -noupdate -radix unsigned -childformat {{{/LFSR_PRNG/D123456[5]} -radix unsigned} {{/LFSR_PRNG/D123456[4]} -radix unsigned} {{/LFSR_PRNG/D123456[3]} -radix unsigned} {{/LFSR_PRNG/D123456[2]} -radix unsigned} {{/LFSR_PRNG/D123456[1]} -radix unsigned} {{/LFSR_PRNG/D123456[0]} -radix unsigned}} -expand -subitemconfig {{/LFSR_PRNG/D123456[5]} {-height 15 -radix unsigned} {/LFSR_PRNG/D123456[4]} {-height 15 -radix unsigned} {/LFSR_PRNG/D123456[3]} {-height 15 -radix unsigned} {/LFSR_PRNG/D123456[2]} {-height 15 -radix unsigned} {/LFSR_PRNG/D123456[1]} {-height 15 -radix unsigned} {/LFSR_PRNG/D123456[0]} {-height 15 -radix unsigned}} /LFSR_PRNG/D123456
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
