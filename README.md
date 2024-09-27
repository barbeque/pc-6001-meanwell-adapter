# PC-6001 Meanwell PSU adapter
This adapter PCB lets you use a modern Meanwell switch-mode power supply with your original-model NEC PC-6001 home computer.

Doing so has many improvements:
 - The computer will no longer attempt to turn on in the event of a short on one of the rails, preventing damage to the sensitive triple-voltage DRAM;
 - The power supply does not sag under the load of power-hungry expansions;
 - Much less heat is produced inside the system, which extends the life of its components;
 - The system is now able to be used on a much wider range of home voltages without a step-down transformer. If paired with an RPT-60B this range is about 90 to 260 VAC, which means Europeans will be able to plug it directly in.

As an additional benefit, I also provide a 3D-printable grommet to use a pluggable IEC C7/C8 connector. This lets you get rid of the stock power cord. Those power cords, after forty-plus years, are now often melting from plasticizer leaching, and are inconvenient to store.

## Sourcing
The Gerber files can be found in the [Releases page](/releases) and sent to any PCB fabricator. I recommend JLCPCB.

The 3D-printable grommet can be found in the [3dp directory](/3dp). The STL file can be sent to 3D printing firms. If you use UV-cured resin, I recommend spray painting it to prevent yellowing and degradation.

## Bill of Materials
It is assumed that you will reuse the power switch from the PC-6001.

Power supply board:
 - [Meanwell RPT-60B power supply](https://www.digikey.com/en/products/detail/mean-well-usa-inc/RPT-60B/7706127);
 - JST [VHR 6-pin](https://www.digikey.com/en/products/detail/jst-sales-america-inc/VHR-6N/608628) and [3-pin](https://www.digikey.com/en/products/detail/jst-sales-america-inc/VHR-3N/608625) female connector housings, along with [the pins](https://www.digikey.ca/en/products/detail/jst-sales-america-inc/SVH-21T-P1-1/527368);
 - Suitable wire for carrying mains electricity to the power supply - consult your local electrical code;
 - Standoffs and washers (these must be conductive metal);
 - (Optional) zip-ties to fasten the cabling to the board

You may also want to buy a JST VH-specific crimper. These are available on AliExpress inexpensively, but make sure you actually get a VH crimper (some sets do not include it, despite claiming to.)

You can sometimes find the VH connectors pre-crimped with silicone wire on eBay.

3D-printable grommet:
 - [Qualtek 770W-X2/13 polarized IEC connector](https://www.digikey.ca/en/products/detail/qualtek/770W-X2-13/1466563)

## Assembly Instructions

Dismantling the PC-6001:
 1. Open the PC-6001 by removing the screws on the bottom and pulling the top case up. Be careful not to tear the speaker wire.
 2. Unplug the speaker wire from the motherboard. It usually snakes in behind the keyboard. Set the top case aside.
 3. Lift and unplug the keyboard from the motherboard, and set it aside.
 4. Unplug the power supply board from the motherboard.
 5. Unscrew the transformer (upper right, near the power cord) and unplug it from the power supply board. Remove the transformer and set it aside.
 6. Unplug the 5V power transistor on the heat shield from the power supply. Set it aside.
 7. Unplug the two safety-switch connectors from the power supply.
 8. Unplug the mains power connector from the power supply board. The power supply board should have nothing plugged into it now.
 9. Remove the power supply board from the computer.

(Optional) installing the grommet:
 1. Snip and remove the mains power cord from the power switch. Leave enough of the wire on the power switch so that you can desolder it later.
 2. Pulling up on the old metal plate, you should now be able to wiggle the grommet holding the power cord on out the bottom of the metal plate.
 3. The metal plate can now be removed from the board, along with the power cord.
 4. Install the 3D-printed plate in lieu of it, and dry fit the IEC connector to make sure it fits.
 5. Desolder the old chunks of wire from the power switch, clean the area, and solder wires from the IEC connector to the power switch.

Wiring the power supply:
 1. Snip and remove the switched-side of the wires from the power switch. Desolder the wires from the power switch.
 2. Crimp wires for JST VH connectors and plug them into the 3-pin female JST VH connector housing. Pay attention to the polarity markings of the Meanwell supply - do not mix up live and neutral.
 3. Solder the other end of this to the switched side of the power switch. Again, do not mix up live and neutral - the IEC connector is polarized.
 4. Cut off the power supply side of the old power supply -> motherboard connector, and crimp them for JST VH connectors. Plug them into a 6-pin JST VH connector housing, following the pinout of the Meanwell. Double and triple check this to make sure you are not mixing up the supply voltages.
 5. Connect the cables to the Meanwell power supply. Bolt the power supply into the new power supply mounting PCB, making sure that there is continuity between the Meanwell ground hole and the ground of the mounting board..
 6. Bolt the power supply mounting PCB into the PC-6001, and apply zip-ties to the holes to keep the wires taut (but not stretched.)
 7. Tie up any leftover wires from the original power supply so they can't get in the way.
