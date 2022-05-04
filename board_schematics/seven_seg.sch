<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="maxim" urn="urn:adsk.eagle:library:269">
<description>&lt;b&gt;Maxim Components&lt;/b&gt;&lt;p&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL24-3" urn="urn:adsk.eagle:footprint:3288/1" library_version="4">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt; 0.3 inch</description>
<wire x1="-14.986" y1="-0.635" x2="-14.986" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="0.635" x2="-14.986" y2="-0.635" width="0.1524" layer="21" curve="-180"/>
<wire x1="14.986" y1="-2.794" x2="14.986" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="-2.794" x2="14.986" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="2.794" x2="14.986" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-14.986" y1="2.794" x2="-14.986" y2="0.635" width="0.1524" layer="21"/>
<pad name="1" x="-13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="-13.97" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-15.2908" y="-2.667" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-13.462" y="-0.889" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="DIL24-3" urn="urn:adsk.eagle:package:3299/3" type="model" library_version="4">
<description>Dual In Line Package 0.3 inch</description>
<packageinstances>
<packageinstance name="DIL24-3"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MAX7219" urn="urn:adsk.eagle:symbol:17231/1" library_version="4">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="7.62" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="20.32" width="0.4064" layer="94"/>
<wire x1="7.62" y1="20.32" x2="-10.16" y2="20.32" width="0.4064" layer="94"/>
<text x="-10.16" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DIG2" x="12.7" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="DIG3" x="12.7" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="DIG4" x="12.7" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="DIG5" x="12.7" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="DIG6" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="DIG7" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="SEGA" x="12.7" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="SEGB" x="12.7" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="SEGC" x="12.7" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="SEGD" x="12.7" y="-10.16" length="middle" direction="out" rot="R180"/>
<pin name="SEGE" x="12.7" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="SEGF" x="12.7" y="-15.24" length="middle" direction="out" rot="R180"/>
<pin name="SEGG" x="12.7" y="-17.78" length="middle" direction="out" rot="R180"/>
<pin name="SEGDP" x="12.7" y="-20.32" length="middle" direction="out" rot="R180"/>
<pin name="DIG1" x="12.7" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="DIG0" x="12.7" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="DIN" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="DOUT" x="-15.24" y="5.08" length="middle" direction="out"/>
<pin name="LOAD" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="CLK" x="-15.24" y="17.78" length="middle" direction="in" function="clk"/>
<pin name="ISET" x="-15.24" y="0" length="middle" direction="in"/>
<pin name="GND@2" x="-15.24" y="-20.32" length="middle" direction="pwr"/>
<pin name="GND@1" x="-15.24" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC" x="-15.24" y="-15.24" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX7219CNG" urn="urn:adsk.eagle:component:17892/4" prefix="IC" library_version="4">
<description>&lt;b&gt;LED DISPLAY DRIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MAX7219" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL24-3">
<connects>
<connect gate="G$1" pin="CLK" pad="13"/>
<connect gate="G$1" pin="DIG0" pad="2"/>
<connect gate="G$1" pin="DIG1" pad="11"/>
<connect gate="G$1" pin="DIG2" pad="6"/>
<connect gate="G$1" pin="DIG3" pad="7"/>
<connect gate="G$1" pin="DIG4" pad="3"/>
<connect gate="G$1" pin="DIG5" pad="10"/>
<connect gate="G$1" pin="DIG6" pad="5"/>
<connect gate="G$1" pin="DIG7" pad="8"/>
<connect gate="G$1" pin="DIN" pad="1"/>
<connect gate="G$1" pin="DOUT" pad="24"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="9"/>
<connect gate="G$1" pin="ISET" pad="18"/>
<connect gate="G$1" pin="LOAD" pad="12"/>
<connect gate="G$1" pin="SEGA" pad="14"/>
<connect gate="G$1" pin="SEGB" pad="16"/>
<connect gate="G$1" pin="SEGC" pad="20"/>
<connect gate="G$1" pin="SEGD" pad="23"/>
<connect gate="G$1" pin="SEGDP" pad="22"/>
<connect gate="G$1" pin="SEGE" pad="21"/>
<connect gate="G$1" pin="SEGF" pad="15"/>
<connect gate="G$1" pin="SEGG" pad="17"/>
<connect gate="G$1" pin="VCC" pad="19"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:3299/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="MAXIM" constant="no"/>
<attribute name="MPN" value="MAX7219CNG" constant="no"/>
<attribute name="OC_FARNELL" value="1523914" constant="no"/>
<attribute name="OC_NEWARK" value="34C4018" constant="no"/>
<attribute name="POPULARITY" value="6" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rcl" urn="urn:adsk.eagle:library:334">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
&lt;tr valign="top"&gt;

&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;</description>
<packages>
<package name="R0402" urn="urn:adsk.eagle:footprint:23043/3" library_version="11">
<description>&lt;b&gt;Chip RESISTOR 0402 EIA (1005 Metric)&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1" y1="0.483" x2="1" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="0.483" x2="1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1" y1="-0.483" x2="-1" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1" y1="-0.483" x2="-1" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.5" y="0" dx="0.6" dy="0.7" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.35" x2="0.1999" y2="0.35" layer="35"/>
</package>
<package name="R0603" urn="urn:adsk.eagle:footprint:23044/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:23045/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W" urn="urn:adsk.eagle:footprint:23046/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206" urn="urn:adsk.eagle:footprint:23047/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W" urn="urn:adsk.eagle:footprint:23048/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210" urn="urn:adsk.eagle:footprint:23049/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W" urn="urn:adsk.eagle:footprint:23050/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010" urn="urn:adsk.eagle:footprint:23051/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W" urn="urn:adsk.eagle:footprint:23052/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012" urn="urn:adsk.eagle:footprint:23053/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W" urn="urn:adsk.eagle:footprint:23054/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512" urn="urn:adsk.eagle:footprint:23055/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W" urn="urn:adsk.eagle:footprint:23056/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216" urn="urn:adsk.eagle:footprint:23057/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W" urn="urn:adsk.eagle:footprint:23058/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225" urn="urn:adsk.eagle:footprint:23059/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W" urn="urn:adsk.eagle:footprint:23060/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025" urn="urn:adsk.eagle:footprint:23061/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W" urn="urn:adsk.eagle:footprint:23062/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332" urn="urn:adsk.eagle:footprint:23063/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W" urn="urn:adsk.eagle:footprint:25646/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805" urn="urn:adsk.eagle:footprint:23065/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206" urn="urn:adsk.eagle:footprint:23066/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406" urn="urn:adsk.eagle:footprint:23067/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012" urn="urn:adsk.eagle:footprint:23068/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309" urn="urn:adsk.eagle:footprint:23069/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216" urn="urn:adsk.eagle:footprint:23070/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516" urn="urn:adsk.eagle:footprint:23071/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923" urn="urn:adsk.eagle:footprint:23072/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5" urn="urn:adsk.eagle:footprint:22991/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:22998/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:22992/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:22993/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:22997/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:22994/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:22995/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10" urn="urn:adsk.eagle:footprint:23073/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12" urn="urn:adsk.eagle:footprint:23074/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0411/12" urn="urn:adsk.eagle:footprint:23076/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15" urn="urn:adsk.eagle:footprint:23077/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V" urn="urn:adsk.eagle:footprint:23078/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15" urn="urn:adsk.eagle:footprint:23079/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V" urn="urn:adsk.eagle:footprint:23080/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17" urn="urn:adsk.eagle:footprint:23081/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22" urn="urn:adsk.eagle:footprint:23082/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V" urn="urn:adsk.eagle:footprint:23083/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22" urn="urn:adsk.eagle:footprint:23084/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V" urn="urn:adsk.eagle:footprint:23085/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15" urn="urn:adsk.eagle:footprint:23086/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22" urn="urn:adsk.eagle:footprint:23087/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V" urn="urn:adsk.eagle:footprint:23088/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12" urn="urn:adsk.eagle:footprint:23089/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17" urn="urn:adsk.eagle:footprint:23090/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0" urn="urn:adsk.eagle:footprint:23091/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102AX" urn="urn:adsk.eagle:footprint:23100/1" library_version="11">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="0922V" urn="urn:adsk.eagle:footprint:23098/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="MINI_MELF-0102R" urn="urn:adsk.eagle:footprint:23092/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W" urn="urn:adsk.eagle:footprint:23093/1" library_version="11">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R" urn="urn:adsk.eagle:footprint:25676/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W" urn="urn:adsk.eagle:footprint:25677/1" library_version="11">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R" urn="urn:adsk.eagle:footprint:25678/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W" urn="urn:adsk.eagle:footprint:25679/1" library_version="11">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RDH/15" urn="urn:adsk.eagle:footprint:23099/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:22999/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0309V" urn="urn:adsk.eagle:footprint:23075/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="R0201" urn="urn:adsk.eagle:footprint:25683/1" library_version="11">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VMTA55" urn="urn:adsk.eagle:footprint:25689/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60" urn="urn:adsk.eagle:footprint:25690/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="VTA52" urn="urn:adsk.eagle:footprint:25684/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53" urn="urn:adsk.eagle:footprint:25685/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54" urn="urn:adsk.eagle:footprint:25686/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55" urn="urn:adsk.eagle:footprint:25687/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56" urn="urn:adsk.eagle:footprint:25688/1" library_version="11">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="R4527" urn="urn:adsk.eagle:footprint:13246/1" library_version="11">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001" urn="urn:adsk.eagle:footprint:25692/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002" urn="urn:adsk.eagle:footprint:25693/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2" urn="urn:adsk.eagle:footprint:25694/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515" urn="urn:adsk.eagle:footprint:25695/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527" urn="urn:adsk.eagle:footprint:25696/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927" urn="urn:adsk.eagle:footprint:25697/1" library_version="11">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" urn="urn:adsk.eagle:footprint:25698/1" library_version="11">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R" urn="urn:adsk.eagle:footprint:25699/1" library_version="11">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="R01005" urn="urn:adsk.eagle:footprint:25701/1" library_version="11">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="R0402" urn="urn:adsk.eagle:package:23547/3" type="model" library_version="11">
<description>Chip RESISTOR 0402 EIA (1005 Metric)</description>
<packageinstances>
<packageinstance name="R0402"/>
</packageinstances>
</package3d>
<package3d name="R0603" urn="urn:adsk.eagle:package:23555/3" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0603"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:23553/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="R0805W" urn="urn:adsk.eagle:package:23537/2" type="model" library_version="11">
<description>RESISTOR wave soldering</description>
<packageinstances>
<packageinstance name="R0805W"/>
</packageinstances>
</package3d>
<package3d name="R1206" urn="urn:adsk.eagle:package:23540/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1206"/>
</packageinstances>
</package3d>
<package3d name="R1206W" urn="urn:adsk.eagle:package:23539/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1206W"/>
</packageinstances>
</package3d>
<package3d name="R1210" urn="urn:adsk.eagle:package:23554/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1210"/>
</packageinstances>
</package3d>
<package3d name="R1210W" urn="urn:adsk.eagle:package:23541/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1210W"/>
</packageinstances>
</package3d>
<package3d name="R2010" urn="urn:adsk.eagle:package:23551/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2010"/>
</packageinstances>
</package3d>
<package3d name="R2010W" urn="urn:adsk.eagle:package:23542/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2010W"/>
</packageinstances>
</package3d>
<package3d name="R2012" urn="urn:adsk.eagle:package:23543/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2012"/>
</packageinstances>
</package3d>
<package3d name="R2012W" urn="urn:adsk.eagle:package:23544/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2012W"/>
</packageinstances>
</package3d>
<package3d name="R2512" urn="urn:adsk.eagle:package:23545/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2512"/>
</packageinstances>
</package3d>
<package3d name="R2512W" urn="urn:adsk.eagle:package:23565/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2512W"/>
</packageinstances>
</package3d>
<package3d name="R3216" urn="urn:adsk.eagle:package:23557/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3216"/>
</packageinstances>
</package3d>
<package3d name="R3216W" urn="urn:adsk.eagle:package:23548/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3216W"/>
</packageinstances>
</package3d>
<package3d name="R3225" urn="urn:adsk.eagle:package:23549/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3225"/>
</packageinstances>
</package3d>
<package3d name="R3225W" urn="urn:adsk.eagle:package:23550/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3225W"/>
</packageinstances>
</package3d>
<package3d name="R5025" urn="urn:adsk.eagle:package:23552/2" type="model" library_version="11">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R5025"/>
</packageinstances>
</package3d>
<package3d name="R5025W" urn="urn:adsk.eagle:package:23558/2" type="model" library_version="11">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R5025W"/>
</packageinstances>
</package3d>
<package3d name="R6332" urn="urn:adsk.eagle:package:23559/2" type="model" library_version="11">
<description>RESISTOR
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332"/>
</packageinstances>
</package3d>
<package3d name="R6332W" urn="urn:adsk.eagle:package:26078/2" type="model" library_version="11">
<description>RESISTOR wave soldering
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332W"/>
</packageinstances>
</package3d>
<package3d name="M0805" urn="urn:adsk.eagle:package:23556/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M0805"/>
</packageinstances>
</package3d>
<package3d name="M1206" urn="urn:adsk.eagle:package:23566/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M1206"/>
</packageinstances>
</package3d>
<package3d name="M1406" urn="urn:adsk.eagle:package:23569/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M1406"/>
</packageinstances>
</package3d>
<package3d name="M2012" urn="urn:adsk.eagle:package:23561/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M2012"/>
</packageinstances>
</package3d>
<package3d name="M2309" urn="urn:adsk.eagle:package:23562/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M2309"/>
</packageinstances>
</package3d>
<package3d name="M3216" urn="urn:adsk.eagle:package:23563/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M3216"/>
</packageinstances>
</package3d>
<package3d name="M3516" urn="urn:adsk.eagle:package:23573/2" type="model" library_version="11">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M3516"/>
</packageinstances>
</package3d>
<package3d name="M5923" urn="urn:adsk.eagle:package:23564/3" type="model" library_version="11">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M5923"/>
</packageinstances>
</package3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:23488/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:23498/2" type="model" library_version="11">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:23491/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:23489/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:23492/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:23490/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:23502/1" type="box" library_version="11">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:23493/2" type="model" library_version="11">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0309/10" urn="urn:adsk.eagle:package:23567/2" type="model" library_version="11">
<description>RESISTOR
type 0309, grid 10mm</description>
<packageinstances>
<packageinstance name="0309/10"/>
</packageinstances>
</package3d>
<package3d name="0309/12" urn="urn:adsk.eagle:package:23571/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0309/12"/>
</packageinstances>
</package3d>
<package3d name="0411/12" urn="urn:adsk.eagle:package:23578/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0411/12"/>
</packageinstances>
</package3d>
<package3d name="0411/15" urn="urn:adsk.eagle:package:23568/2" type="model" library_version="11">
<description>RESISTOR
type 0411, grid 15 mm</description>
<packageinstances>
<packageinstance name="0411/15"/>
</packageinstances>
</package3d>
<package3d name="0411V" urn="urn:adsk.eagle:package:23570/1" type="box" library_version="11">
<description>RESISTOR
type 0411, grid 3.81 mm</description>
<packageinstances>
<packageinstance name="0411V"/>
</packageinstances>
</package3d>
<package3d name="0414/15" urn="urn:adsk.eagle:package:23579/2" type="model" library_version="11">
<description>RESISTOR
type 0414, grid 15 mm</description>
<packageinstances>
<packageinstance name="0414/15"/>
</packageinstances>
</package3d>
<package3d name="0414V" urn="urn:adsk.eagle:package:23574/1" type="box" library_version="11">
<description>RESISTOR
type 0414, grid 5 mm</description>
<packageinstances>
<packageinstance name="0414V"/>
</packageinstances>
</package3d>
<package3d name="0617/17" urn="urn:adsk.eagle:package:23575/2" type="model" library_version="11">
<description>RESISTOR
type 0617, grid 17.5 mm</description>
<packageinstances>
<packageinstance name="0617/17"/>
</packageinstances>
</package3d>
<package3d name="0617/22" urn="urn:adsk.eagle:package:23577/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0617/22"/>
</packageinstances>
</package3d>
<package3d name="0617V" urn="urn:adsk.eagle:package:23576/1" type="box" library_version="11">
<description>RESISTOR
type 0617, grid 5 mm</description>
<packageinstances>
<packageinstance name="0617V"/>
</packageinstances>
</package3d>
<package3d name="0922/22" urn="urn:adsk.eagle:package:23580/2" type="model" library_version="11">
<description>RESISTOR
type 0922, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0922/22"/>
</packageinstances>
</package3d>
<package3d name="P0613V" urn="urn:adsk.eagle:package:23582/1" type="box" library_version="11">
<description>RESISTOR
type 0613, grid 5 mm</description>
<packageinstances>
<packageinstance name="P0613V"/>
</packageinstances>
</package3d>
<package3d name="P0613/15" urn="urn:adsk.eagle:package:23581/2" type="model" library_version="11">
<description>RESISTOR
type 0613, grid 15 mm</description>
<packageinstances>
<packageinstance name="P0613/15"/>
</packageinstances>
</package3d>
<package3d name="P0817/22" urn="urn:adsk.eagle:package:23583/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="P0817/22"/>
</packageinstances>
</package3d>
<package3d name="P0817V" urn="urn:adsk.eagle:package:23608/1" type="box" library_version="11">
<description>RESISTOR
type 0817, grid 6.35 mm</description>
<packageinstances>
<packageinstance name="P0817V"/>
</packageinstances>
</package3d>
<package3d name="V234/12" urn="urn:adsk.eagle:package:23592/1" type="box" library_version="11">
<description>RESISTOR
type V234, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="V234/12"/>
</packageinstances>
</package3d>
<package3d name="V235/17" urn="urn:adsk.eagle:package:23586/2" type="model" library_version="11">
<description>RESISTOR
type V235, grid 17.78 mm</description>
<packageinstances>
<packageinstance name="V235/17"/>
</packageinstances>
</package3d>
<package3d name="V526-0" urn="urn:adsk.eagle:package:23590/1" type="box" library_version="11">
<description>RESISTOR
type V526-0, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="V526-0"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102AX" urn="urn:adsk.eagle:package:23594/1" type="box" library_version="11">
<description>Mini MELF 0102 Axial</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102AX"/>
</packageinstances>
</package3d>
<package3d name="0922V" urn="urn:adsk.eagle:package:23589/1" type="box" library_version="11">
<description>RESISTOR
type 0922, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0922V"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102R" urn="urn:adsk.eagle:package:23591/2" type="model" library_version="11">
<description>CECC Size RC2211 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102W" urn="urn:adsk.eagle:package:23588/2" type="model" library_version="11">
<description>CECC Size RC2211 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204R" urn="urn:adsk.eagle:package:26109/2" type="model" library_version="11">
<description>CECC Size RC3715 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204W" urn="urn:adsk.eagle:package:26111/2" type="model" library_version="11">
<description>CECC Size RC3715 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207R" urn="urn:adsk.eagle:package:26113/2" type="model" library_version="11">
<description>CECC Size RC6123 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207W" urn="urn:adsk.eagle:package:26112/2" type="model" library_version="11">
<description>CECC Size RC6123 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207W"/>
</packageinstances>
</package3d>
<package3d name="RDH/15" urn="urn:adsk.eagle:package:23595/1" type="box" library_version="11">
<description>RESISTOR
type RDH, grid 15 mm</description>
<packageinstances>
<packageinstance name="RDH/15"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:23495/1" type="box" library_version="11">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="0309V" urn="urn:adsk.eagle:package:23572/1" type="box" library_version="11">
<description>RESISTOR
type 0309, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0309V"/>
</packageinstances>
</package3d>
<package3d name="R0201" urn="urn:adsk.eagle:package:26117/2" type="model" library_version="11">
<description>RESISTOR chip
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R0201"/>
</packageinstances>
</package3d>
<package3d name="VMTA55" urn="urn:adsk.eagle:package:26121/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTA55"/>
</packageinstances>
</package3d>
<package3d name="VMTB60" urn="urn:adsk.eagle:package:26122/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC60
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTB60"/>
</packageinstances>
</package3d>
<package3d name="VTA52" urn="urn:adsk.eagle:package:26116/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR52
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA52"/>
</packageinstances>
</package3d>
<package3d name="VTA53" urn="urn:adsk.eagle:package:26118/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR53
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA53"/>
</packageinstances>
</package3d>
<package3d name="VTA54" urn="urn:adsk.eagle:package:26119/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR54
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA54"/>
</packageinstances>
</package3d>
<package3d name="VTA55" urn="urn:adsk.eagle:package:26120/2" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA55"/>
</packageinstances>
</package3d>
<package3d name="VTA56" urn="urn:adsk.eagle:package:26129/3" type="model" library_version="11">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR56
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA56"/>
</packageinstances>
</package3d>
<package3d name="R4527" urn="urn:adsk.eagle:package:13310/2" type="model" library_version="11">
<description>Package 4527
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<packageinstances>
<packageinstance name="R4527"/>
</packageinstances>
</package3d>
<package3d name="WSC0001" urn="urn:adsk.eagle:package:26123/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0001"/>
</packageinstances>
</package3d>
<package3d name="WSC0002" urn="urn:adsk.eagle:package:26125/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0002"/>
</packageinstances>
</package3d>
<package3d name="WSC01/2" urn="urn:adsk.eagle:package:26127/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC01/2"/>
</packageinstances>
</package3d>
<package3d name="WSC2515" urn="urn:adsk.eagle:package:26134/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC2515"/>
</packageinstances>
</package3d>
<package3d name="WSC4527" urn="urn:adsk.eagle:package:26126/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC4527"/>
</packageinstances>
</package3d>
<package3d name="WSC6927" urn="urn:adsk.eagle:package:26128/2" type="model" library_version="11">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC6927"/>
</packageinstances>
</package3d>
<package3d name="R1218" urn="urn:adsk.eagle:package:26131/2" type="model" library_version="11">
<description>CRCW1218 Thick Film, Rectangular Chip Resistors
Source: http://www.vishay.com .. dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R1218"/>
</packageinstances>
</package3d>
<package3d name="1812X7R" urn="urn:adsk.eagle:package:26130/2" type="model" library_version="11">
<description>Chip Monolithic Ceramic Capacitors Medium Voltage High Capacitance for General Use
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<packageinstances>
<packageinstance name="1812X7R"/>
</packageinstances>
</package3d>
<package3d name="R01005" urn="urn:adsk.eagle:package:26133/2" type="model" library_version="11">
<description>Chip, 0.40 X 0.20 X 0.16 mm body
&lt;p&gt;Chip package with body size 0.40 X 0.20 X 0.16 mm&lt;/p&gt;</description>
<packageinstances>
<packageinstance name="R01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-US" urn="urn:adsk.eagle:symbol:23200/1" library_version="11">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US_" urn="urn:adsk.eagle:component:23792/22" prefix="R" uservalue="yes" library_version="11">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23547/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="34" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23555/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="77" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23553/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="85" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23537/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23540/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="19" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23539/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23554/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23541/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23551/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23542/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23543/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23544/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23545/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23565/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23557/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23548/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23549/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23550/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23552/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23558/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23559/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26078/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23556/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="45" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23566/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23569/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23561/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23562/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23563/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23573/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23564/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23488/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="18" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23498/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="48" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23491/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="36" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23489/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23490/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23502/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23493/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23567/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23571/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="8" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23578/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23568/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23570/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23579/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23574/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23575/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23577/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23576/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23580/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23582/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23581/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23583/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23608/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23592/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23586/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23590/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23594/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23589/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23591/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23588/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26109/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26111/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26113/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26112/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23595/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23495/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23572/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26117/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26121/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26122/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26116/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26118/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26119/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26120/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26129/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13310/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26123/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26125/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26127/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26134/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26126/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26128/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26131/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26130/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26133/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
</devicesets>
</library>
<library name="capacitor-wima" urn="urn:adsk.eagle:library:116">
<description>&lt;b&gt;WIMA Capacitors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="C10B4" urn="urn:adsk.eagle:footprint:5353/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 4 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-3.429" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C10B5" urn="urn:adsk.eagle:footprint:5354/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 5 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-5.08" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C10B6" urn="urn:adsk.eagle:footprint:5355/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 6 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-5.08" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B5" urn="urn:adsk.eagle:footprint:5356/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 5 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="2.794" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B6" urn="urn:adsk.eagle:footprint:5357/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 6 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="3.302" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B7" urn="urn:adsk.eagle:footprint:5358/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 7 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="3.81" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B8" urn="urn:adsk.eagle:footprint:5359/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 8 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="4.318" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B9" urn="urn:adsk.eagle:footprint:5360/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 9 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="4.699" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-2" urn="urn:adsk.eagle:footprint:5361/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 2.5 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-4" urn="urn:adsk.eagle:footprint:5362/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 4 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-5" urn="urn:adsk.eagle:footprint:5363/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 5 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.778" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-6" urn="urn:adsk.eagle:footprint:5364/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 6 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="2.667" y="0.762" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B10" urn="urn:adsk.eagle:footprint:5365/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 10 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="5.588" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B11" urn="urn:adsk.eagle:footprint:5366/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 11 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="5.842" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B6" urn="urn:adsk.eagle:footprint:5367/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 6 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="3.302" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B7" urn="urn:adsk.eagle:footprint:5368/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 7 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="3.81" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B8" urn="urn:adsk.eagle:footprint:5369/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 8 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="4.572" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B11" urn="urn:adsk.eagle:footprint:5370/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 11 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="5.842" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B13" urn="urn:adsk.eagle:footprint:5371/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 13 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="6.858" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B15" urn="urn:adsk.eagle:footprint:5372/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 15 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="7.874" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B17" urn="urn:adsk.eagle:footprint:5373/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 17 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="8.763" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B20" urn="urn:adsk.eagle:footprint:5374/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 20 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.589" y="10.414" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B9" urn="urn:adsk.eagle:footprint:5375/1" library_version="2">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 9 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.589" y="4.826" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B15" urn="urn:adsk.eagle:footprint:5376/1" library_version="2">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 15 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="7.874" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B19" urn="urn:adsk.eagle:footprint:5377/1" library_version="2">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 19 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B20" urn="urn:adsk.eagle:footprint:5378/1" library_version="2">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 20 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="10.414" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B2.5" urn="urn:adsk.eagle:footprint:5379/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 2.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.032" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B3" urn="urn:adsk.eagle:footprint:5380/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 3 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B3.5" urn="urn:adsk.eagle:footprint:5381/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 4 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.032" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B4.5" urn="urn:adsk.eagle:footprint:5382/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 4.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B5" urn="urn:adsk.eagle:footprint:5383/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B5.5" urn="urn:adsk.eagle:footprint:5384/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 5.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B7.2" urn="urn:adsk.eagle:footprint:5385/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 7.2 mm, grid 5.08 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B3" urn="urn:adsk.eagle:footprint:5386/1" library_version="2">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 3 mm, grid 7.62 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B4" urn="urn:adsk.eagle:footprint:5387/1" library_version="2">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 4 mm, grid 7.62 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B5" urn="urn:adsk.eagle:footprint:5388/1" library_version="2">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 5 mm, grid 7.62 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-4.064" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B6" urn="urn:adsk.eagle:footprint:5389/1" library_version="2">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 6 mm, grid 7.62 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.683" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.889" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-3" urn="urn:adsk.eagle:footprint:5390/1" library_version="2">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 3 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="C10B4" urn="urn:adsk.eagle:package:5400/1" type="box" library_version="2">
<description>MKS4, 13.4 x 4 mm, grid 10.16 mm</description>
<packageinstances>
<packageinstance name="C10B4"/>
</packageinstances>
</package3d>
<package3d name="C10B5" urn="urn:adsk.eagle:package:5399/1" type="box" library_version="2">
<description>MKS4, 13.4 x 5 mm, grid 10.16 mm</description>
<packageinstances>
<packageinstance name="C10B5"/>
</packageinstances>
</package3d>
<package3d name="C10B6" urn="urn:adsk.eagle:package:5401/1" type="box" library_version="2">
<description>MKS4, 13.4 x 6 mm, grid 10.16 mm</description>
<packageinstances>
<packageinstance name="C10B6"/>
</packageinstances>
</package3d>
<package3d name="C15B5" urn="urn:adsk.eagle:package:5402/1" type="box" library_version="2">
<description>MKS4, 18 x 5 mm, grid 15 mm</description>
<packageinstances>
<packageinstance name="C15B5"/>
</packageinstances>
</package3d>
<package3d name="C15B6" urn="urn:adsk.eagle:package:5403/1" type="box" library_version="2">
<description>MKS4, 18 x 6 mm, grid 15 mm</description>
<packageinstances>
<packageinstance name="C15B6"/>
</packageinstances>
</package3d>
<package3d name="C15B7" urn="urn:adsk.eagle:package:5404/1" type="box" library_version="2">
<description>MKS4, 18 x 7 mm, grid 15 mm</description>
<packageinstances>
<packageinstance name="C15B7"/>
</packageinstances>
</package3d>
<package3d name="C15B8" urn="urn:adsk.eagle:package:5409/1" type="box" library_version="2">
<description>MKS4, 18 x 8 mm, grid 15 mm</description>
<packageinstances>
<packageinstance name="C15B8"/>
</packageinstances>
</package3d>
<package3d name="C15B9" urn="urn:adsk.eagle:package:5405/1" type="box" library_version="2">
<description>MKS4, 18 x 9 mm, grid 15 mm</description>
<packageinstances>
<packageinstance name="C15B9"/>
</packageinstances>
</package3d>
<package3d name="C2.5-2" urn="urn:adsk.eagle:package:5415/1" type="box" library_version="2">
<description>MKS2, 5 x 2.5 mm, grid 2.54 mm</description>
<packageinstances>
<packageinstance name="C2.5-2"/>
</packageinstances>
</package3d>
<package3d name="C2.5-4" urn="urn:adsk.eagle:package:5408/1" type="box" library_version="2">
<description>MKS2, 5 x 4 mm, grid 2.54 mm</description>
<packageinstances>
<packageinstance name="C2.5-4"/>
</packageinstances>
</package3d>
<package3d name="C2.5-5" urn="urn:adsk.eagle:package:5407/1" type="box" library_version="2">
<description>MKS2, 5 x 5 mm, grid 2.54 mm</description>
<packageinstances>
<packageinstance name="C2.5-5"/>
</packageinstances>
</package3d>
<package3d name="C2.5-6" urn="urn:adsk.eagle:package:5406/1" type="box" library_version="2">
<description>MKS2, 5 x 6 mm, grid 2.54 mm</description>
<packageinstances>
<packageinstance name="C2.5-6"/>
</packageinstances>
</package3d>
<package3d name="C22.5B10" urn="urn:adsk.eagle:package:5411/1" type="box" library_version="2">
<description>MKS4, 27 x 10 mm, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="C22.5B10"/>
</packageinstances>
</package3d>
<package3d name="C22.5B11" urn="urn:adsk.eagle:package:5412/1" type="box" library_version="2">
<description>MKS4, 27 x 11 mm, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="C22.5B11"/>
</packageinstances>
</package3d>
<package3d name="C22.5B6" urn="urn:adsk.eagle:package:5410/1" type="box" library_version="2">
<description>MKS4, 27 x 6 mm, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="C22.5B6"/>
</packageinstances>
</package3d>
<package3d name="C22.5B7" urn="urn:adsk.eagle:package:5414/1" type="box" library_version="2">
<description>MKS4, 27 x 7 mm, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="C22.5B7"/>
</packageinstances>
</package3d>
<package3d name="C22.5B8" urn="urn:adsk.eagle:package:5413/1" type="box" library_version="2">
<description>MKS4, 27 x 8 mm, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="C22.5B8"/>
</packageinstances>
</package3d>
<package3d name="C27.5B11" urn="urn:adsk.eagle:package:5416/1" type="box" library_version="2">
<description>MKS4, 31.6 x 11 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B11"/>
</packageinstances>
</package3d>
<package3d name="C27.5B13" urn="urn:adsk.eagle:package:5420/1" type="box" library_version="2">
<description>MKS4, 31.6 x 13 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B13"/>
</packageinstances>
</package3d>
<package3d name="C27.5B15" urn="urn:adsk.eagle:package:5417/1" type="box" library_version="2">
<description>MKS4, 31.6 x 15 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B15"/>
</packageinstances>
</package3d>
<package3d name="C27.5B17" urn="urn:adsk.eagle:package:5418/1" type="box" library_version="2">
<description>MKS4, 31.6 x 17 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B17"/>
</packageinstances>
</package3d>
<package3d name="C27.5B20" urn="urn:adsk.eagle:package:5421/1" type="box" library_version="2">
<description>MKS4, 31.6 x 20 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B20"/>
</packageinstances>
</package3d>
<package3d name="C27.5B9" urn="urn:adsk.eagle:package:5419/1" type="box" library_version="2">
<description>MKS4, 31.6 x 9 mm, grid 27.5 mm</description>
<packageinstances>
<packageinstance name="C27.5B9"/>
</packageinstances>
</package3d>
<package3d name="C37.5B15" urn="urn:adsk.eagle:package:5425/1" type="box" library_version="2">
<description>MKP4, 42 x 15 mm, grid 37.5 mm</description>
<packageinstances>
<packageinstance name="C37.5B15"/>
</packageinstances>
</package3d>
<package3d name="C37.5B19" urn="urn:adsk.eagle:package:5422/1" type="box" library_version="2">
<description>MKP4, 42 x 19 mm, grid 37.5 mm</description>
<packageinstances>
<packageinstance name="C37.5B19"/>
</packageinstances>
</package3d>
<package3d name="C37.5B20" urn="urn:adsk.eagle:package:5423/1" type="box" library_version="2">
<description>MKP4, 42 x 20 mm, grid 37.5 mm</description>
<packageinstances>
<packageinstance name="C37.5B20"/>
</packageinstances>
</package3d>
<package3d name="C5B2.5" urn="urn:adsk.eagle:package:5426/1" type="box" library_version="2">
<description>MKS2, 7.5 x 2.5 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B2.5"/>
</packageinstances>
</package3d>
<package3d name="C5B3" urn="urn:adsk.eagle:package:5433/1" type="box" library_version="2">
<description>MKS2, 7.5 x 3 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B3"/>
</packageinstances>
</package3d>
<package3d name="C5B3.5" urn="urn:adsk.eagle:package:5427/1" type="box" library_version="2">
<description>MKS2, 7.5 x 4 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B3.5"/>
</packageinstances>
</package3d>
<package3d name="C5B4.5" urn="urn:adsk.eagle:package:5424/1" type="box" library_version="2">
<description>MKS2, 7.5 x 4.5 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B4.5"/>
</packageinstances>
</package3d>
<package3d name="C5B5" urn="urn:adsk.eagle:package:5428/1" type="box" library_version="2">
<description>MKS2, 7.5 x 5 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B5"/>
</packageinstances>
</package3d>
<package3d name="C5B5.5" urn="urn:adsk.eagle:package:5429/1" type="box" library_version="2">
<description>MKS2, 7.5 x 5.5 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B5.5"/>
</packageinstances>
</package3d>
<package3d name="C5B7.2" urn="urn:adsk.eagle:package:5430/1" type="box" library_version="2">
<description>MKS2, 7.5 x 7.2 mm, grid 5.08 mm</description>
<packageinstances>
<packageinstance name="C5B7.2"/>
</packageinstances>
</package3d>
<package3d name="C7.5B3" urn="urn:adsk.eagle:package:5434/1" type="box" library_version="2">
<description>MKS3, 10 x 3 mm, grid 7.62 mm</description>
<packageinstances>
<packageinstance name="C7.5B3"/>
</packageinstances>
</package3d>
<package3d name="C7.5B4" urn="urn:adsk.eagle:package:5431/1" type="box" library_version="2">
<description>MKS3, 10 x 4 mm, grid 7.62 mm</description>
<packageinstances>
<packageinstance name="C7.5B4"/>
</packageinstances>
</package3d>
<package3d name="C7.5B5" urn="urn:adsk.eagle:package:5432/1" type="box" library_version="2">
<description>MKS3, 10 x 5 mm, grid 7.62 mm</description>
<packageinstances>
<packageinstance name="C7.5B5"/>
</packageinstances>
</package3d>
<package3d name="C7.5B6" urn="urn:adsk.eagle:package:5435/1" type="box" library_version="2">
<description>MKS3, 10 x 6 mm, grid 7.62 mm</description>
<packageinstances>
<packageinstance name="C7.5B6"/>
</packageinstances>
</package3d>
<package3d name="C2.5-3" urn="urn:adsk.eagle:package:5436/1" type="box" library_version="2">
<description>MKS2, 5 x 3 mm, grid 2.54 mm</description>
<packageinstances>
<packageinstance name="C2.5-3"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="C" urn="urn:adsk.eagle:symbol:5352/1" library_version="2">
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" urn="urn:adsk.eagle:component:5444/2" prefix="C" uservalue="yes" library_version="2">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;&lt;p&gt;
naming: grid - package width</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="10/4" package="C10B4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5400/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="10/5" package="C10B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5399/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="10/6" package="C10B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5401/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="15/5" package="C15B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5402/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="15/6" package="C15B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5403/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="15/7" package="C15B7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5404/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="15/8" package="C15B8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5409/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="2" constant="no"/>
</technology>
</technologies>
</device>
<device name="15/9" package="C15B9">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5405/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="2.5/2" package="C2.5-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5415/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="28" constant="no"/>
</technology>
</technologies>
</device>
<device name="2.5/4" package="C2.5-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5408/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
</technology>
</technologies>
</device>
<device name="2.5/5" package="C2.5-5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5407/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="2.5/6" package="C2.5-6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5406/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
<device name="22/10" package="C22.5B10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5411/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="22/11" package="C22.5B11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5412/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="22/6" package="C22.5B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5410/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="22/7" package="C22.5B7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5414/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="22/8" package="C22.5B8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5413/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/11" package="C27.5B11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5416/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/13" package="C27.5B13">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5420/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/15" package="C27.5B15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5417/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/17" package="C27.5B17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5418/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/20" package="C27.5B20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5421/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="27/9" package="C27.5B9">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5419/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="37/15" package="C37.5B15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5425/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="37/19" package="C37.5B19">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5422/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="37/20" package="C37.5B20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5423/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/2.5" package="C5B2.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5426/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/3" package="C5B3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5433/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/3.5" package="C5B3.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5427/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/4.5" package="C5B4.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5424/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/5" package="C5B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5428/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/5.5" package="C5B5.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5429/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="5/7.2" package="C5B7.2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5430/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="7.5/3" package="C7.5B3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5434/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="5" constant="no"/>
</technology>
</technologies>
</device>
<device name="7.5/4" package="C7.5B4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5431/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="7.5/5" package="C7.5B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5432/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="7.5/6" package="C7.5B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5435/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="2,5-3" package="C2.5-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5436/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="38" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta" urn="urn:adsk.eagle:library:161">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE05-1" urn="urn:adsk.eagle:footprint:8133/1" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="-4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.27" x2="-3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.016" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.27" x2="-1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.27" x2="-1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.016" x2="-1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.27" x2="1.016" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-1.27" x2="1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.524" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.27" x2="3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-1.27" x2="3.81" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.016" x2="4.064" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.27" x2="6.35" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.27" x2="4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.27" x2="3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.016" x2="3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.556" y1="1.27" x2="1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.27" x2="1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.27" x2="-1.016" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="1.27" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.524" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.27" x2="-3.81" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.016" x2="-4.064" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-6.35" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="0.762" x2="-5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="0.508" x2="-5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="0.508" x2="-5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="-0.508" x2="-5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.508" x2="-5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.762" x2="-4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.762" x2="-4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.508" x2="-4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="-0.508" x2="-4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="0.508" x2="-4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.508" x2="-4.826" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="0.762" x2="-5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.762" x2="-2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="0.508" x2="-3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="0.508" x2="-3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-0.508" x2="-2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.508" x2="-2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.762" x2="-2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.508" x2="-2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.508" x2="-2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="0.508" x2="-2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.508" x2="-2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="0.762" x2="-2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="0.508" x2="-0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.508" x2="-0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.508" x2="-0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.762" x2="0.254" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.508" x2="0.508" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.508" x2="0.508" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.508" x2="0.254" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.508" x2="0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.254" y1="0.762" x2="-0.254" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0.508" x2="2.032" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.508" x2="2.032" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-0.508" x2="2.286" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.508" x2="2.286" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.762" x2="2.794" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.762" x2="2.794" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.508" x2="3.048" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-0.508" x2="3.048" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.508" x2="2.794" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.508" x2="2.794" y2="0.762" width="0.1524" layer="51"/>
<wire x1="2.794" y1="0.762" x2="2.286" y2="0.762" width="0.1524" layer="51"/>
<wire x1="4.826" y1="0.762" x2="4.826" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="0.508" x2="4.572" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="0.508" x2="4.572" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.572" y1="-0.508" x2="4.826" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.508" x2="4.826" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.762" x2="5.334" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.762" x2="5.334" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.508" x2="5.588" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="-0.508" x2="5.588" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.588" y1="0.508" x2="5.334" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.508" x2="5.334" y2="0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="0.762" x2="4.826" y2="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-6.35" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="6.604" y="-0.635" size="1.27" layer="21" ratio="10">5</text>
<text x="0" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.207" y1="0.254" x2="-4.953" y2="0.762" layer="51"/>
<rectangle x1="-5.207" y1="-0.762" x2="-4.953" y2="-0.254" layer="51"/>
<rectangle x1="-2.667" y1="0.254" x2="-2.413" y2="0.762" layer="51"/>
<rectangle x1="-2.667" y1="-0.762" x2="-2.413" y2="-0.254" layer="51"/>
<rectangle x1="-0.127" y1="0.254" x2="0.127" y2="0.762" layer="51"/>
<rectangle x1="-0.127" y1="-0.762" x2="0.127" y2="-0.254" layer="51"/>
<rectangle x1="2.413" y1="0.254" x2="2.667" y2="0.762" layer="51"/>
<rectangle x1="2.413" y1="-0.762" x2="2.667" y2="-0.254" layer="51"/>
<rectangle x1="4.953" y1="0.254" x2="5.207" y2="0.762" layer="51"/>
<rectangle x1="4.953" y1="-0.762" x2="5.207" y2="-0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="FE05-1" urn="urn:adsk.eagle:package:8190/1" type="box" library_version="2">
<description>FEMALE HEADER</description>
<packageinstances>
<packageinstance name="FE05-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FE05-1" urn="urn:adsk.eagle:symbol:8132/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE05-1" urn="urn:adsk.eagle:component:8233/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE05-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE05-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8190/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="7" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="display-kingbright" urn="urn:adsk.eagle:library:213">
<description>&lt;b&gt;KINGBRIGHT Numeric Displays&lt;/b&gt;&lt;p&gt;
&lt;author&gt;librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SA56-11" urn="urn:adsk.eagle:footprint:13061/1" library_version="1">
<description>&lt;b&gt;Kingbright 14.2mm (0.56 INCH) SINGLE DIGIT NUMERIC DUISPLAY&lt;/b&gt;&lt;p&gt;
Source: SA56-11EWA(Ver1189471036.pdf</description>
<wire x1="6.273" y1="-9.434" x2="6.273" y2="9.434" width="0.1524" layer="21"/>
<wire x1="-6.273" y1="9.434" x2="6.273" y2="9.434" width="0.1524" layer="21"/>
<wire x1="-6.273" y1="9.434" x2="-6.273" y2="-9.434" width="0.1524" layer="21"/>
<wire x1="6.273" y1="-9.434" x2="-6.273" y2="-9.434" width="0.1524" layer="21"/>
<wire x1="2.4372" y1="-6.5358" x2="2.107" y2="-6.866" width="0.4064" layer="51"/>
<circle x="4.572" y="-6.35" radius="0.381" width="0.762" layer="51"/>
<pad name="1" x="-5.08" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="0" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="2.54" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="0" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="-2.54" y="7.62" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="-5.08" y="7.62" drill="0.8" shape="long" rot="R90"/>
<text x="-6.35" y="10.16" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-11.43" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<polygon width="0.4064" layer="51">
<vertex x="-1.425" y="6.1"/>
<vertex x="-1.25" y="7.1"/>
<vertex x="3.675" y="7.1"/>
<vertex x="3.55" y="6.1"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="3.2565" y="1.0555"/>
<vertex x="4.3128" y="7.0544"/>
<vertex x="4.622" y="7.0626" curve="-104.72173"/>
<vertex x="5.2533" y="6.2038"/>
<vertex x="4.2" y="0.5"/>
<vertex x="3.725" y="0.5"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="-2.95" y="1.1"/>
<vertex x="-1.9" y="7.1"/>
<vertex x="-2.175" y="7.1" curve="77.708822"/>
<vertex x="-3.075" y="6.375"/>
<vertex x="-4.1" y="0.5"/>
<vertex x="-3.525" y="0.5"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="-3.05" y="0.025"/>
<vertex x="-2.425" y="0.65"/>
<vertex x="2.7" y="0.65"/>
<vertex x="3.075" y="0.125"/>
<vertex x="2.625" y="-0.35"/>
<vertex x="-2.675" y="-0.35"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="1.5" y="-5.825"/>
<vertex x="1.325" y="-6.825"/>
<vertex x="-3.6" y="-6.825"/>
<vertex x="-3.475" y="-5.825"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="-3.2565" y="-0.7305"/>
<vertex x="-4.2378" y="-6.7794"/>
<vertex x="-4.547" y="-6.7876" curve="-104.72173"/>
<vertex x="-5.1783" y="-5.9288"/>
<vertex x="-4.2" y="-0.175"/>
<vertex x="-3.725" y="-0.175"/>
</polygon>
<polygon width="0.4064" layer="51">
<vertex x="2.975" y="-0.975"/>
<vertex x="1.975" y="-6.825"/>
<vertex x="2.25" y="-6.825" curve="77.708822"/>
<vertex x="3.15" y="-6.1"/>
<vertex x="4.1" y="-0.425"/>
<vertex x="3.525" y="-0.425"/>
</polygon>
</package>
<package name="SA10-21" urn="urn:adsk.eagle:footprint:13062/1" library_version="1">
<description>&lt;b&gt;25.4mm (1.0 INCH) SINGLE DIGIT NUMERIC DISPLAY&lt;/b&gt;&lt;p&gt;
Source: SA10-21EWA(Ver1189472078.10).pdf&lt;br&gt;
&lt;a href="http://www.farnell.com/datasheets/57132.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="-11.923" y1="16.909" x2="11.923" y2="16.909" width="0.1524" layer="21"/>
<wire x1="11.923" y1="-16.884" x2="-11.923" y2="-16.884" width="0.1524" layer="21"/>
<wire x1="-11.923" y1="16.909" x2="-11.923" y2="-16.884" width="0.1524" layer="21"/>
<wire x1="11.923" y1="-16.884" x2="11.923" y2="16.909" width="0.1524" layer="21"/>
<circle x="9.05" y="-12.9" radius="1.125" width="0" layer="21"/>
<pad name="1" x="-5.08" y="-15.2" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-15.2" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="0" y="-15.2" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-15.2" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-15.2" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="15.28" drill="0.8" shape="long" rot="R270"/>
<pad name="7" x="2.54" y="15.28" drill="0.8" shape="long" rot="R270"/>
<pad name="8" x="0" y="15.28" drill="0.8" shape="long" rot="R270"/>
<pad name="9" x="-2.54" y="15.28" drill="0.8" shape="long" rot="R270"/>
<pad name="10" x="-5.08" y="15.28" drill="0.8" shape="long" rot="R270"/>
<text x="-11.43" y="17.78" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.525" y="-1.905" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="-2.565" y="10.98"/>
<vertex x="-2.25" y="12.78"/>
<vertex x="6.615" y="12.78"/>
<vertex x="6.39" y="10.98"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="5.8617" y="1.8999"/>
<vertex x="7.763" y="12.6979"/>
<vertex x="8.3196" y="12.7127" curve="-104.72574"/>
<vertex x="9.4559" y="11.1668"/>
<vertex x="7.56" y="0.9"/>
<vertex x="6.705" y="0.9"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="-5.31" y="1.98"/>
<vertex x="-3.42" y="12.78"/>
<vertex x="-3.915" y="12.78" curve="77.707709"/>
<vertex x="-5.535" y="11.475"/>
<vertex x="-7.38" y="0.9"/>
<vertex x="-6.345" y="0.9"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="-5.49" y="0.045"/>
<vertex x="-4.365" y="1.17"/>
<vertex x="4.86" y="1.17"/>
<vertex x="5.535" y="0.225"/>
<vertex x="4.725" y="-0.63"/>
<vertex x="-4.815" y="-0.63"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="2.7" y="-10.485"/>
<vertex x="2.385" y="-12.285"/>
<vertex x="-6.48" y="-12.285"/>
<vertex x="-6.255" y="-10.485"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="-5.8617" y="-1.3149"/>
<vertex x="-7.628" y="-12.2029"/>
<vertex x="-8.1846" y="-12.2177" curve="-104.72574"/>
<vertex x="-9.3209" y="-10.6718"/>
<vertex x="-7.56" y="-0.315"/>
<vertex x="-6.705" y="-0.315"/>
</polygon>
<polygon width="0.7314" layer="21" spacing="2.286">
<vertex x="5.355" y="-1.755"/>
<vertex x="3.555" y="-12.285"/>
<vertex x="4.05" y="-12.285" curve="77.707709"/>
<vertex x="5.67" y="-10.98"/>
<vertex x="7.38" y="-0.765"/>
<vertex x="6.345" y="-0.765"/>
</polygon>
</package>
<package name="SA18-11" urn="urn:adsk.eagle:footprint:13063/1" library_version="1">
<description>&lt;b&gt;44.5mm (1.75INCH) SINGLE DIGIT NUMERIC DISPLAY&lt;/b&gt;&lt;p&gt;
Source: SA18-11EWA(Ver1189472866.5).pdf&lt;br&gt;
&lt;a href="http://www.farnell.com/datasheets/58023.pdf"&gt; Data sheet &lt;/a&gt;</description>
<wire x1="-18.875" y1="27.875" x2="18.875" y2="27.875" width="0.2498" layer="21"/>
<wire x1="18.875" y1="-27.875" x2="-18.875" y2="-27.875" width="0.2498" layer="21"/>
<wire x1="-18.875" y1="27.875" x2="-18.875" y2="-27.875" width="0.2498" layer="21"/>
<wire x1="18.875" y1="-27.875" x2="18.875" y2="27.875" width="0.2498" layer="21"/>
<circle x="13.9465" y="-22.9202" radius="2.2035" width="0" layer="21"/>
<pad name="1" x="-5.08" y="-24.13" drill="0.7" diameter="1.4224" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-24.13" drill="0.7" diameter="1.4224" shape="long" rot="R90"/>
<pad name="3" x="0" y="-24.13" drill="0.7" diameter="1.4224" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-24.13" drill="0.7" diameter="1.4224" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-24.13" drill="0.7" diameter="1.4224" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="24.13" drill="0.7" diameter="1.4224" shape="long" rot="R270"/>
<pad name="7" x="2.54" y="24.13" drill="0.7" diameter="1.4224" shape="long" rot="R270"/>
<pad name="8" x="0" y="24.13" drill="0.7" diameter="1.4224" shape="long" rot="R270"/>
<pad name="9" x="-2.54" y="24.13" drill="0.7" diameter="1.4224" shape="long" rot="R270"/>
<pad name="10" x="-5.08" y="24.13" drill="0.7" diameter="1.4224" shape="long" rot="R270"/>
<text x="-18.7452" y="29.1592" size="2.0828" layer="25" ratio="10">&gt;NAME</text>
<text x="-15.621" y="-3.1242" size="2.0828" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="-4.2066" y="18.0072"/>
<vertex x="-3.69" y="20.9592"/>
<vertex x="10.8486" y="20.9592"/>
<vertex x="10.4796" y="18.0072"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="9.6132" y="3.1158"/>
<vertex x="12.7313" y="20.8246"/>
<vertex x="13.6441" y="20.8488" curve="-104.725326"/>
<vertex x="15.5077" y="18.3136"/>
<vertex x="12.3984" y="1.476"/>
<vertex x="10.9962" y="1.476"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="-8.7084" y="3.2472"/>
<vertex x="-5.6088" y="20.9592"/>
<vertex x="-6.4206" y="20.9592" curve="77.708388"/>
<vertex x="-9.0774" y="18.819"/>
<vertex x="-12.1032" y="1.476"/>
<vertex x="-10.4058" y="1.476"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="-9.0036" y="0.0738"/>
<vertex x="-7.1586" y="1.9188"/>
<vertex x="7.9704" y="1.9188"/>
<vertex x="9.0774" y="0.369"/>
<vertex x="7.749" y="-1.0332"/>
<vertex x="-7.8966" y="-1.0332"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="4.428" y="-17.1954"/>
<vertex x="3.9114" y="-20.1474"/>
<vertex x="-10.6272" y="-20.1474"/>
<vertex x="-10.2582" y="-17.1954"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="-9.6132" y="-2.1564"/>
<vertex x="-12.5099" y="-20.0128"/>
<vertex x="-13.4227" y="-20.037" curve="-104.725326"/>
<vertex x="-15.2863" y="-17.5018"/>
<vertex x="-12.3984" y="-0.5166"/>
<vertex x="-10.9962" y="-0.5166"/>
</polygon>
<polygon width="1.1994" layer="21" spacing="3.749">
<vertex x="8.7822" y="-2.8782"/>
<vertex x="5.8302" y="-20.1474"/>
<vertex x="6.642" y="-20.1474" curve="77.708388"/>
<vertex x="9.2988" y="-18.0072"/>
<vertex x="12.1032" y="-1.2546"/>
<vertex x="10.4058" y="-1.2546"/>
</polygon>
</package>
<package name="SA52-11" urn="urn:adsk.eagle:footprint:13064/1" library_version="1">
<description>&lt;b&gt;13.2mm (0.52INCH) SINGLE DIGIT NUMERIC DISPLAY&lt;/b&gt;&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/SA52-11EWA(Ver1195708215.10)</description>
<wire x1="6.123" y1="-8.684" x2="6.123" y2="8.659" width="0.1524" layer="21"/>
<wire x1="-6.123" y1="8.659" x2="6.123" y2="8.659" width="0.1524" layer="21"/>
<wire x1="-6.123" y1="8.659" x2="-6.123" y2="-8.684" width="0.1524" layer="21"/>
<wire x1="6.123" y1="-8.684" x2="-6.123" y2="-8.684" width="0.1524" layer="21"/>
<circle x="4.072" y="-5.925" radius="0.381" width="0.762" layer="21"/>
<pad name="1" x="-5.08" y="-7.62" drill="0.8" rot="R90"/>
<pad name="2" x="-2.54" y="-7.62" drill="0.8" rot="R90"/>
<pad name="3" x="0" y="-7.62" drill="0.8" rot="R90"/>
<pad name="4" x="2.54" y="-7.62" drill="0.8" rot="R90"/>
<pad name="5" x="5.08" y="-7.62" drill="0.8" rot="R90"/>
<pad name="6" x="5.08" y="7.62" drill="0.8" rot="R90"/>
<pad name="7" x="2.54" y="7.62" drill="0.8" rot="R90"/>
<pad name="8" x="0" y="7.62" drill="0.8" rot="R90"/>
<pad name="9" x="-2.54" y="7.62" drill="0.8" rot="R90"/>
<pad name="10" x="-5.08" y="7.62" drill="0.8" rot="R90"/>
<text x="-6.35" y="10.16" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-11.43" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<polygon width="0.4064" layer="21">
<vertex x="-0.975" y="5.45"/>
<vertex x="-0.8" y="6.45"/>
<vertex x="3" y="6.425"/>
<vertex x="2.875" y="5.425"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="2.7065" y="1.0555"/>
<vertex x="3.6378" y="6.3794"/>
<vertex x="3.947" y="6.3876" curve="-104.72173"/>
<vertex x="4.5783" y="5.5288"/>
<vertex x="3.65" y="0.5"/>
<vertex x="3.175" y="0.5"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="-2.375" y="1.125"/>
<vertex x="-1.45" y="6.45"/>
<vertex x="-1.725" y="6.45" curve="77.708822"/>
<vertex x="-2.625" y="5.725"/>
<vertex x="-3.525" y="0.525"/>
<vertex x="-2.95" y="0.525"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="-2.475" y="0.05"/>
<vertex x="-1.85" y="0.675"/>
<vertex x="2.15" y="0.65"/>
<vertex x="2.525" y="0.125"/>
<vertex x="2.075" y="-0.35"/>
<vertex x="-2.1" y="-0.325"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="1" y="-5.4"/>
<vertex x="0.825" y="-6.4"/>
<vertex x="-2.975" y="-6.375"/>
<vertex x="-2.85" y="-5.375"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="-2.6815" y="-0.7055"/>
<vertex x="-3.6128" y="-6.3294"/>
<vertex x="-3.922" y="-6.3376" curve="-104.72173"/>
<vertex x="-4.5533" y="-5.4788"/>
<vertex x="-3.625" y="-0.15"/>
<vertex x="-3.15" y="-0.15"/>
</polygon>
<polygon width="0.4064" layer="21">
<vertex x="2.425" y="-0.975"/>
<vertex x="1.475" y="-6.4"/>
<vertex x="1.75" y="-6.4" curve="77.708822"/>
<vertex x="2.65" y="-5.675"/>
<vertex x="3.55" y="-0.425"/>
<vertex x="2.975" y="-0.425"/>
</polygon>
</package>
<package name="SA39-11SRWA" urn="urn:adsk.eagle:footprint:13065/1" library_version="1">
<wire x1="4.928" y1="-6.427" x2="-4.928" y2="-6.427" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-4.424" x2="3.175" y2="-4.424" width="0.3048" layer="51"/>
<wire x1="4.928" y1="6.402" x2="4.928" y2="-6.427" width="0.1524" layer="21"/>
<wire x1="-4.928" y1="-6.427" x2="-4.928" y2="6.402" width="0.1524" layer="21"/>
<wire x1="-4.928" y1="6.402" x2="4.928" y2="6.402" width="0.1524" layer="21"/>
<wire x1="3.073" y1="4.1442" x2="2.6412" y2="3.7124" width="0.254" layer="51"/>
<wire x1="2.6412" y1="3.7124" x2="2.0066" y2="0.7366" width="0.254" layer="51"/>
<wire x1="2.0066" y1="0.7366" x2="2.413" y2="0.3302" width="0.254" layer="51"/>
<wire x1="2.413" y1="0.3302" x2="2.794" y2="0.7112" width="0.254" layer="51"/>
<wire x1="2.794" y1="0.7112" x2="3.4032" y2="3.814" width="0.254" layer="51"/>
<wire x1="3.4032" y1="3.814" x2="3.073" y2="4.1442" width="0.254" layer="51"/>
<wire x1="2.7682" y1="4.449" x2="2.3872" y2="4.068" width="0.254" layer="21"/>
<wire x1="2.3872" y1="4.068" x2="-1.0418" y2="4.068" width="0.254" layer="21"/>
<wire x1="-1.0418" y1="4.068" x2="-1.4228" y2="4.449" width="0.254" layer="21"/>
<wire x1="-1.4228" y1="4.449" x2="-1.0418" y2="4.83" width="0.254" layer="21"/>
<wire x1="-1.0418" y1="4.83" x2="2.3872" y2="4.83" width="0.254" layer="21"/>
<wire x1="2.3872" y1="4.83" x2="2.7682" y2="4.449" width="0.254" layer="21"/>
<wire x1="-1.7276" y1="4.1442" x2="-1.2958" y2="3.7124" width="0.254" layer="21"/>
<wire x1="-1.2958" y1="3.7124" x2="-1.905" y2="0.7366" width="0.254" layer="21"/>
<wire x1="-1.905" y1="0.7366" x2="-2.413" y2="0.2286" width="0.254" layer="21"/>
<wire x1="-2.413" y1="0.2286" x2="-2.667" y2="0.4826" width="0.254" layer="21"/>
<wire x1="-2.667" y1="0.4826" x2="-2.0578" y2="3.814" width="0.254" layer="21"/>
<wire x1="-2.0578" y1="3.814" x2="-1.7276" y2="4.1442" width="0.254" layer="21"/>
<wire x1="-2.1082" y1="-0.0762" x2="-1.651" y2="0.381" width="0.254" layer="21"/>
<wire x1="-1.651" y1="0.381" x2="1.7272" y2="0.381" width="0.254" layer="21"/>
<wire x1="1.7272" y1="0.381" x2="2.0574" y2="0.0508" width="0.254" layer="21"/>
<wire x1="2.0574" y1="0.0508" x2="1.6256" y2="-0.381" width="0.254" layer="21"/>
<wire x1="1.6256" y1="-0.381" x2="-1.8034" y2="-0.381" width="0.254" layer="21"/>
<wire x1="-1.8034" y1="-0.381" x2="-2.1082" y2="-0.0762" width="0.254" layer="21"/>
<wire x1="-2.4638" y1="-0.3302" x2="-2.0828" y2="-0.7112" width="0.254" layer="51"/>
<wire x1="-3.1242" y1="-4.1192" x2="-2.667" y2="-3.662" width="0.254" layer="51"/>
<wire x1="-2.667" y1="-3.662" x2="-2.0828" y2="-0.7112" width="0.254" layer="51"/>
<wire x1="-2.4638" y1="-0.3302" x2="-2.8702" y2="-0.7366" width="0.254" layer="51"/>
<wire x1="-2.8702" y1="-0.7366" x2="-3.4544" y2="-3.789" width="0.254" layer="51"/>
<wire x1="-3.4544" y1="-3.789" x2="-3.1242" y2="-4.1192" width="0.254" layer="51"/>
<wire x1="-2.8194" y1="-4.424" x2="-2.4384" y2="-4.043" width="0.254" layer="21"/>
<wire x1="-2.4384" y1="-4.043" x2="0.9906" y2="-4.043" width="0.254" layer="21"/>
<wire x1="0.9906" y1="-4.043" x2="1.3716" y2="-4.424" width="0.254" layer="21"/>
<wire x1="1.3716" y1="-4.424" x2="0.9906" y2="-4.805" width="0.254" layer="21"/>
<wire x1="0.9906" y1="-4.805" x2="-2.4384" y2="-4.805" width="0.254" layer="21"/>
<wire x1="-2.4384" y1="-4.805" x2="-2.8194" y2="-4.424" width="0.254" layer="21"/>
<wire x1="2.3368" y1="-0.2794" x2="1.8288" y2="-0.7874" width="0.254" layer="21"/>
<wire x1="1.8288" y1="-0.7874" x2="1.2446" y2="-3.6874" width="0.254" layer="21"/>
<wire x1="1.2446" y1="-3.6874" x2="1.6764" y2="-4.1192" width="0.254" layer="21"/>
<wire x1="1.6764" y1="-4.1192" x2="2.0066" y2="-3.789" width="0.254" layer="21"/>
<wire x1="2.0066" y1="-3.789" x2="2.5908" y2="-0.5334" width="0.254" layer="21"/>
<wire x1="2.5908" y1="-0.5334" x2="2.3368" y2="-0.2794" width="0.254" layer="21"/>
<wire x1="-2.413" y1="-4.424" x2="1.016" y2="-4.424" width="0.6096" layer="21"/>
<wire x1="1.651" y1="-3.662" x2="2.286" y2="-0.635" width="0.6096" layer="21"/>
<wire x1="1.651" y1="0" x2="-1.778" y2="0" width="0.6096" layer="21"/>
<wire x1="-2.413" y1="-0.635" x2="-3.048" y2="-3.662" width="0.6096" layer="51"/>
<wire x1="-2.311" y1="0.66" x2="-1.678" y2="3.712" width="0.6096" layer="21"/>
<wire x1="-0.991" y1="4.449" x2="2.438" y2="4.449" width="0.6096" layer="21"/>
<wire x1="3.073" y1="3.814" x2="2.413" y2="0.762" width="0.6096" layer="51"/>
<circle x="3.048" y="-4.424" radius="0.254" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="5.08" drill="0.9" diameter="1.5"/>
<pad name="2" x="-3.81" y="2.54" drill="0.9" diameter="1.5"/>
<pad name="3" x="-3.81" y="0" drill="0.9" diameter="1.5"/>
<pad name="4" x="-3.81" y="-2.54" drill="0.9" diameter="1.5"/>
<pad name="5" x="-3.81" y="-5.08" drill="0.9" diameter="1.5"/>
<pad name="6" x="3.81" y="-5.08" drill="0.9" diameter="1.5"/>
<pad name="7" x="3.81" y="-2.54" drill="0.9" diameter="1.5"/>
<pad name="8" x="3.81" y="0" drill="0.9" diameter="1.5"/>
<pad name="9" x="3.81" y="2.54" drill="0.9" diameter="1.5"/>
<pad name="10" x="3.81" y="5.08" drill="0.9" diameter="1.5"/>
<text x="-4.953" y="6.9342" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.953" y="-8.1788" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="SA56-11" urn="urn:adsk.eagle:package:13076/1" type="box" library_version="1">
<description>Kingbright 14.2mm (0.56 INCH) SINGLE DIGIT NUMERIC DUISPLAY
Source: SA56-11EWA(Ver1189471036.pdf</description>
<packageinstances>
<packageinstance name="SA56-11"/>
</packageinstances>
</package3d>
<package3d name="SA10-21" urn="urn:adsk.eagle:package:13078/1" type="box" library_version="1">
<description>25.4mm (1.0 INCH) SINGLE DIGIT NUMERIC DISPLAY
Source: SA10-21EWA(Ver1189472078.10).pdf
 Data sheet </description>
<packageinstances>
<packageinstance name="SA10-21"/>
</packageinstances>
</package3d>
<package3d name="SA18-11" urn="urn:adsk.eagle:package:13077/1" type="box" library_version="1">
<description>44.5mm (1.75INCH) SINGLE DIGIT NUMERIC DISPLAY
Source: SA18-11EWA(Ver1189472866.5).pdf
 Data sheet </description>
<packageinstances>
<packageinstance name="SA18-11"/>
</packageinstances>
</package3d>
<package3d name="SA52-11" urn="urn:adsk.eagle:package:13081/1" type="box" library_version="1">
<description>13.2mm (0.52INCH) SINGLE DIGIT NUMERIC DISPLAY
Source: http://www.kingbright.com/manager/upload/pdf/SA52-11EWA(Ver1195708215.10)</description>
<packageinstances>
<packageinstance name="SA52-11"/>
</packageinstances>
</package3d>
<package3d name="SA39-11SRWA" urn="urn:adsk.eagle:package:13079/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="SA39-11SRWA"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="7SEG-LED-COM2" urn="urn:adsk.eagle:symbol:13060/1" library_version="1">
<wire x1="2.794" y1="-3.683" x2="3.048" y2="-3.683" width="0.3048" layer="94"/>
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="94"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="94"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="94"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="94"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="94"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="94"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="94"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="94"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="94"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="94"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="94"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="94"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="94"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="94"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="94"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="94"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="5.969" y1="8.89" x2="5.969" y2="7.62" width="0.4064" layer="94"/>
<wire x1="5.969" y1="7.62" x2="5.969" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.969" y1="5.08" x2="5.969" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="5.969" y1="-7.62" x2="5.969" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="5.969" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="5.969" y1="8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="7.62" y1="7.62" x2="5.969" y2="7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="5.969" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="5.969" y2="-7.62" width="0.1524" layer="94"/>
<circle x="2.921" y="-3.683" radius="0.254" width="0.3048" layer="94"/>
<text x="-5.08" y="9.525" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.477" y="7.874" size="1.27" layer="95">a</text>
<text x="-6.477" y="5.334" size="1.27" layer="95">b</text>
<text x="-6.477" y="2.794" size="1.27" layer="95">c</text>
<text x="-6.477" y="0.254" size="1.27" layer="95">d</text>
<text x="-6.477" y="-2.286" size="1.27" layer="95">e</text>
<text x="-6.477" y="-4.826" size="1.27" layer="95">f</text>
<text x="-6.477" y="-7.366" size="1.27" layer="95">g</text>
<text x="0.508" y="6.858" size="1.524" layer="95">COM</text>
<pin name="DP" x="10.16" y="-7.62" length="short" direction="pas" rot="R180"/>
<pin name="F" x="-10.16" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="D" x="-10.16" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="B" x="-10.16" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A" x="-10.16" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="COM@1" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="C" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="E" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="G" x="-10.16" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="COM@2" x="10.16" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="7-SEG_" urn="urn:adsk.eagle:component:13094/1" prefix="LED" library_version="1">
<description>&lt;b&gt;Kingbright 14.2mm (0.56 INCH) SINGLE DIGIT NUMERIC DUISPLAY&lt;/b&gt;&lt;p&gt;
Source: SA56-11EWA(Ver1189471036.pdf</description>
<gates>
<gate name="G$1" symbol="7SEG-LED-COM2" x="0" y="0"/>
</gates>
<devices>
<device name="SA56-11" package="SA56-11">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="COM@1" pad="3"/>
<connect gate="G$1" pin="COM@2" pad="8"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13076/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SA10-21" package="SA10-21">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="COM@1" pad="3"/>
<connect gate="G$1" pin="COM@2" pad="8"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13078/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SA18-11" package="SA18-11">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="COM@1" pad="1"/>
<connect gate="G$1" pin="COM@2" pad="5"/>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="DP" pad="8"/>
<connect gate="G$1" pin="E" pad="2"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13077/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SA52-11" package="SA52-11">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="COM@1" pad="3"/>
<connect gate="G$1" pin="COM@2" pad="8"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="9"/>
<connect gate="G$1" pin="G" pad="10"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13081/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="SA39-11SRWA" package="SA39-11SRWA">
<connects>
<connect gate="G$1" pin="A" pad="10"/>
<connect gate="G$1" pin="B" pad="9"/>
<connect gate="G$1" pin="C" pad="7"/>
<connect gate="G$1" pin="COM@1" pad="3"/>
<connect gate="G$1" pin="COM@2" pad="8"/>
<connect gate="G$1" pin="D" pad="5"/>
<connect gate="G$1" pin="DP" pad="6"/>
<connect gate="G$1" pin="E" pad="4"/>
<connect gate="G$1" pin="F" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13079/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R1" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="C1" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="R2" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="SV1" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE05-1" device="" package3d_urn="urn:adsk.eagle:package:8190/1"/>
<part name="SV2" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE05-1" device="" package3d_urn="urn:adsk.eagle:package:8190/1"/>
<part name="LED1" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED2" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED3" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED4" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED5" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED6" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED7" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED8" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC2" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R3" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED9" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED10" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED11" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED12" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED13" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED14" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED15" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED16" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC3" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R4" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED17" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED18" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED19" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED20" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED21" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED22" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED23" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED24" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC4" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R5" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED25" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED26" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED27" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED28" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED29" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED30" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED31" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED32" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC5" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R6" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED33" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED34" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED35" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED36" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED37" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED38" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED39" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED40" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC6" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R7" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED41" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED42" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED43" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED44" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED45" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED46" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED47" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED48" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC7" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R8" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED49" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED50" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED51" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED52" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED53" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED54" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED55" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED56" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC8" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R9" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED57" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED58" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED59" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED60" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED61" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED62" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED63" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED64" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC9" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R10" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED65" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED66" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED67" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED68" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED69" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED70" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED71" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED72" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC10" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R11" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED73" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED74" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED75" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED76" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED77" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED78" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED79" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED80" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC11" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R12" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED81" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED82" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED83" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED84" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED85" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED86" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED87" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED88" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="IC12" library="maxim" library_urn="urn:adsk.eagle:library:269" deviceset="MAX7219CNG" device="" package3d_urn="urn:adsk.eagle:package:3299/3"/>
<part name="R13" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="12k"/>
<part name="LED89" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED90" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED91" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED92" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED93" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED94" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED95" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="LED96" library="display-kingbright" library_urn="urn:adsk.eagle:library:213" deviceset="7-SEG_" device="SA52-11" package3d_urn="urn:adsk.eagle:package:13081/1"/>
<part name="C2" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C3" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C4" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C5" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C6" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C7" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C8" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C9" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C10" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C11" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C12" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C13" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C14" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C15" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C16" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C17" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C18" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C19" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C20" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C21" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C22" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="C23" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="10uF"/>
<part name="C24" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2.5/2" package3d_urn="urn:adsk.eagle:package:5415/1" value="100nF"/>
<part name="R14" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R15" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R16" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R17" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R18" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R19" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R20" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R21" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R22" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R23" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R24" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R25" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R26" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R27" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R28" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R29" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R30" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R31" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R32" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R33" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R34" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R35" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R36" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
<part name="R37" library="rcl" library_urn="urn:adsk.eagle:library:334" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="880"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="-30.48" y="2.54" smashed="yes">
<attribute name="NAME" x="-40.64" y="23.495" size="1.778" layer="95"/>
<attribute name="VALUE" x="-40.64" y="-22.86" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="-50.8" y="-5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="-52.2986" y="-8.89" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-47.498" y="-8.89" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C1" gate="G$1" x="-66.04" y="-7.62" smashed="yes">
<attribute name="NAME" x="-64.516" y="-7.239" size="1.778" layer="95"/>
<attribute name="VALUE" x="-64.516" y="-12.319" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="-81.28" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="-77.47" y="-11.6586" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-77.47" y="-6.858" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SV1" gate="G$1" x="-106.68" y="-10.16" smashed="yes">
<attribute name="VALUE" x="-107.95" y="-20.32" size="1.778" layer="96"/>
<attribute name="NAME" x="-107.95" y="-1.778" size="1.778" layer="95"/>
</instance>
<instance part="SV2" gate="G$1" x="596.9" y="-497.84" smashed="yes" rot="MR0">
<attribute name="VALUE" x="598.17" y="-508" size="1.778" layer="96" rot="MR0"/>
<attribute name="NAME" x="598.17" y="-489.458" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="LED1" gate="G$1" x="45.72" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="56.515" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="77.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED2" gate="G$1" x="45.72" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="31.115" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="52.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED3" gate="G$1" x="45.72" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="5.715" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="26.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED4" gate="G$1" x="45.72" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="-19.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="1.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED5" gate="G$1" x="45.72" y="-35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="-45.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="-24.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED6" gate="G$1" x="45.72" y="-60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="-70.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="-49.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED7" gate="G$1" x="45.72" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="-95.885" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="-74.93" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED8" gate="G$1" x="45.72" y="-111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="50.8" y="-121.285" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="50.8" y="-100.33" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC2" gate="G$1" x="127" y="2.54" smashed="yes">
<attribute name="NAME" x="116.84" y="23.495" size="1.778" layer="95"/>
<attribute name="VALUE" x="116.84" y="-22.86" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="106.68" y="-5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="105.1814" y="-8.89" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="109.982" y="-8.89" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED9" gate="G$1" x="203.2" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="56.515" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="77.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED10" gate="G$1" x="203.2" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="31.115" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="52.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED11" gate="G$1" x="203.2" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="5.715" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="26.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED12" gate="G$1" x="203.2" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="-19.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="1.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED13" gate="G$1" x="203.2" y="-35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="-45.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="-24.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED14" gate="G$1" x="203.2" y="-60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="-70.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="-49.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED15" gate="G$1" x="203.2" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="-95.885" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="-74.93" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED16" gate="G$1" x="203.2" y="-111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="208.28" y="-121.285" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="208.28" y="-100.33" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC3" gate="G$1" x="284.48" y="2.54" smashed="yes">
<attribute name="NAME" x="274.32" y="23.495" size="1.778" layer="95"/>
<attribute name="VALUE" x="274.32" y="-22.86" size="1.778" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="264.16" y="-5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="262.6614" y="-8.89" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="267.462" y="-8.89" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED17" gate="G$1" x="360.68" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="56.515" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="77.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED18" gate="G$1" x="360.68" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="31.115" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="52.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED19" gate="G$1" x="360.68" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="5.715" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="26.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED20" gate="G$1" x="360.68" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="-19.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="1.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED21" gate="G$1" x="360.68" y="-35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="-45.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="-24.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED22" gate="G$1" x="360.68" y="-60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="-70.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="-49.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED23" gate="G$1" x="360.68" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="-95.885" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="-74.93" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED24" gate="G$1" x="360.68" y="-111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="365.76" y="-121.285" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="365.76" y="-100.33" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC4" gate="G$1" x="441.96" y="2.54" smashed="yes">
<attribute name="NAME" x="431.8" y="23.495" size="1.778" layer="95"/>
<attribute name="VALUE" x="431.8" y="-22.86" size="1.778" layer="96"/>
</instance>
<instance part="R5" gate="G$1" x="421.64" y="-5.08" smashed="yes" rot="R90">
<attribute name="NAME" x="420.1414" y="-8.89" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="424.942" y="-8.89" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED25" gate="G$1" x="518.16" y="66.04" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="56.515" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="77.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED26" gate="G$1" x="518.16" y="40.64" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="31.115" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="52.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED27" gate="G$1" x="518.16" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="5.715" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="26.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED28" gate="G$1" x="518.16" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="-19.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="1.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED29" gate="G$1" x="518.16" y="-35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="-45.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="-24.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED30" gate="G$1" x="518.16" y="-60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="-70.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="-49.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED31" gate="G$1" x="518.16" y="-86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="-95.885" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="-74.93" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED32" gate="G$1" x="518.16" y="-111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="523.24" y="-121.285" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="523.24" y="-100.33" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC5" gate="G$1" x="-22.86" y="-287.02" smashed="yes">
<attribute name="NAME" x="-33.02" y="-266.065" size="1.778" layer="95"/>
<attribute name="VALUE" x="-33.02" y="-312.42" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="-43.18" y="-294.64" smashed="yes" rot="R90">
<attribute name="NAME" x="-44.6786" y="-298.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-39.878" y="-298.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED33" gate="G$1" x="53.34" y="-223.52" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-233.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-212.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED34" gate="G$1" x="53.34" y="-248.92" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-258.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-237.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED35" gate="G$1" x="53.34" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-283.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-262.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED36" gate="G$1" x="53.34" y="-299.72" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-309.245" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-288.29" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED37" gate="G$1" x="53.34" y="-325.12" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-334.645" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-313.69" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED38" gate="G$1" x="53.34" y="-350.52" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-360.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-339.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED39" gate="G$1" x="53.34" y="-375.92" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-385.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-364.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED40" gate="G$1" x="53.34" y="-401.32" smashed="yes" rot="R180">
<attribute name="NAME" x="58.42" y="-410.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="58.42" y="-389.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC6" gate="G$1" x="134.62" y="-287.02" smashed="yes">
<attribute name="NAME" x="124.46" y="-266.065" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="-312.42" size="1.778" layer="96"/>
</instance>
<instance part="R7" gate="G$1" x="114.3" y="-294.64" smashed="yes" rot="R90">
<attribute name="NAME" x="112.8014" y="-298.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="117.602" y="-298.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED41" gate="G$1" x="210.82" y="-223.52" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-233.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-212.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED42" gate="G$1" x="210.82" y="-248.92" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-258.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-237.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED43" gate="G$1" x="210.82" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-283.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-262.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED44" gate="G$1" x="210.82" y="-299.72" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-309.245" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-288.29" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED45" gate="G$1" x="210.82" y="-325.12" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-334.645" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-313.69" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED46" gate="G$1" x="210.82" y="-350.52" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-360.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-339.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED47" gate="G$1" x="210.82" y="-375.92" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-385.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-364.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED48" gate="G$1" x="210.82" y="-401.32" smashed="yes" rot="R180">
<attribute name="NAME" x="215.9" y="-410.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="215.9" y="-389.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC7" gate="G$1" x="292.1" y="-287.02" smashed="yes">
<attribute name="NAME" x="281.94" y="-266.065" size="1.778" layer="95"/>
<attribute name="VALUE" x="281.94" y="-312.42" size="1.778" layer="96"/>
</instance>
<instance part="R8" gate="G$1" x="271.78" y="-294.64" smashed="yes" rot="R90">
<attribute name="NAME" x="270.2814" y="-298.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="275.082" y="-298.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED49" gate="G$1" x="368.3" y="-223.52" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-233.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-212.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED50" gate="G$1" x="368.3" y="-248.92" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-258.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-237.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED51" gate="G$1" x="368.3" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-283.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-262.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED52" gate="G$1" x="368.3" y="-299.72" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-309.245" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-288.29" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED53" gate="G$1" x="368.3" y="-325.12" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-334.645" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-313.69" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED54" gate="G$1" x="368.3" y="-350.52" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-360.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-339.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED55" gate="G$1" x="368.3" y="-375.92" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-385.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-364.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED56" gate="G$1" x="368.3" y="-401.32" smashed="yes" rot="R180">
<attribute name="NAME" x="373.38" y="-410.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="373.38" y="-389.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC8" gate="G$1" x="449.58" y="-287.02" smashed="yes">
<attribute name="NAME" x="439.42" y="-266.065" size="1.778" layer="95"/>
<attribute name="VALUE" x="439.42" y="-312.42" size="1.778" layer="96"/>
</instance>
<instance part="R9" gate="G$1" x="429.26" y="-294.64" smashed="yes" rot="R90">
<attribute name="NAME" x="427.7614" y="-298.45" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="432.562" y="-298.45" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED57" gate="G$1" x="525.78" y="-223.52" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-233.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-212.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED58" gate="G$1" x="525.78" y="-248.92" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-258.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-237.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED59" gate="G$1" x="525.78" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-283.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-262.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED60" gate="G$1" x="525.78" y="-299.72" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-309.245" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-288.29" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED61" gate="G$1" x="525.78" y="-325.12" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-334.645" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-313.69" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED62" gate="G$1" x="525.78" y="-350.52" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-360.045" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-339.09" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED63" gate="G$1" x="525.78" y="-375.92" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-385.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-364.49" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED64" gate="G$1" x="525.78" y="-401.32" smashed="yes" rot="R180">
<attribute name="NAME" x="530.86" y="-410.845" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="530.86" y="-389.89" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC9" gate="G$1" x="-12.7" y="-579.12" smashed="yes">
<attribute name="NAME" x="-22.86" y="-558.165" size="1.778" layer="95"/>
<attribute name="VALUE" x="-22.86" y="-604.52" size="1.778" layer="96"/>
</instance>
<instance part="R10" gate="G$1" x="-33.02" y="-586.74" smashed="yes" rot="R90">
<attribute name="NAME" x="-34.5186" y="-590.55" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-29.718" y="-590.55" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED65" gate="G$1" x="63.5" y="-515.62" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-525.145" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-504.19" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED66" gate="G$1" x="63.5" y="-541.02" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-550.545" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-529.59" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED67" gate="G$1" x="63.5" y="-566.42" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-575.945" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-554.99" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED68" gate="G$1" x="63.5" y="-591.82" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-601.345" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-580.39" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED69" gate="G$1" x="63.5" y="-617.22" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-626.745" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-605.79" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED70" gate="G$1" x="63.5" y="-642.62" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-652.145" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-631.19" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED71" gate="G$1" x="63.5" y="-668.02" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-677.545" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-656.59" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED72" gate="G$1" x="63.5" y="-693.42" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="-702.945" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="68.58" y="-681.99" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC10" gate="G$1" x="144.78" y="-581.66" smashed="yes">
<attribute name="NAME" x="134.62" y="-560.705" size="1.778" layer="95"/>
<attribute name="VALUE" x="134.62" y="-607.06" size="1.778" layer="96"/>
</instance>
<instance part="R11" gate="G$1" x="124.46" y="-589.28" smashed="yes" rot="R90">
<attribute name="NAME" x="122.9614" y="-593.09" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="127.762" y="-593.09" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED73" gate="G$1" x="220.98" y="-518.16" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-527.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-506.73" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED74" gate="G$1" x="220.98" y="-543.56" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-553.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-532.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED75" gate="G$1" x="220.98" y="-568.96" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-578.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-557.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED76" gate="G$1" x="220.98" y="-594.36" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-603.885" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-582.93" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED77" gate="G$1" x="220.98" y="-619.76" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-629.285" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-608.33" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED78" gate="G$1" x="220.98" y="-645.16" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-654.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-633.73" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED79" gate="G$1" x="220.98" y="-670.56" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-680.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-659.13" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED80" gate="G$1" x="220.98" y="-695.96" smashed="yes" rot="R180">
<attribute name="NAME" x="226.06" y="-705.485" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="226.06" y="-684.53" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC11" gate="G$1" x="302.26" y="-584.2" smashed="yes">
<attribute name="NAME" x="292.1" y="-563.245" size="1.778" layer="95"/>
<attribute name="VALUE" x="292.1" y="-609.6" size="1.778" layer="96"/>
</instance>
<instance part="R12" gate="G$1" x="281.94" y="-591.82" smashed="yes" rot="R90">
<attribute name="NAME" x="280.4414" y="-595.63" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="285.242" y="-595.63" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED81" gate="G$1" x="378.46" y="-520.7" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-530.225" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-509.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED82" gate="G$1" x="378.46" y="-546.1" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-555.625" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-534.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED83" gate="G$1" x="378.46" y="-571.5" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-581.025" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-560.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED84" gate="G$1" x="378.46" y="-596.9" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-606.425" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-585.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED85" gate="G$1" x="378.46" y="-622.3" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-631.825" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-610.87" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED86" gate="G$1" x="378.46" y="-647.7" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-657.225" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-636.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED87" gate="G$1" x="378.46" y="-673.1" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-682.625" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-661.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED88" gate="G$1" x="378.46" y="-698.5" smashed="yes" rot="R180">
<attribute name="NAME" x="383.54" y="-708.025" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="383.54" y="-687.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="IC12" gate="G$1" x="459.74" y="-584.2" smashed="yes">
<attribute name="NAME" x="449.58" y="-563.245" size="1.778" layer="95"/>
<attribute name="VALUE" x="449.58" y="-609.6" size="1.778" layer="96"/>
</instance>
<instance part="R13" gate="G$1" x="439.42" y="-591.82" smashed="yes" rot="R90">
<attribute name="NAME" x="437.9214" y="-595.63" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="442.722" y="-595.63" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED89" gate="G$1" x="535.94" y="-520.7" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-530.225" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-509.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED90" gate="G$1" x="535.94" y="-546.1" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-555.625" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-534.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED91" gate="G$1" x="535.94" y="-571.5" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-581.025" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-560.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED92" gate="G$1" x="535.94" y="-596.9" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-606.425" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-585.47" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED93" gate="G$1" x="535.94" y="-622.3" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-631.825" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-610.87" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED94" gate="G$1" x="535.94" y="-647.7" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-657.225" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-636.27" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED95" gate="G$1" x="535.94" y="-673.1" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-682.625" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-661.67" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="LED96" gate="G$1" x="535.94" y="-698.5" smashed="yes" rot="R180">
<attribute name="NAME" x="541.02" y="-708.025" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="541.02" y="-687.07" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C2" gate="G$1" x="-60.96" y="-10.16" smashed="yes">
<attribute name="NAME" x="-59.436" y="-9.779" size="1.778" layer="95"/>
<attribute name="VALUE" x="-59.436" y="-14.859" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="91.44" y="-7.62" smashed="yes">
<attribute name="NAME" x="92.964" y="-7.239" size="1.778" layer="95"/>
<attribute name="VALUE" x="92.964" y="-12.319" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="96.52" y="-10.16" smashed="yes">
<attribute name="NAME" x="98.044" y="-9.779" size="1.778" layer="95"/>
<attribute name="VALUE" x="98.044" y="-14.859" size="1.778" layer="96"/>
</instance>
<instance part="C5" gate="G$1" x="248.92" y="-7.62" smashed="yes">
<attribute name="NAME" x="250.444" y="-7.239" size="1.778" layer="95"/>
<attribute name="VALUE" x="250.444" y="-12.319" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="254" y="-10.16" smashed="yes">
<attribute name="NAME" x="255.524" y="-9.779" size="1.778" layer="95"/>
<attribute name="VALUE" x="255.524" y="-14.859" size="1.778" layer="96"/>
</instance>
<instance part="C7" gate="G$1" x="406.4" y="-7.62" smashed="yes">
<attribute name="NAME" x="407.924" y="-7.239" size="1.778" layer="95"/>
<attribute name="VALUE" x="407.924" y="-12.319" size="1.778" layer="96"/>
</instance>
<instance part="C8" gate="G$1" x="411.48" y="-10.16" smashed="yes">
<attribute name="NAME" x="413.004" y="-9.779" size="1.778" layer="95"/>
<attribute name="VALUE" x="413.004" y="-14.859" size="1.778" layer="96"/>
</instance>
<instance part="C9" gate="G$1" x="-58.42" y="-297.18" smashed="yes">
<attribute name="NAME" x="-56.896" y="-296.799" size="1.778" layer="95"/>
<attribute name="VALUE" x="-56.896" y="-301.879" size="1.778" layer="96"/>
</instance>
<instance part="C10" gate="G$1" x="-53.34" y="-299.72" smashed="yes">
<attribute name="NAME" x="-51.816" y="-299.339" size="1.778" layer="95"/>
<attribute name="VALUE" x="-51.816" y="-304.419" size="1.778" layer="96"/>
</instance>
<instance part="C11" gate="G$1" x="99.06" y="-297.18" smashed="yes">
<attribute name="NAME" x="100.584" y="-296.799" size="1.778" layer="95"/>
<attribute name="VALUE" x="100.584" y="-301.879" size="1.778" layer="96"/>
</instance>
<instance part="C12" gate="G$1" x="104.14" y="-299.72" smashed="yes">
<attribute name="NAME" x="105.664" y="-299.339" size="1.778" layer="95"/>
<attribute name="VALUE" x="105.664" y="-304.419" size="1.778" layer="96"/>
</instance>
<instance part="C13" gate="G$1" x="256.54" y="-297.18" smashed="yes">
<attribute name="NAME" x="258.064" y="-296.799" size="1.778" layer="95"/>
<attribute name="VALUE" x="258.064" y="-301.879" size="1.778" layer="96"/>
</instance>
<instance part="C14" gate="G$1" x="261.62" y="-299.72" smashed="yes">
<attribute name="NAME" x="263.144" y="-299.339" size="1.778" layer="95"/>
<attribute name="VALUE" x="263.144" y="-304.419" size="1.778" layer="96"/>
</instance>
<instance part="C15" gate="G$1" x="414.02" y="-297.18" smashed="yes">
<attribute name="NAME" x="415.544" y="-296.799" size="1.778" layer="95"/>
<attribute name="VALUE" x="415.544" y="-301.879" size="1.778" layer="96"/>
</instance>
<instance part="C16" gate="G$1" x="419.1" y="-299.72" smashed="yes">
<attribute name="NAME" x="420.624" y="-299.339" size="1.778" layer="95"/>
<attribute name="VALUE" x="420.624" y="-304.419" size="1.778" layer="96"/>
</instance>
<instance part="C17" gate="G$1" x="-48.26" y="-589.28" smashed="yes">
<attribute name="NAME" x="-46.736" y="-588.899" size="1.778" layer="95"/>
<attribute name="VALUE" x="-46.736" y="-593.979" size="1.778" layer="96"/>
</instance>
<instance part="C18" gate="G$1" x="-43.18" y="-591.82" smashed="yes">
<attribute name="NAME" x="-41.656" y="-591.439" size="1.778" layer="95"/>
<attribute name="VALUE" x="-41.656" y="-596.519" size="1.778" layer="96"/>
</instance>
<instance part="C19" gate="G$1" x="109.22" y="-591.82" smashed="yes">
<attribute name="NAME" x="110.744" y="-591.439" size="1.778" layer="95"/>
<attribute name="VALUE" x="110.744" y="-596.519" size="1.778" layer="96"/>
</instance>
<instance part="C20" gate="G$1" x="114.3" y="-594.36" smashed="yes">
<attribute name="NAME" x="115.824" y="-593.979" size="1.778" layer="95"/>
<attribute name="VALUE" x="115.824" y="-599.059" size="1.778" layer="96"/>
</instance>
<instance part="C21" gate="G$1" x="266.7" y="-594.36" smashed="yes">
<attribute name="NAME" x="268.224" y="-593.979" size="1.778" layer="95"/>
<attribute name="VALUE" x="268.224" y="-599.059" size="1.778" layer="96"/>
</instance>
<instance part="C22" gate="G$1" x="271.78" y="-596.9" smashed="yes">
<attribute name="NAME" x="273.304" y="-596.519" size="1.778" layer="95"/>
<attribute name="VALUE" x="273.304" y="-601.599" size="1.778" layer="96"/>
</instance>
<instance part="C23" gate="G$1" x="424.18" y="-594.36" smashed="yes">
<attribute name="NAME" x="425.704" y="-593.979" size="1.778" layer="95"/>
<attribute name="VALUE" x="425.704" y="-599.059" size="1.778" layer="96"/>
</instance>
<instance part="C24" gate="G$1" x="429.26" y="-596.9" smashed="yes">
<attribute name="NAME" x="430.784" y="-596.519" size="1.778" layer="95"/>
<attribute name="VALUE" x="430.784" y="-601.599" size="1.778" layer="96"/>
</instance>
<instance part="R14" gate="G$1" x="-53.34" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="-54.356" y="23.3934" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-49.53" y="23.368" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R15" gate="G$1" x="-60.96" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="-56.896" y="13.9954" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-62.23" y="13.97" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R16" gate="G$1" x="104.14" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="103.124" y="23.3934" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="107.95" y="23.368" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R17" gate="G$1" x="104.14" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="103.124" y="18.3134" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="107.95" y="18.288" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R18" gate="G$1" x="261.62" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="260.604" y="23.3934" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="265.43" y="23.368" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R19" gate="G$1" x="261.62" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="260.604" y="18.3134" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="265.43" y="18.288" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R20" gate="G$1" x="419.1" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="418.084" y="23.3934" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="422.91" y="23.368" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R21" gate="G$1" x="419.1" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="418.084" y="18.3134" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="422.91" y="18.288" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R22" gate="G$1" x="-45.72" y="-269.24" smashed="yes" rot="R180">
<attribute name="NAME" x="-46.736" y="-266.1666" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-41.91" y="-266.192" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R23" gate="G$1" x="-45.72" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="-46.736" y="-271.2466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-41.91" y="-271.272" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R24" gate="G$1" x="111.76" y="-269.24" smashed="yes" rot="R180">
<attribute name="NAME" x="110.744" y="-266.1666" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="115.57" y="-266.192" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R25" gate="G$1" x="111.76" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="110.744" y="-271.2466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="115.57" y="-271.272" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R26" gate="G$1" x="269.24" y="-269.24" smashed="yes" rot="R180">
<attribute name="NAME" x="268.224" y="-266.1666" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="273.05" y="-266.192" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R27" gate="G$1" x="269.24" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="268.224" y="-271.2466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="273.05" y="-271.272" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R28" gate="G$1" x="426.72" y="-269.24" smashed="yes" rot="R180">
<attribute name="NAME" x="425.704" y="-266.1666" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="430.53" y="-266.192" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R29" gate="G$1" x="426.72" y="-274.32" smashed="yes" rot="R180">
<attribute name="NAME" x="425.704" y="-271.2466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="430.53" y="-271.272" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R30" gate="G$1" x="-35.56" y="-561.34" smashed="yes" rot="R180">
<attribute name="NAME" x="-36.576" y="-558.2666" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-31.75" y="-558.292" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R31" gate="G$1" x="-35.56" y="-566.42" smashed="yes" rot="R180">
<attribute name="NAME" x="-36.576" y="-563.3466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-31.75" y="-563.372" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R32" gate="G$1" x="121.92" y="-563.88" smashed="yes" rot="R180">
<attribute name="NAME" x="120.904" y="-560.8066" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="-560.832" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R33" gate="G$1" x="121.92" y="-568.96" smashed="yes" rot="R180">
<attribute name="NAME" x="120.904" y="-565.8866" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="125.73" y="-565.912" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R34" gate="G$1" x="279.4" y="-566.42" smashed="yes" rot="R180">
<attribute name="NAME" x="278.384" y="-563.3466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="283.21" y="-563.372" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R35" gate="G$1" x="279.4" y="-571.5" smashed="yes" rot="R180">
<attribute name="NAME" x="278.384" y="-568.4266" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="283.21" y="-568.452" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R36" gate="G$1" x="436.88" y="-566.42" smashed="yes" rot="R180">
<attribute name="NAME" x="435.864" y="-563.3466" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="440.69" y="-563.372" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="R37" gate="G$1" x="436.88" y="-571.5" smashed="yes" rot="R180">
<attribute name="NAME" x="435.864" y="-568.4266" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="440.69" y="-568.452" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$16" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="ISET"/>
<wire x1="-50.8" y1="0" x2="-50.8" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="2.54" x2="-45.72" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGDP"/>
<wire x1="-17.78" y1="-17.78" x2="-7.62" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="73.66" x2="27.94" y2="73.66" width="0.1524" layer="91"/>
<wire x1="27.94" y1="73.66" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<junction x="27.94" y="73.66"/>
<wire x1="27.94" y1="48.26" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="22.86" x2="27.94" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-2.54" x2="27.94" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-27.94" x2="27.94" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-53.34" x2="27.94" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-78.74" x2="27.94" y2="-104.14" width="0.1524" layer="91"/>
<junction x="27.94" y="48.26"/>
<junction x="27.94" y="22.86"/>
<junction x="27.94" y="-2.54"/>
<junction x="27.94" y="-27.94"/>
<junction x="27.94" y="-53.34"/>
<junction x="27.94" y="-78.74"/>
<pinref part="LED1" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="73.66" x2="35.56" y2="73.66" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="22.86" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LED4" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-2.54" x2="27.94" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="LED5" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="-27.94" x2="35.56" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LED6" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="-53.34" x2="35.56" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="LED7" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-78.74" x2="27.94" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="LED8" gate="G$1" pin="DP"/>
<wire x1="27.94" y1="-104.14" x2="35.56" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG0"/>
<wire x1="-17.78" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="20.32" x2="-5.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="58.42" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="58.42" x2="35.56" y2="58.42" width="0.1524" layer="91"/>
<junction x="-5.08" y="58.42"/>
<pinref part="LED1" gate="G$1" pin="COM@2"/>
<pinref part="LED1" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG1"/>
<wire x1="-17.78" y1="17.78" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="33.02" x2="-2.54" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="33.02" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<junction x="-2.54" y="33.02"/>
<pinref part="LED2" gate="G$1" pin="COM@2"/>
<pinref part="LED2" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG2"/>
<wire x1="-17.78" y1="15.24" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<junction x="25.4" y="10.16"/>
<pinref part="LED3" gate="G$1" pin="COM@2"/>
<wire x1="35.56" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G$1" pin="COM@1"/>
<wire x1="25.4" y1="7.62" x2="35.56" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG3"/>
<wire x1="-17.78" y1="12.7" x2="22.86" y2="12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="12.7" x2="22.86" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-15.24" x2="35.56" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-15.24" x2="22.86" y2="-17.78" width="0.1524" layer="91"/>
<junction x="22.86" y="-15.24"/>
<wire x1="22.86" y1="-17.78" x2="35.56" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LED4" gate="G$1" pin="COM@2"/>
<pinref part="LED4" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG4"/>
<wire x1="-17.78" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<wire x1="20.32" y1="10.16" x2="20.32" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-40.64" x2="20.32" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-43.18" x2="35.56" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-40.64" x2="35.56" y2="-40.64" width="0.1524" layer="91"/>
<junction x="20.32" y="-40.64"/>
<pinref part="LED5" gate="G$1" pin="COM@2"/>
<pinref part="LED5" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG5"/>
<wire x1="-17.78" y1="7.62" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
<wire x1="17.78" y1="7.62" x2="17.78" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-66.04" x2="17.78" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-68.58" x2="35.56" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-66.04" x2="35.56" y2="-66.04" width="0.1524" layer="91"/>
<junction x="17.78" y="-66.04"/>
<pinref part="LED6" gate="G$1" pin="COM@2"/>
<pinref part="LED6" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="15.24" y1="-91.44" x2="35.56" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DIG6"/>
<wire x1="-17.78" y1="5.08" x2="15.24" y2="5.08" width="0.1524" layer="91"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-91.44" x2="15.24" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-93.98" x2="35.56" y2="-93.98" width="0.1524" layer="91"/>
<junction x="15.24" y="-91.44"/>
<pinref part="LED7" gate="G$1" pin="COM@2"/>
<pinref part="LED7" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DIG7"/>
<wire x1="-17.78" y1="2.54" x2="12.7" y2="2.54" width="0.1524" layer="91"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-116.84" x2="12.7" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-119.38" x2="35.56" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-116.84" x2="12.7" y2="-116.84" width="0.1524" layer="91"/>
<junction x="12.7" y="-116.84"/>
<pinref part="LED8" gate="G$1" pin="COM@2"/>
<pinref part="LED8" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGA"/>
<wire x1="-17.78" y1="0" x2="10.16" y2="0" width="0.1524" layer="91"/>
<wire x1="10.16" y1="0" x2="10.16" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-129.54" x2="60.96" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-129.54" x2="60.96" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-119.38" x2="60.96" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-93.98" x2="60.96" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-68.58" x2="60.96" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-43.18" x2="60.96" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-17.78" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<wire x1="60.96" y1="7.62" x2="60.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="60.96" y1="33.02" x2="60.96" y2="58.42" width="0.1524" layer="91"/>
<junction x="60.96" y="33.02"/>
<wire x1="55.88" y1="33.02" x2="60.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="55.88" y1="7.62" x2="60.96" y2="7.62" width="0.1524" layer="91"/>
<junction x="60.96" y="7.62"/>
<wire x1="55.88" y1="-17.78" x2="60.96" y2="-17.78" width="0.1524" layer="91"/>
<junction x="60.96" y="-17.78"/>
<wire x1="55.88" y1="-43.18" x2="60.96" y2="-43.18" width="0.1524" layer="91"/>
<junction x="60.96" y="-43.18"/>
<wire x1="55.88" y1="-68.58" x2="60.96" y2="-68.58" width="0.1524" layer="91"/>
<junction x="60.96" y="-68.58"/>
<wire x1="55.88" y1="-93.98" x2="60.96" y2="-93.98" width="0.1524" layer="91"/>
<junction x="60.96" y="-93.98"/>
<junction x="60.96" y="-119.38"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="55.88" y1="58.42" x2="60.96" y2="58.42" width="0.1524" layer="91"/>
<pinref part="LED8" gate="G$1" pin="A"/>
<wire x1="55.88" y1="-119.38" x2="60.96" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<pinref part="LED3" gate="G$1" pin="A"/>
<pinref part="LED4" gate="G$1" pin="A"/>
<pinref part="LED5" gate="G$1" pin="A"/>
<pinref part="LED6" gate="G$1" pin="A"/>
<pinref part="LED7" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGB"/>
<wire x1="-17.78" y1="-2.54" x2="7.62" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-132.08" x2="63.5" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-132.08" x2="63.5" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-116.84" x2="63.5" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-91.44" x2="63.5" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-66.04" x2="63.5" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-40.64" x2="63.5" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-15.24" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<wire x1="63.5" y1="10.16" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<wire x1="63.5" y1="35.56" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="60.96" x2="55.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="55.88" y1="35.56" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<junction x="63.5" y="35.56"/>
<wire x1="55.88" y1="10.16" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<junction x="63.5" y="10.16"/>
<wire x1="55.88" y1="-15.24" x2="63.5" y2="-15.24" width="0.1524" layer="91"/>
<junction x="63.5" y="-15.24"/>
<wire x1="55.88" y1="-40.64" x2="63.5" y2="-40.64" width="0.1524" layer="91"/>
<junction x="63.5" y="-40.64"/>
<wire x1="55.88" y1="-66.04" x2="63.5" y2="-66.04" width="0.1524" layer="91"/>
<junction x="63.5" y="-66.04"/>
<wire x1="55.88" y1="-91.44" x2="63.5" y2="-91.44" width="0.1524" layer="91"/>
<junction x="63.5" y="-91.44"/>
<wire x1="55.88" y1="-116.84" x2="63.5" y2="-116.84" width="0.1524" layer="91"/>
<junction x="63.5" y="-116.84"/>
<pinref part="LED1" gate="G$1" pin="B"/>
<pinref part="LED8" gate="G$1" pin="B"/>
<pinref part="LED2" gate="G$1" pin="B"/>
<pinref part="LED3" gate="G$1" pin="B"/>
<pinref part="LED4" gate="G$1" pin="B"/>
<pinref part="LED5" gate="G$1" pin="B"/>
<pinref part="LED6" gate="G$1" pin="B"/>
<pinref part="LED7" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGC"/>
<wire x1="-17.78" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-134.62" x2="66.04" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-134.62" x2="66.04" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-114.3" x2="66.04" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-88.9" x2="66.04" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-63.5" x2="66.04" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-38.1" x2="66.04" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-12.7" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<wire x1="66.04" y1="12.7" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<wire x1="66.04" y1="38.1" x2="66.04" y2="63.5" width="0.1524" layer="91"/>
<wire x1="66.04" y1="63.5" x2="55.88" y2="63.5" width="0.1524" layer="91"/>
<wire x1="55.88" y1="38.1" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<junction x="66.04" y="38.1"/>
<wire x1="55.88" y1="12.7" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<junction x="66.04" y="12.7"/>
<wire x1="55.88" y1="-12.7" x2="66.04" y2="-12.7" width="0.1524" layer="91"/>
<junction x="66.04" y="-12.7"/>
<wire x1="55.88" y1="-38.1" x2="66.04" y2="-38.1" width="0.1524" layer="91"/>
<junction x="66.04" y="-38.1"/>
<wire x1="55.88" y1="-63.5" x2="66.04" y2="-63.5" width="0.1524" layer="91"/>
<junction x="66.04" y="-63.5"/>
<wire x1="55.88" y1="-88.9" x2="66.04" y2="-88.9" width="0.1524" layer="91"/>
<junction x="66.04" y="-88.9"/>
<wire x1="55.88" y1="-114.3" x2="66.04" y2="-114.3" width="0.1524" layer="91"/>
<junction x="66.04" y="-114.3"/>
<pinref part="LED1" gate="G$1" pin="C"/>
<pinref part="LED8" gate="G$1" pin="C"/>
<pinref part="LED2" gate="G$1" pin="C"/>
<pinref part="LED3" gate="G$1" pin="C"/>
<pinref part="LED4" gate="G$1" pin="C"/>
<pinref part="LED5" gate="G$1" pin="C"/>
<pinref part="LED6" gate="G$1" pin="C"/>
<pinref part="LED7" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGD"/>
<wire x1="-17.78" y1="-7.62" x2="2.54" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-7.62" x2="2.54" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-137.16" x2="68.58" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-137.16" x2="68.58" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-111.76" x2="68.58" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-86.36" x2="68.58" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-60.96" x2="68.58" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-35.56" x2="68.58" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-10.16" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="68.58" y2="40.64" width="0.1524" layer="91"/>
<wire x1="68.58" y1="40.64" x2="68.58" y2="66.04" width="0.1524" layer="91"/>
<wire x1="68.58" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<wire x1="55.88" y1="40.64" x2="68.58" y2="40.64" width="0.1524" layer="91"/>
<junction x="68.58" y="40.64"/>
<wire x1="55.88" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<junction x="68.58" y="15.24"/>
<wire x1="55.88" y1="-10.16" x2="68.58" y2="-10.16" width="0.1524" layer="91"/>
<junction x="68.58" y="-10.16"/>
<wire x1="55.88" y1="-35.56" x2="68.58" y2="-35.56" width="0.1524" layer="91"/>
<junction x="68.58" y="-35.56"/>
<wire x1="55.88" y1="-60.96" x2="68.58" y2="-60.96" width="0.1524" layer="91"/>
<junction x="68.58" y="-60.96"/>
<wire x1="55.88" y1="-86.36" x2="68.58" y2="-86.36" width="0.1524" layer="91"/>
<junction x="68.58" y="-86.36"/>
<wire x1="55.88" y1="-111.76" x2="68.58" y2="-111.76" width="0.1524" layer="91"/>
<junction x="68.58" y="-111.76"/>
<pinref part="LED1" gate="G$1" pin="D"/>
<pinref part="LED8" gate="G$1" pin="D"/>
<pinref part="LED2" gate="G$1" pin="D"/>
<pinref part="LED3" gate="G$1" pin="D"/>
<pinref part="LED4" gate="G$1" pin="D"/>
<pinref part="LED5" gate="G$1" pin="D"/>
<pinref part="LED6" gate="G$1" pin="D"/>
<pinref part="LED7" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGE"/>
<wire x1="-17.78" y1="-10.16" x2="0" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="0" y1="-10.16" x2="0" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="0" y1="-139.7" x2="71.12" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-139.7" x2="71.12" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-109.22" x2="71.12" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-83.82" x2="71.12" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-58.42" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-33.02" x2="71.12" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-7.62" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
<wire x1="71.12" y1="17.78" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<wire x1="71.12" y1="43.18" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<wire x1="71.12" y1="68.58" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
<wire x1="55.88" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<junction x="71.12" y="43.18"/>
<wire x1="55.88" y1="17.78" x2="71.12" y2="17.78" width="0.1524" layer="91"/>
<junction x="71.12" y="17.78"/>
<wire x1="55.88" y1="-7.62" x2="71.12" y2="-7.62" width="0.1524" layer="91"/>
<junction x="71.12" y="-7.62"/>
<wire x1="55.88" y1="-33.02" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<junction x="71.12" y="-33.02"/>
<wire x1="55.88" y1="-58.42" x2="71.12" y2="-58.42" width="0.1524" layer="91"/>
<junction x="71.12" y="-58.42"/>
<wire x1="55.88" y1="-83.82" x2="71.12" y2="-83.82" width="0.1524" layer="91"/>
<junction x="71.12" y="-83.82"/>
<wire x1="55.88" y1="-109.22" x2="71.12" y2="-109.22" width="0.1524" layer="91"/>
<junction x="71.12" y="-109.22"/>
<pinref part="LED1" gate="G$1" pin="E"/>
<pinref part="LED8" gate="G$1" pin="E"/>
<pinref part="LED2" gate="G$1" pin="E"/>
<pinref part="LED3" gate="G$1" pin="E"/>
<pinref part="LED4" gate="G$1" pin="E"/>
<pinref part="LED5" gate="G$1" pin="E"/>
<pinref part="LED6" gate="G$1" pin="E"/>
<pinref part="LED7" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGG"/>
<wire x1="-17.78" y1="-15.24" x2="-5.08" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-15.24" x2="-5.08" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-144.78" x2="76.2" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-144.78" x2="76.2" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-104.14" x2="76.2" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-78.74" x2="76.2" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-53.34" x2="76.2" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-27.94" x2="76.2" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-2.54" x2="76.2" y2="22.86" width="0.1524" layer="91"/>
<wire x1="76.2" y1="22.86" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="76.2" y1="73.66" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
<wire x1="55.88" y1="48.26" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<junction x="76.2" y="48.26"/>
<wire x1="55.88" y1="22.86" x2="76.2" y2="22.86" width="0.1524" layer="91"/>
<junction x="76.2" y="22.86"/>
<wire x1="55.88" y1="-2.54" x2="76.2" y2="-2.54" width="0.1524" layer="91"/>
<junction x="76.2" y="-2.54"/>
<wire x1="55.88" y1="-27.94" x2="76.2" y2="-27.94" width="0.1524" layer="91"/>
<junction x="76.2" y="-27.94"/>
<wire x1="55.88" y1="-53.34" x2="76.2" y2="-53.34" width="0.1524" layer="91"/>
<junction x="76.2" y="-53.34"/>
<wire x1="55.88" y1="-78.74" x2="76.2" y2="-78.74" width="0.1524" layer="91"/>
<junction x="76.2" y="-78.74"/>
<wire x1="55.88" y1="-104.14" x2="76.2" y2="-104.14" width="0.1524" layer="91"/>
<junction x="76.2" y="-104.14"/>
<pinref part="LED1" gate="G$1" pin="G"/>
<pinref part="LED8" gate="G$1" pin="G"/>
<pinref part="LED2" gate="G$1" pin="G"/>
<pinref part="LED3" gate="G$1" pin="G"/>
<pinref part="LED4" gate="G$1" pin="G"/>
<pinref part="LED5" gate="G$1" pin="G"/>
<pinref part="LED6" gate="G$1" pin="G"/>
<pinref part="LED7" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SEGF"/>
<wire x1="-17.78" y1="-12.7" x2="-2.54" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-12.7" x2="-2.54" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-142.24" x2="73.66" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-142.24" x2="73.66" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-106.68" x2="73.66" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-81.28" x2="73.66" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-55.88" x2="73.66" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-30.48" x2="73.66" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-5.08" x2="73.66" y2="20.32" width="0.1524" layer="91"/>
<wire x1="73.66" y1="20.32" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="73.66" y1="45.72" x2="73.66" y2="71.12" width="0.1524" layer="91"/>
<wire x1="73.66" y1="71.12" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<wire x1="55.88" y1="45.72" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<junction x="73.66" y="45.72"/>
<wire x1="55.88" y1="20.32" x2="73.66" y2="20.32" width="0.1524" layer="91"/>
<junction x="73.66" y="20.32"/>
<wire x1="55.88" y1="-5.08" x2="73.66" y2="-5.08" width="0.1524" layer="91"/>
<junction x="73.66" y="-5.08"/>
<wire x1="55.88" y1="-30.48" x2="73.66" y2="-30.48" width="0.1524" layer="91"/>
<junction x="73.66" y="-30.48"/>
<wire x1="55.88" y1="-55.88" x2="73.66" y2="-55.88" width="0.1524" layer="91"/>
<junction x="73.66" y="-55.88"/>
<wire x1="55.88" y1="-81.28" x2="73.66" y2="-81.28" width="0.1524" layer="91"/>
<junction x="73.66" y="-81.28"/>
<wire x1="55.88" y1="-106.68" x2="73.66" y2="-106.68" width="0.1524" layer="91"/>
<junction x="73.66" y="-106.68"/>
<pinref part="LED1" gate="G$1" pin="F"/>
<pinref part="LED8" gate="G$1" pin="F"/>
<pinref part="LED2" gate="G$1" pin="F"/>
<pinref part="LED3" gate="G$1" pin="F"/>
<pinref part="LED4" gate="G$1" pin="F"/>
<pinref part="LED5" gate="G$1" pin="F"/>
<pinref part="LED6" gate="G$1" pin="F"/>
<pinref part="LED7" gate="G$1" pin="F"/>
</segment>
</net>
<net name="DIN" class="0">
<segment>
<wire x1="-99.06" y1="-7.62" x2="-93.98" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-7.62" x2="-93.98" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="DIN"/>
<wire x1="-93.98" y1="10.16" x2="-45.72" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="4"/>
<label x="-63.5" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DOUT"/>
<wire x1="-45.72" y1="7.62" x2="-86.36" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="7.62" x2="-86.36" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="DIN"/>
<wire x1="111.76" y1="10.16" x2="91.44" y2="10.16" width="0.1524" layer="91"/>
<wire x1="91.44" y1="10.16" x2="91.44" y2="86.36" width="0.1524" layer="91"/>
<wire x1="91.44" y1="86.36" x2="-86.36" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="-99.06" y1="-10.16" x2="-91.44" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-10.16" x2="-91.44" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="-91.44" y1="91.44" x2="-91.44" y2="20.32" width="0.1524" layer="91"/>
<junction x="-91.44" y="20.32"/>
<wire x1="-91.44" y1="91.44" x2="99.06" y2="91.44" width="0.1524" layer="91"/>
<wire x1="99.06" y1="91.44" x2="256.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="99.06" y1="20.32" x2="99.06" y2="91.44" width="0.1524" layer="91"/>
<junction x="99.06" y="91.44"/>
<wire x1="256.54" y1="20.32" x2="256.54" y2="91.44" width="0.1524" layer="91"/>
<junction x="256.54" y="91.44"/>
<wire x1="256.54" y1="91.44" x2="414.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-198.12" x2="106.68" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-198.12" x2="264.16" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-198.12" x2="421.64" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-490.22" x2="116.84" y2="-490.22" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-563.88" x2="116.84" y2="-490.22" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-566.42" x2="274.32" y2="-490.22" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-490.22" x2="274.32" y2="-490.22" width="0.1524" layer="91"/>
<junction x="116.84" y="-490.22"/>
<wire x1="431.8" y1="-566.42" x2="431.8" y2="-490.22" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-490.22" x2="431.8" y2="-490.22" width="0.1524" layer="91"/>
<junction x="274.32" y="-490.22"/>
<wire x1="431.8" y1="-490.22" x2="548.64" y2="-490.22" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-490.22" x2="548.64" y2="-497.84" width="0.1524" layer="91"/>
<junction x="431.8" y="-490.22"/>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="548.64" y1="-497.84" x2="589.28" y2="-497.84" width="0.1524" layer="91"/>
<wire x1="414.02" y1="20.32" x2="414.02" y2="91.44" width="0.1524" layer="91"/>
<junction x="414.02" y="91.44"/>
<wire x1="-50.8" y1="-269.24" x2="-50.8" y2="-198.12" width="0.1524" layer="91"/>
<junction x="-50.8" y="-198.12"/>
<wire x1="106.68" y1="-269.24" x2="106.68" y2="-198.12" width="0.1524" layer="91"/>
<junction x="106.68" y="-198.12"/>
<wire x1="264.16" y1="-269.24" x2="264.16" y2="-198.12" width="0.1524" layer="91"/>
<junction x="264.16" y="-198.12"/>
<wire x1="421.64" y1="-269.24" x2="421.64" y2="-198.12" width="0.1524" layer="91"/>
<junction x="421.64" y="-198.12"/>
<wire x1="-40.64" y1="-561.34" x2="-40.64" y2="-490.22" width="0.1524" layer="91"/>
<junction x="-40.64" y="-490.22"/>
<wire x1="414.02" y1="91.44" x2="563.88" y2="91.44" width="0.1524" layer="91"/>
<wire x1="563.88" y1="91.44" x2="563.88" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-170.18" x2="-50.8" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-170.18" x2="-50.8" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="421.64" y1="-198.12" x2="609.6" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="609.6" y1="-198.12" x2="609.6" y2="-459.74" width="0.1524" layer="91"/>
<wire x1="609.6" y1="-459.74" x2="-40.64" y2="-459.74" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-459.74" x2="-40.64" y2="-490.22" width="0.1524" layer="91"/>
<label x="-96.52" y="33.02" size="1.778" layer="95"/>
<wire x1="-91.44" y1="20.32" x2="-58.42" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="R16" gate="G$1" pin="2"/>
<junction x="99.06" y="20.32"/>
<pinref part="R18" gate="G$1" pin="2"/>
<junction x="256.54" y="20.32"/>
<pinref part="R20" gate="G$1" pin="2"/>
<junction x="414.02" y="20.32"/>
<pinref part="R22" gate="G$1" pin="2"/>
<junction x="-50.8" y="-269.24"/>
<pinref part="R24" gate="G$1" pin="2"/>
<junction x="106.68" y="-269.24"/>
<pinref part="R26" gate="G$1" pin="2"/>
<junction x="264.16" y="-269.24"/>
<pinref part="R28" gate="G$1" pin="2"/>
<junction x="421.64" y="-269.24"/>
<pinref part="R30" gate="G$1" pin="2"/>
<junction x="-40.64" y="-561.34"/>
<pinref part="R32" gate="G$1" pin="2"/>
<junction x="116.84" y="-563.88"/>
<pinref part="R34" gate="G$1" pin="2"/>
<junction x="274.32" y="-566.42"/>
<pinref part="R36" gate="G$1" pin="2"/>
<junction x="431.8" y="-566.42"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="IC2" gate="G$1" pin="ISET"/>
<wire x1="106.68" y1="0" x2="106.68" y2="2.54" width="0.1524" layer="91"/>
<wire x1="106.68" y1="2.54" x2="111.76" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGDP"/>
<wire x1="139.7" y1="-17.78" x2="149.86" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-17.78" x2="149.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="149.86" y1="73.66" x2="185.42" y2="73.66" width="0.1524" layer="91"/>
<wire x1="185.42" y1="73.66" x2="185.42" y2="48.26" width="0.1524" layer="91"/>
<junction x="185.42" y="73.66"/>
<wire x1="185.42" y1="48.26" x2="185.42" y2="22.86" width="0.1524" layer="91"/>
<wire x1="185.42" y1="22.86" x2="185.42" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-2.54" x2="185.42" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-27.94" x2="185.42" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-53.34" x2="185.42" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-78.74" x2="185.42" y2="-104.14" width="0.1524" layer="91"/>
<junction x="185.42" y="48.26"/>
<junction x="185.42" y="22.86"/>
<junction x="185.42" y="-2.54"/>
<junction x="185.42" y="-27.94"/>
<junction x="185.42" y="-53.34"/>
<junction x="185.42" y="-78.74"/>
<pinref part="LED9" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="73.66" x2="193.04" y2="73.66" width="0.1524" layer="91"/>
<pinref part="LED10" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="48.26" x2="193.04" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LED11" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="22.86" x2="193.04" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LED12" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-2.54" x2="185.42" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="LED13" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="-27.94" x2="193.04" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LED14" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="-53.34" x2="193.04" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="LED15" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-78.74" x2="185.42" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="LED16" gate="G$1" pin="DP"/>
<wire x1="185.42" y1="-104.14" x2="193.04" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG0"/>
<wire x1="139.7" y1="20.32" x2="152.4" y2="20.32" width="0.1524" layer="91"/>
<wire x1="152.4" y1="20.32" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="152.4" y1="58.42" x2="152.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="152.4" y1="60.96" x2="193.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="152.4" y1="58.42" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<junction x="152.4" y="58.42"/>
<pinref part="LED9" gate="G$1" pin="COM@2"/>
<pinref part="LED9" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG1"/>
<wire x1="139.7" y1="17.78" x2="154.94" y2="17.78" width="0.1524" layer="91"/>
<wire x1="154.94" y1="17.78" x2="154.94" y2="33.02" width="0.1524" layer="91"/>
<wire x1="154.94" y1="33.02" x2="154.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="154.94" y1="35.56" x2="193.04" y2="35.56" width="0.1524" layer="91"/>
<wire x1="154.94" y1="33.02" x2="193.04" y2="33.02" width="0.1524" layer="91"/>
<junction x="154.94" y="33.02"/>
<pinref part="LED10" gate="G$1" pin="COM@2"/>
<pinref part="LED10" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG2"/>
<wire x1="139.7" y1="15.24" x2="182.88" y2="15.24" width="0.1524" layer="91"/>
<wire x1="182.88" y1="15.24" x2="182.88" y2="10.16" width="0.1524" layer="91"/>
<wire x1="182.88" y1="10.16" x2="182.88" y2="7.62" width="0.1524" layer="91"/>
<junction x="182.88" y="10.16"/>
<pinref part="LED11" gate="G$1" pin="COM@2"/>
<wire x1="193.04" y1="10.16" x2="182.88" y2="10.16" width="0.1524" layer="91"/>
<pinref part="LED11" gate="G$1" pin="COM@1"/>
<wire x1="182.88" y1="7.62" x2="193.04" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG3"/>
<wire x1="139.7" y1="12.7" x2="180.34" y2="12.7" width="0.1524" layer="91"/>
<wire x1="180.34" y1="12.7" x2="180.34" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-15.24" x2="193.04" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-15.24" x2="180.34" y2="-17.78" width="0.1524" layer="91"/>
<junction x="180.34" y="-15.24"/>
<wire x1="180.34" y1="-17.78" x2="193.04" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LED12" gate="G$1" pin="COM@2"/>
<pinref part="LED12" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG4"/>
<wire x1="139.7" y1="10.16" x2="177.8" y2="10.16" width="0.1524" layer="91"/>
<wire x1="177.8" y1="10.16" x2="177.8" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-40.64" x2="177.8" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-40.64" x2="193.04" y2="-40.64" width="0.1524" layer="91"/>
<junction x="177.8" y="-40.64"/>
<pinref part="LED13" gate="G$1" pin="COM@2"/>
<pinref part="LED13" gate="G$1" pin="COM@1"/>
<wire x1="177.8" y1="-43.18" x2="193.04" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG5"/>
<wire x1="139.7" y1="7.62" x2="175.26" y2="7.62" width="0.1524" layer="91"/>
<wire x1="175.26" y1="7.62" x2="175.26" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-66.04" x2="175.26" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-68.58" x2="193.04" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-66.04" x2="193.04" y2="-66.04" width="0.1524" layer="91"/>
<junction x="175.26" y="-66.04"/>
<pinref part="LED14" gate="G$1" pin="COM@2"/>
<pinref part="LED14" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="172.72" y1="-91.44" x2="193.04" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="DIG6"/>
<wire x1="139.7" y1="5.08" x2="172.72" y2="5.08" width="0.1524" layer="91"/>
<wire x1="172.72" y1="5.08" x2="172.72" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-91.44" x2="172.72" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-93.98" x2="193.04" y2="-93.98" width="0.1524" layer="91"/>
<junction x="172.72" y="-91.44"/>
<pinref part="LED15" gate="G$1" pin="COM@2"/>
<pinref part="LED15" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DIG7"/>
<wire x1="139.7" y1="2.54" x2="170.18" y2="2.54" width="0.1524" layer="91"/>
<wire x1="170.18" y1="2.54" x2="170.18" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-116.84" x2="170.18" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-119.38" x2="193.04" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-116.84" x2="170.18" y2="-116.84" width="0.1524" layer="91"/>
<junction x="170.18" y="-116.84"/>
<pinref part="LED16" gate="G$1" pin="COM@2"/>
<pinref part="LED16" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGA"/>
<wire x1="139.7" y1="0" x2="167.64" y2="0" width="0.1524" layer="91"/>
<wire x1="167.64" y1="0" x2="167.64" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-129.54" x2="218.44" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-129.54" x2="218.44" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-119.38" x2="218.44" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-93.98" x2="218.44" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-68.58" x2="218.44" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-43.18" x2="218.44" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-17.78" x2="218.44" y2="7.62" width="0.1524" layer="91"/>
<wire x1="218.44" y1="7.62" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<wire x1="218.44" y1="33.02" x2="218.44" y2="58.42" width="0.1524" layer="91"/>
<junction x="218.44" y="33.02"/>
<wire x1="213.36" y1="33.02" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<wire x1="213.36" y1="7.62" x2="218.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="218.44" y="7.62"/>
<wire x1="213.36" y1="-17.78" x2="218.44" y2="-17.78" width="0.1524" layer="91"/>
<junction x="218.44" y="-17.78"/>
<wire x1="213.36" y1="-43.18" x2="218.44" y2="-43.18" width="0.1524" layer="91"/>
<junction x="218.44" y="-43.18"/>
<wire x1="213.36" y1="-68.58" x2="218.44" y2="-68.58" width="0.1524" layer="91"/>
<junction x="218.44" y="-68.58"/>
<wire x1="213.36" y1="-93.98" x2="218.44" y2="-93.98" width="0.1524" layer="91"/>
<junction x="218.44" y="-93.98"/>
<junction x="218.44" y="-119.38"/>
<pinref part="LED9" gate="G$1" pin="A"/>
<wire x1="213.36" y1="58.42" x2="218.44" y2="58.42" width="0.1524" layer="91"/>
<pinref part="LED16" gate="G$1" pin="A"/>
<wire x1="213.36" y1="-119.38" x2="218.44" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="LED10" gate="G$1" pin="A"/>
<pinref part="LED11" gate="G$1" pin="A"/>
<pinref part="LED12" gate="G$1" pin="A"/>
<pinref part="LED13" gate="G$1" pin="A"/>
<pinref part="LED14" gate="G$1" pin="A"/>
<pinref part="LED15" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGB"/>
<wire x1="139.7" y1="-2.54" x2="165.1" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-2.54" x2="165.1" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-132.08" x2="220.98" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-132.08" x2="220.98" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-116.84" x2="220.98" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-91.44" x2="220.98" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-66.04" x2="220.98" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-40.64" x2="220.98" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-15.24" x2="220.98" y2="10.16" width="0.1524" layer="91"/>
<wire x1="220.98" y1="10.16" x2="220.98" y2="35.56" width="0.1524" layer="91"/>
<wire x1="220.98" y1="35.56" x2="220.98" y2="60.96" width="0.1524" layer="91"/>
<wire x1="220.98" y1="60.96" x2="213.36" y2="60.96" width="0.1524" layer="91"/>
<wire x1="213.36" y1="35.56" x2="220.98" y2="35.56" width="0.1524" layer="91"/>
<junction x="220.98" y="35.56"/>
<wire x1="213.36" y1="10.16" x2="220.98" y2="10.16" width="0.1524" layer="91"/>
<junction x="220.98" y="10.16"/>
<wire x1="213.36" y1="-15.24" x2="220.98" y2="-15.24" width="0.1524" layer="91"/>
<junction x="220.98" y="-15.24"/>
<wire x1="213.36" y1="-40.64" x2="220.98" y2="-40.64" width="0.1524" layer="91"/>
<junction x="220.98" y="-40.64"/>
<wire x1="213.36" y1="-66.04" x2="220.98" y2="-66.04" width="0.1524" layer="91"/>
<junction x="220.98" y="-66.04"/>
<wire x1="213.36" y1="-91.44" x2="220.98" y2="-91.44" width="0.1524" layer="91"/>
<junction x="220.98" y="-91.44"/>
<wire x1="213.36" y1="-116.84" x2="220.98" y2="-116.84" width="0.1524" layer="91"/>
<junction x="220.98" y="-116.84"/>
<pinref part="LED9" gate="G$1" pin="B"/>
<pinref part="LED16" gate="G$1" pin="B"/>
<pinref part="LED10" gate="G$1" pin="B"/>
<pinref part="LED11" gate="G$1" pin="B"/>
<pinref part="LED12" gate="G$1" pin="B"/>
<pinref part="LED13" gate="G$1" pin="B"/>
<pinref part="LED14" gate="G$1" pin="B"/>
<pinref part="LED15" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGC"/>
<wire x1="139.7" y1="-5.08" x2="162.56" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-5.08" x2="162.56" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-134.62" x2="223.52" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-134.62" x2="223.52" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-114.3" x2="223.52" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-88.9" x2="223.52" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-63.5" x2="223.52" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-38.1" x2="223.52" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-12.7" x2="223.52" y2="12.7" width="0.1524" layer="91"/>
<wire x1="223.52" y1="12.7" x2="223.52" y2="38.1" width="0.1524" layer="91"/>
<wire x1="223.52" y1="38.1" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<wire x1="223.52" y1="63.5" x2="213.36" y2="63.5" width="0.1524" layer="91"/>
<wire x1="213.36" y1="38.1" x2="223.52" y2="38.1" width="0.1524" layer="91"/>
<junction x="223.52" y="38.1"/>
<wire x1="213.36" y1="12.7" x2="223.52" y2="12.7" width="0.1524" layer="91"/>
<junction x="223.52" y="12.7"/>
<wire x1="213.36" y1="-12.7" x2="223.52" y2="-12.7" width="0.1524" layer="91"/>
<junction x="223.52" y="-12.7"/>
<wire x1="213.36" y1="-38.1" x2="223.52" y2="-38.1" width="0.1524" layer="91"/>
<junction x="223.52" y="-38.1"/>
<wire x1="213.36" y1="-63.5" x2="223.52" y2="-63.5" width="0.1524" layer="91"/>
<junction x="223.52" y="-63.5"/>
<wire x1="213.36" y1="-88.9" x2="223.52" y2="-88.9" width="0.1524" layer="91"/>
<junction x="223.52" y="-88.9"/>
<wire x1="213.36" y1="-114.3" x2="223.52" y2="-114.3" width="0.1524" layer="91"/>
<junction x="223.52" y="-114.3"/>
<pinref part="LED9" gate="G$1" pin="C"/>
<pinref part="LED16" gate="G$1" pin="C"/>
<pinref part="LED10" gate="G$1" pin="C"/>
<pinref part="LED11" gate="G$1" pin="C"/>
<pinref part="LED12" gate="G$1" pin="C"/>
<pinref part="LED13" gate="G$1" pin="C"/>
<pinref part="LED14" gate="G$1" pin="C"/>
<pinref part="LED15" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGD"/>
<wire x1="139.7" y1="-7.62" x2="160.02" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-7.62" x2="160.02" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-137.16" x2="226.06" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-137.16" x2="226.06" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-111.76" x2="226.06" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-86.36" x2="226.06" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-60.96" x2="226.06" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-35.56" x2="226.06" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-10.16" x2="226.06" y2="15.24" width="0.1524" layer="91"/>
<wire x1="226.06" y1="15.24" x2="226.06" y2="40.64" width="0.1524" layer="91"/>
<wire x1="226.06" y1="40.64" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<wire x1="226.06" y1="66.04" x2="213.36" y2="66.04" width="0.1524" layer="91"/>
<wire x1="213.36" y1="40.64" x2="226.06" y2="40.64" width="0.1524" layer="91"/>
<junction x="226.06" y="40.64"/>
<wire x1="213.36" y1="15.24" x2="226.06" y2="15.24" width="0.1524" layer="91"/>
<junction x="226.06" y="15.24"/>
<wire x1="213.36" y1="-10.16" x2="226.06" y2="-10.16" width="0.1524" layer="91"/>
<junction x="226.06" y="-10.16"/>
<wire x1="213.36" y1="-35.56" x2="226.06" y2="-35.56" width="0.1524" layer="91"/>
<junction x="226.06" y="-35.56"/>
<wire x1="213.36" y1="-60.96" x2="226.06" y2="-60.96" width="0.1524" layer="91"/>
<junction x="226.06" y="-60.96"/>
<wire x1="213.36" y1="-86.36" x2="226.06" y2="-86.36" width="0.1524" layer="91"/>
<junction x="226.06" y="-86.36"/>
<wire x1="213.36" y1="-111.76" x2="226.06" y2="-111.76" width="0.1524" layer="91"/>
<junction x="226.06" y="-111.76"/>
<pinref part="LED9" gate="G$1" pin="D"/>
<pinref part="LED16" gate="G$1" pin="D"/>
<pinref part="LED10" gate="G$1" pin="D"/>
<pinref part="LED11" gate="G$1" pin="D"/>
<pinref part="LED12" gate="G$1" pin="D"/>
<pinref part="LED13" gate="G$1" pin="D"/>
<pinref part="LED14" gate="G$1" pin="D"/>
<pinref part="LED15" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGE"/>
<wire x1="139.7" y1="-10.16" x2="157.48" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-10.16" x2="157.48" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-139.7" x2="228.6" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-139.7" x2="228.6" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-109.22" x2="228.6" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-83.82" x2="228.6" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-58.42" x2="228.6" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-33.02" x2="228.6" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-7.62" x2="228.6" y2="17.78" width="0.1524" layer="91"/>
<wire x1="228.6" y1="17.78" x2="228.6" y2="43.18" width="0.1524" layer="91"/>
<wire x1="228.6" y1="43.18" x2="228.6" y2="68.58" width="0.1524" layer="91"/>
<wire x1="228.6" y1="68.58" x2="213.36" y2="68.58" width="0.1524" layer="91"/>
<wire x1="213.36" y1="43.18" x2="228.6" y2="43.18" width="0.1524" layer="91"/>
<junction x="228.6" y="43.18"/>
<wire x1="213.36" y1="17.78" x2="228.6" y2="17.78" width="0.1524" layer="91"/>
<junction x="228.6" y="17.78"/>
<wire x1="213.36" y1="-7.62" x2="228.6" y2="-7.62" width="0.1524" layer="91"/>
<junction x="228.6" y="-7.62"/>
<wire x1="213.36" y1="-33.02" x2="228.6" y2="-33.02" width="0.1524" layer="91"/>
<junction x="228.6" y="-33.02"/>
<wire x1="213.36" y1="-58.42" x2="228.6" y2="-58.42" width="0.1524" layer="91"/>
<junction x="228.6" y="-58.42"/>
<wire x1="213.36" y1="-83.82" x2="228.6" y2="-83.82" width="0.1524" layer="91"/>
<junction x="228.6" y="-83.82"/>
<wire x1="213.36" y1="-109.22" x2="228.6" y2="-109.22" width="0.1524" layer="91"/>
<junction x="228.6" y="-109.22"/>
<pinref part="LED9" gate="G$1" pin="E"/>
<pinref part="LED16" gate="G$1" pin="E"/>
<pinref part="LED10" gate="G$1" pin="E"/>
<pinref part="LED11" gate="G$1" pin="E"/>
<pinref part="LED12" gate="G$1" pin="E"/>
<pinref part="LED13" gate="G$1" pin="E"/>
<pinref part="LED14" gate="G$1" pin="E"/>
<pinref part="LED15" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGG"/>
<wire x1="139.7" y1="-15.24" x2="152.4" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-15.24" x2="152.4" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-144.78" x2="233.68" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-144.78" x2="233.68" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-104.14" x2="233.68" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-78.74" x2="233.68" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-53.34" x2="233.68" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-27.94" x2="233.68" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-2.54" x2="233.68" y2="22.86" width="0.1524" layer="91"/>
<wire x1="233.68" y1="22.86" x2="233.68" y2="48.26" width="0.1524" layer="91"/>
<wire x1="233.68" y1="48.26" x2="233.68" y2="73.66" width="0.1524" layer="91"/>
<wire x1="233.68" y1="73.66" x2="213.36" y2="73.66" width="0.1524" layer="91"/>
<wire x1="213.36" y1="48.26" x2="233.68" y2="48.26" width="0.1524" layer="91"/>
<junction x="233.68" y="48.26"/>
<wire x1="213.36" y1="22.86" x2="233.68" y2="22.86" width="0.1524" layer="91"/>
<junction x="233.68" y="22.86"/>
<wire x1="213.36" y1="-2.54" x2="233.68" y2="-2.54" width="0.1524" layer="91"/>
<junction x="233.68" y="-2.54"/>
<wire x1="213.36" y1="-27.94" x2="233.68" y2="-27.94" width="0.1524" layer="91"/>
<junction x="233.68" y="-27.94"/>
<wire x1="213.36" y1="-53.34" x2="233.68" y2="-53.34" width="0.1524" layer="91"/>
<junction x="233.68" y="-53.34"/>
<wire x1="213.36" y1="-78.74" x2="233.68" y2="-78.74" width="0.1524" layer="91"/>
<junction x="233.68" y="-78.74"/>
<wire x1="213.36" y1="-104.14" x2="233.68" y2="-104.14" width="0.1524" layer="91"/>
<junction x="233.68" y="-104.14"/>
<pinref part="LED9" gate="G$1" pin="G"/>
<pinref part="LED16" gate="G$1" pin="G"/>
<pinref part="LED10" gate="G$1" pin="G"/>
<pinref part="LED11" gate="G$1" pin="G"/>
<pinref part="LED12" gate="G$1" pin="G"/>
<pinref part="LED13" gate="G$1" pin="G"/>
<pinref part="LED14" gate="G$1" pin="G"/>
<pinref part="LED15" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="SEGF"/>
<wire x1="139.7" y1="-12.7" x2="154.94" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-12.7" x2="154.94" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-142.24" x2="231.14" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-142.24" x2="231.14" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-106.68" x2="231.14" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-81.28" x2="231.14" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-55.88" x2="231.14" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-30.48" x2="231.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-5.08" x2="231.14" y2="20.32" width="0.1524" layer="91"/>
<wire x1="231.14" y1="20.32" x2="231.14" y2="45.72" width="0.1524" layer="91"/>
<wire x1="231.14" y1="45.72" x2="231.14" y2="71.12" width="0.1524" layer="91"/>
<wire x1="231.14" y1="71.12" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
<wire x1="213.36" y1="45.72" x2="231.14" y2="45.72" width="0.1524" layer="91"/>
<junction x="231.14" y="45.72"/>
<wire x1="213.36" y1="20.32" x2="231.14" y2="20.32" width="0.1524" layer="91"/>
<junction x="231.14" y="20.32"/>
<wire x1="213.36" y1="-5.08" x2="231.14" y2="-5.08" width="0.1524" layer="91"/>
<junction x="231.14" y="-5.08"/>
<wire x1="213.36" y1="-30.48" x2="231.14" y2="-30.48" width="0.1524" layer="91"/>
<junction x="231.14" y="-30.48"/>
<wire x1="213.36" y1="-55.88" x2="231.14" y2="-55.88" width="0.1524" layer="91"/>
<junction x="231.14" y="-55.88"/>
<wire x1="213.36" y1="-81.28" x2="231.14" y2="-81.28" width="0.1524" layer="91"/>
<junction x="231.14" y="-81.28"/>
<wire x1="213.36" y1="-106.68" x2="231.14" y2="-106.68" width="0.1524" layer="91"/>
<junction x="231.14" y="-106.68"/>
<pinref part="LED9" gate="G$1" pin="F"/>
<pinref part="LED16" gate="G$1" pin="F"/>
<pinref part="LED10" gate="G$1" pin="F"/>
<pinref part="LED11" gate="G$1" pin="F"/>
<pinref part="LED12" gate="G$1" pin="F"/>
<pinref part="LED13" gate="G$1" pin="F"/>
<pinref part="LED14" gate="G$1" pin="F"/>
<pinref part="LED15" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="IC3" gate="G$1" pin="ISET"/>
<wire x1="264.16" y1="0" x2="264.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="264.16" y1="2.54" x2="269.24" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGDP"/>
<wire x1="297.18" y1="-17.78" x2="307.34" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-17.78" x2="307.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="307.34" y1="73.66" x2="342.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="342.9" y1="73.66" x2="342.9" y2="48.26" width="0.1524" layer="91"/>
<junction x="342.9" y="73.66"/>
<wire x1="342.9" y1="48.26" x2="342.9" y2="22.86" width="0.1524" layer="91"/>
<wire x1="342.9" y1="22.86" x2="342.9" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-2.54" x2="342.9" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-27.94" x2="342.9" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-53.34" x2="342.9" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-78.74" x2="342.9" y2="-104.14" width="0.1524" layer="91"/>
<junction x="342.9" y="48.26"/>
<junction x="342.9" y="22.86"/>
<junction x="342.9" y="-2.54"/>
<junction x="342.9" y="-27.94"/>
<junction x="342.9" y="-53.34"/>
<junction x="342.9" y="-78.74"/>
<pinref part="LED17" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="73.66" x2="350.52" y2="73.66" width="0.1524" layer="91"/>
<pinref part="LED18" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="48.26" x2="350.52" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LED19" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="22.86" x2="350.52" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LED20" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-2.54" x2="342.9" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="LED21" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="-27.94" x2="350.52" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LED22" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="-53.34" x2="350.52" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="LED23" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-78.74" x2="342.9" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="LED24" gate="G$1" pin="DP"/>
<wire x1="342.9" y1="-104.14" x2="350.52" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG0"/>
<wire x1="297.18" y1="20.32" x2="309.88" y2="20.32" width="0.1524" layer="91"/>
<wire x1="309.88" y1="20.32" x2="309.88" y2="58.42" width="0.1524" layer="91"/>
<wire x1="309.88" y1="58.42" x2="309.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="309.88" y1="60.96" x2="350.52" y2="60.96" width="0.1524" layer="91"/>
<wire x1="309.88" y1="58.42" x2="350.52" y2="58.42" width="0.1524" layer="91"/>
<junction x="309.88" y="58.42"/>
<pinref part="LED17" gate="G$1" pin="COM@2"/>
<pinref part="LED17" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG1"/>
<wire x1="297.18" y1="17.78" x2="312.42" y2="17.78" width="0.1524" layer="91"/>
<wire x1="312.42" y1="17.78" x2="312.42" y2="33.02" width="0.1524" layer="91"/>
<wire x1="312.42" y1="33.02" x2="312.42" y2="35.56" width="0.1524" layer="91"/>
<wire x1="312.42" y1="35.56" x2="350.52" y2="35.56" width="0.1524" layer="91"/>
<wire x1="312.42" y1="33.02" x2="350.52" y2="33.02" width="0.1524" layer="91"/>
<junction x="312.42" y="33.02"/>
<pinref part="LED18" gate="G$1" pin="COM@2"/>
<pinref part="LED18" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG2"/>
<wire x1="297.18" y1="15.24" x2="340.36" y2="15.24" width="0.1524" layer="91"/>
<wire x1="340.36" y1="15.24" x2="340.36" y2="10.16" width="0.1524" layer="91"/>
<wire x1="340.36" y1="10.16" x2="340.36" y2="7.62" width="0.1524" layer="91"/>
<junction x="340.36" y="10.16"/>
<pinref part="LED19" gate="G$1" pin="COM@2"/>
<wire x1="350.52" y1="10.16" x2="340.36" y2="10.16" width="0.1524" layer="91"/>
<pinref part="LED19" gate="G$1" pin="COM@1"/>
<wire x1="340.36" y1="7.62" x2="350.52" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG3"/>
<wire x1="297.18" y1="12.7" x2="337.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="337.82" y1="12.7" x2="337.82" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-15.24" x2="350.52" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-15.24" x2="337.82" y2="-17.78" width="0.1524" layer="91"/>
<junction x="337.82" y="-15.24"/>
<wire x1="337.82" y1="-17.78" x2="350.52" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LED20" gate="G$1" pin="COM@2"/>
<pinref part="LED20" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG4"/>
<wire x1="297.18" y1="10.16" x2="335.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="335.28" y1="10.16" x2="335.28" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-40.64" x2="335.28" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-40.64" x2="350.52" y2="-40.64" width="0.1524" layer="91"/>
<junction x="335.28" y="-40.64"/>
<pinref part="LED21" gate="G$1" pin="COM@2"/>
<pinref part="LED21" gate="G$1" pin="COM@1"/>
<wire x1="335.28" y1="-43.18" x2="350.52" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG5"/>
<wire x1="297.18" y1="7.62" x2="332.74" y2="7.62" width="0.1524" layer="91"/>
<wire x1="332.74" y1="7.62" x2="332.74" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-66.04" x2="332.74" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-68.58" x2="350.52" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-66.04" x2="350.52" y2="-66.04" width="0.1524" layer="91"/>
<junction x="332.74" y="-66.04"/>
<pinref part="LED22" gate="G$1" pin="COM@2"/>
<pinref part="LED22" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<wire x1="330.2" y1="-91.44" x2="350.52" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="DIG6"/>
<wire x1="297.18" y1="5.08" x2="330.2" y2="5.08" width="0.1524" layer="91"/>
<wire x1="330.2" y1="5.08" x2="330.2" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-91.44" x2="330.2" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-93.98" x2="350.52" y2="-93.98" width="0.1524" layer="91"/>
<junction x="330.2" y="-91.44"/>
<pinref part="LED23" gate="G$1" pin="COM@2"/>
<pinref part="LED23" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DIG7"/>
<wire x1="297.18" y1="2.54" x2="327.66" y2="2.54" width="0.1524" layer="91"/>
<wire x1="327.66" y1="2.54" x2="327.66" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-116.84" x2="327.66" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-119.38" x2="350.52" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-116.84" x2="327.66" y2="-116.84" width="0.1524" layer="91"/>
<junction x="327.66" y="-116.84"/>
<pinref part="LED24" gate="G$1" pin="COM@2"/>
<pinref part="LED24" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGA"/>
<wire x1="297.18" y1="0" x2="325.12" y2="0" width="0.1524" layer="91"/>
<wire x1="325.12" y1="0" x2="325.12" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-129.54" x2="375.92" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-129.54" x2="375.92" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-119.38" x2="375.92" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-93.98" x2="375.92" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-68.58" x2="375.92" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-43.18" x2="375.92" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-17.78" x2="375.92" y2="7.62" width="0.1524" layer="91"/>
<wire x1="375.92" y1="7.62" x2="375.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="375.92" y1="33.02" x2="375.92" y2="58.42" width="0.1524" layer="91"/>
<junction x="375.92" y="33.02"/>
<wire x1="370.84" y1="33.02" x2="375.92" y2="33.02" width="0.1524" layer="91"/>
<wire x1="370.84" y1="7.62" x2="375.92" y2="7.62" width="0.1524" layer="91"/>
<junction x="375.92" y="7.62"/>
<wire x1="370.84" y1="-17.78" x2="375.92" y2="-17.78" width="0.1524" layer="91"/>
<junction x="375.92" y="-17.78"/>
<wire x1="370.84" y1="-43.18" x2="375.92" y2="-43.18" width="0.1524" layer="91"/>
<junction x="375.92" y="-43.18"/>
<wire x1="370.84" y1="-68.58" x2="375.92" y2="-68.58" width="0.1524" layer="91"/>
<junction x="375.92" y="-68.58"/>
<wire x1="370.84" y1="-93.98" x2="375.92" y2="-93.98" width="0.1524" layer="91"/>
<junction x="375.92" y="-93.98"/>
<junction x="375.92" y="-119.38"/>
<pinref part="LED17" gate="G$1" pin="A"/>
<wire x1="370.84" y1="58.42" x2="375.92" y2="58.42" width="0.1524" layer="91"/>
<pinref part="LED24" gate="G$1" pin="A"/>
<wire x1="370.84" y1="-119.38" x2="375.92" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="LED18" gate="G$1" pin="A"/>
<pinref part="LED19" gate="G$1" pin="A"/>
<pinref part="LED20" gate="G$1" pin="A"/>
<pinref part="LED21" gate="G$1" pin="A"/>
<pinref part="LED22" gate="G$1" pin="A"/>
<pinref part="LED23" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGB"/>
<wire x1="297.18" y1="-2.54" x2="322.58" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-2.54" x2="322.58" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-132.08" x2="378.46" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-132.08" x2="378.46" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-116.84" x2="378.46" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-91.44" x2="378.46" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-66.04" x2="378.46" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-40.64" x2="378.46" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-15.24" x2="378.46" y2="10.16" width="0.1524" layer="91"/>
<wire x1="378.46" y1="10.16" x2="378.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="378.46" y1="35.56" x2="378.46" y2="60.96" width="0.1524" layer="91"/>
<wire x1="378.46" y1="60.96" x2="370.84" y2="60.96" width="0.1524" layer="91"/>
<wire x1="370.84" y1="35.56" x2="378.46" y2="35.56" width="0.1524" layer="91"/>
<junction x="378.46" y="35.56"/>
<wire x1="370.84" y1="10.16" x2="378.46" y2="10.16" width="0.1524" layer="91"/>
<junction x="378.46" y="10.16"/>
<wire x1="370.84" y1="-15.24" x2="378.46" y2="-15.24" width="0.1524" layer="91"/>
<junction x="378.46" y="-15.24"/>
<wire x1="370.84" y1="-40.64" x2="378.46" y2="-40.64" width="0.1524" layer="91"/>
<junction x="378.46" y="-40.64"/>
<wire x1="370.84" y1="-66.04" x2="378.46" y2="-66.04" width="0.1524" layer="91"/>
<junction x="378.46" y="-66.04"/>
<wire x1="370.84" y1="-91.44" x2="378.46" y2="-91.44" width="0.1524" layer="91"/>
<junction x="378.46" y="-91.44"/>
<wire x1="370.84" y1="-116.84" x2="378.46" y2="-116.84" width="0.1524" layer="91"/>
<junction x="378.46" y="-116.84"/>
<pinref part="LED17" gate="G$1" pin="B"/>
<pinref part="LED24" gate="G$1" pin="B"/>
<pinref part="LED18" gate="G$1" pin="B"/>
<pinref part="LED19" gate="G$1" pin="B"/>
<pinref part="LED20" gate="G$1" pin="B"/>
<pinref part="LED21" gate="G$1" pin="B"/>
<pinref part="LED22" gate="G$1" pin="B"/>
<pinref part="LED23" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGC"/>
<wire x1="297.18" y1="-5.08" x2="320.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-5.08" x2="320.04" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-134.62" x2="381" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="381" y1="-134.62" x2="381" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="381" y1="-114.3" x2="381" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="381" y1="-88.9" x2="381" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="381" y1="-63.5" x2="381" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="381" y1="-38.1" x2="381" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="381" y1="-12.7" x2="381" y2="12.7" width="0.1524" layer="91"/>
<wire x1="381" y1="12.7" x2="381" y2="38.1" width="0.1524" layer="91"/>
<wire x1="381" y1="38.1" x2="381" y2="63.5" width="0.1524" layer="91"/>
<wire x1="381" y1="63.5" x2="370.84" y2="63.5" width="0.1524" layer="91"/>
<wire x1="370.84" y1="38.1" x2="381" y2="38.1" width="0.1524" layer="91"/>
<junction x="381" y="38.1"/>
<wire x1="370.84" y1="12.7" x2="381" y2="12.7" width="0.1524" layer="91"/>
<junction x="381" y="12.7"/>
<wire x1="370.84" y1="-12.7" x2="381" y2="-12.7" width="0.1524" layer="91"/>
<junction x="381" y="-12.7"/>
<wire x1="370.84" y1="-38.1" x2="381" y2="-38.1" width="0.1524" layer="91"/>
<junction x="381" y="-38.1"/>
<wire x1="370.84" y1="-63.5" x2="381" y2="-63.5" width="0.1524" layer="91"/>
<junction x="381" y="-63.5"/>
<wire x1="370.84" y1="-88.9" x2="381" y2="-88.9" width="0.1524" layer="91"/>
<junction x="381" y="-88.9"/>
<wire x1="370.84" y1="-114.3" x2="381" y2="-114.3" width="0.1524" layer="91"/>
<junction x="381" y="-114.3"/>
<pinref part="LED17" gate="G$1" pin="C"/>
<pinref part="LED24" gate="G$1" pin="C"/>
<pinref part="LED18" gate="G$1" pin="C"/>
<pinref part="LED19" gate="G$1" pin="C"/>
<pinref part="LED20" gate="G$1" pin="C"/>
<pinref part="LED21" gate="G$1" pin="C"/>
<pinref part="LED22" gate="G$1" pin="C"/>
<pinref part="LED23" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGD"/>
<wire x1="297.18" y1="-7.62" x2="317.5" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-7.62" x2="317.5" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-137.16" x2="383.54" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-137.16" x2="383.54" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-111.76" x2="383.54" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-86.36" x2="383.54" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-60.96" x2="383.54" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-35.56" x2="383.54" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-10.16" x2="383.54" y2="15.24" width="0.1524" layer="91"/>
<wire x1="383.54" y1="15.24" x2="383.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="383.54" y1="40.64" x2="383.54" y2="66.04" width="0.1524" layer="91"/>
<wire x1="383.54" y1="66.04" x2="370.84" y2="66.04" width="0.1524" layer="91"/>
<wire x1="370.84" y1="40.64" x2="383.54" y2="40.64" width="0.1524" layer="91"/>
<junction x="383.54" y="40.64"/>
<wire x1="370.84" y1="15.24" x2="383.54" y2="15.24" width="0.1524" layer="91"/>
<junction x="383.54" y="15.24"/>
<wire x1="370.84" y1="-10.16" x2="383.54" y2="-10.16" width="0.1524" layer="91"/>
<junction x="383.54" y="-10.16"/>
<wire x1="370.84" y1="-35.56" x2="383.54" y2="-35.56" width="0.1524" layer="91"/>
<junction x="383.54" y="-35.56"/>
<wire x1="370.84" y1="-60.96" x2="383.54" y2="-60.96" width="0.1524" layer="91"/>
<junction x="383.54" y="-60.96"/>
<wire x1="370.84" y1="-86.36" x2="383.54" y2="-86.36" width="0.1524" layer="91"/>
<junction x="383.54" y="-86.36"/>
<wire x1="370.84" y1="-111.76" x2="383.54" y2="-111.76" width="0.1524" layer="91"/>
<junction x="383.54" y="-111.76"/>
<pinref part="LED17" gate="G$1" pin="D"/>
<pinref part="LED24" gate="G$1" pin="D"/>
<pinref part="LED18" gate="G$1" pin="D"/>
<pinref part="LED19" gate="G$1" pin="D"/>
<pinref part="LED20" gate="G$1" pin="D"/>
<pinref part="LED21" gate="G$1" pin="D"/>
<pinref part="LED22" gate="G$1" pin="D"/>
<pinref part="LED23" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGE"/>
<wire x1="297.18" y1="-10.16" x2="314.96" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-10.16" x2="314.96" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-139.7" x2="386.08" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-139.7" x2="386.08" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-109.22" x2="386.08" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-83.82" x2="386.08" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-58.42" x2="386.08" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-33.02" x2="386.08" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-7.62" x2="386.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="386.08" y1="17.78" x2="386.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="386.08" y1="43.18" x2="386.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="386.08" y1="68.58" x2="370.84" y2="68.58" width="0.1524" layer="91"/>
<wire x1="370.84" y1="43.18" x2="386.08" y2="43.18" width="0.1524" layer="91"/>
<junction x="386.08" y="43.18"/>
<wire x1="370.84" y1="17.78" x2="386.08" y2="17.78" width="0.1524" layer="91"/>
<junction x="386.08" y="17.78"/>
<wire x1="370.84" y1="-7.62" x2="386.08" y2="-7.62" width="0.1524" layer="91"/>
<junction x="386.08" y="-7.62"/>
<wire x1="370.84" y1="-33.02" x2="386.08" y2="-33.02" width="0.1524" layer="91"/>
<junction x="386.08" y="-33.02"/>
<wire x1="370.84" y1="-58.42" x2="386.08" y2="-58.42" width="0.1524" layer="91"/>
<junction x="386.08" y="-58.42"/>
<wire x1="370.84" y1="-83.82" x2="386.08" y2="-83.82" width="0.1524" layer="91"/>
<junction x="386.08" y="-83.82"/>
<wire x1="370.84" y1="-109.22" x2="386.08" y2="-109.22" width="0.1524" layer="91"/>
<junction x="386.08" y="-109.22"/>
<pinref part="LED17" gate="G$1" pin="E"/>
<pinref part="LED24" gate="G$1" pin="E"/>
<pinref part="LED18" gate="G$1" pin="E"/>
<pinref part="LED19" gate="G$1" pin="E"/>
<pinref part="LED20" gate="G$1" pin="E"/>
<pinref part="LED21" gate="G$1" pin="E"/>
<pinref part="LED22" gate="G$1" pin="E"/>
<pinref part="LED23" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGG"/>
<wire x1="297.18" y1="-15.24" x2="309.88" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-15.24" x2="309.88" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="309.88" y1="-144.78" x2="391.16" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-144.78" x2="391.16" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-104.14" x2="391.16" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-78.74" x2="391.16" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-53.34" x2="391.16" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-27.94" x2="391.16" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-2.54" x2="391.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="391.16" y1="22.86" x2="391.16" y2="48.26" width="0.1524" layer="91"/>
<wire x1="391.16" y1="48.26" x2="391.16" y2="73.66" width="0.1524" layer="91"/>
<wire x1="391.16" y1="73.66" x2="370.84" y2="73.66" width="0.1524" layer="91"/>
<wire x1="370.84" y1="48.26" x2="391.16" y2="48.26" width="0.1524" layer="91"/>
<junction x="391.16" y="48.26"/>
<wire x1="370.84" y1="22.86" x2="391.16" y2="22.86" width="0.1524" layer="91"/>
<junction x="391.16" y="22.86"/>
<wire x1="370.84" y1="-2.54" x2="391.16" y2="-2.54" width="0.1524" layer="91"/>
<junction x="391.16" y="-2.54"/>
<wire x1="370.84" y1="-27.94" x2="391.16" y2="-27.94" width="0.1524" layer="91"/>
<junction x="391.16" y="-27.94"/>
<wire x1="370.84" y1="-53.34" x2="391.16" y2="-53.34" width="0.1524" layer="91"/>
<junction x="391.16" y="-53.34"/>
<wire x1="370.84" y1="-78.74" x2="391.16" y2="-78.74" width="0.1524" layer="91"/>
<junction x="391.16" y="-78.74"/>
<wire x1="370.84" y1="-104.14" x2="391.16" y2="-104.14" width="0.1524" layer="91"/>
<junction x="391.16" y="-104.14"/>
<pinref part="LED17" gate="G$1" pin="G"/>
<pinref part="LED24" gate="G$1" pin="G"/>
<pinref part="LED18" gate="G$1" pin="G"/>
<pinref part="LED19" gate="G$1" pin="G"/>
<pinref part="LED20" gate="G$1" pin="G"/>
<pinref part="LED21" gate="G$1" pin="G"/>
<pinref part="LED22" gate="G$1" pin="G"/>
<pinref part="LED23" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SEGF"/>
<wire x1="297.18" y1="-12.7" x2="312.42" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-12.7" x2="312.42" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-142.24" x2="388.62" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-142.24" x2="388.62" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-106.68" x2="388.62" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-81.28" x2="388.62" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-55.88" x2="388.62" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-30.48" x2="388.62" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-5.08" x2="388.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="388.62" y1="20.32" x2="388.62" y2="45.72" width="0.1524" layer="91"/>
<wire x1="388.62" y1="45.72" x2="388.62" y2="71.12" width="0.1524" layer="91"/>
<wire x1="388.62" y1="71.12" x2="370.84" y2="71.12" width="0.1524" layer="91"/>
<wire x1="370.84" y1="45.72" x2="388.62" y2="45.72" width="0.1524" layer="91"/>
<junction x="388.62" y="45.72"/>
<wire x1="370.84" y1="20.32" x2="388.62" y2="20.32" width="0.1524" layer="91"/>
<junction x="388.62" y="20.32"/>
<wire x1="370.84" y1="-5.08" x2="388.62" y2="-5.08" width="0.1524" layer="91"/>
<junction x="388.62" y="-5.08"/>
<wire x1="370.84" y1="-30.48" x2="388.62" y2="-30.48" width="0.1524" layer="91"/>
<junction x="388.62" y="-30.48"/>
<wire x1="370.84" y1="-55.88" x2="388.62" y2="-55.88" width="0.1524" layer="91"/>
<junction x="388.62" y="-55.88"/>
<wire x1="370.84" y1="-81.28" x2="388.62" y2="-81.28" width="0.1524" layer="91"/>
<junction x="388.62" y="-81.28"/>
<wire x1="370.84" y1="-106.68" x2="388.62" y2="-106.68" width="0.1524" layer="91"/>
<junction x="388.62" y="-106.68"/>
<pinref part="LED17" gate="G$1" pin="F"/>
<pinref part="LED24" gate="G$1" pin="F"/>
<pinref part="LED18" gate="G$1" pin="F"/>
<pinref part="LED19" gate="G$1" pin="F"/>
<pinref part="LED20" gate="G$1" pin="F"/>
<pinref part="LED21" gate="G$1" pin="F"/>
<pinref part="LED22" gate="G$1" pin="F"/>
<pinref part="LED23" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="DOUT"/>
<wire x1="269.24" y1="7.62" x2="251.46" y2="7.62" width="0.1524" layer="91"/>
<wire x1="251.46" y1="7.62" x2="251.46" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="DIN"/>
<wire x1="426.72" y1="10.16" x2="406.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="406.4" y1="10.16" x2="406.4" y2="86.36" width="0.1524" layer="91"/>
<wire x1="251.46" y1="86.36" x2="406.4" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="DOUT"/>
<wire x1="111.76" y1="7.62" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<wire x1="93.98" y1="86.36" x2="248.92" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="DIN"/>
<wire x1="269.24" y1="10.16" x2="248.92" y2="10.16" width="0.1524" layer="91"/>
<wire x1="248.92" y1="10.16" x2="248.92" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="IC4" gate="G$1" pin="ISET"/>
<wire x1="421.64" y1="0" x2="421.64" y2="2.54" width="0.1524" layer="91"/>
<wire x1="421.64" y1="2.54" x2="426.72" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGDP"/>
<wire x1="454.66" y1="-17.78" x2="464.82" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="464.82" y1="-17.78" x2="464.82" y2="73.66" width="0.1524" layer="91"/>
<wire x1="464.82" y1="73.66" x2="500.38" y2="73.66" width="0.1524" layer="91"/>
<wire x1="500.38" y1="73.66" x2="500.38" y2="48.26" width="0.1524" layer="91"/>
<junction x="500.38" y="73.66"/>
<wire x1="500.38" y1="48.26" x2="500.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="500.38" y1="22.86" x2="500.38" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-2.54" x2="500.38" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-27.94" x2="500.38" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-53.34" x2="500.38" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-78.74" x2="500.38" y2="-104.14" width="0.1524" layer="91"/>
<junction x="500.38" y="48.26"/>
<junction x="500.38" y="22.86"/>
<junction x="500.38" y="-2.54"/>
<junction x="500.38" y="-27.94"/>
<junction x="500.38" y="-53.34"/>
<junction x="500.38" y="-78.74"/>
<pinref part="LED25" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="73.66" x2="508" y2="73.66" width="0.1524" layer="91"/>
<pinref part="LED26" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="48.26" x2="508" y2="48.26" width="0.1524" layer="91"/>
<pinref part="LED27" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="22.86" x2="508" y2="22.86" width="0.1524" layer="91"/>
<pinref part="LED28" gate="G$1" pin="DP"/>
<wire x1="508" y1="-2.54" x2="500.38" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="LED29" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="-27.94" x2="508" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LED30" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="-53.34" x2="508" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="LED31" gate="G$1" pin="DP"/>
<wire x1="508" y1="-78.74" x2="500.38" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="LED32" gate="G$1" pin="DP"/>
<wire x1="500.38" y1="-104.14" x2="508" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG0"/>
<wire x1="454.66" y1="20.32" x2="467.36" y2="20.32" width="0.1524" layer="91"/>
<wire x1="467.36" y1="20.32" x2="467.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="467.36" y1="58.42" x2="467.36" y2="60.96" width="0.1524" layer="91"/>
<wire x1="467.36" y1="60.96" x2="508" y2="60.96" width="0.1524" layer="91"/>
<wire x1="467.36" y1="58.42" x2="508" y2="58.42" width="0.1524" layer="91"/>
<junction x="467.36" y="58.42"/>
<pinref part="LED25" gate="G$1" pin="COM@2"/>
<pinref part="LED25" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG1"/>
<wire x1="454.66" y1="17.78" x2="469.9" y2="17.78" width="0.1524" layer="91"/>
<wire x1="469.9" y1="17.78" x2="469.9" y2="33.02" width="0.1524" layer="91"/>
<wire x1="469.9" y1="33.02" x2="469.9" y2="35.56" width="0.1524" layer="91"/>
<wire x1="469.9" y1="35.56" x2="508" y2="35.56" width="0.1524" layer="91"/>
<wire x1="469.9" y1="33.02" x2="508" y2="33.02" width="0.1524" layer="91"/>
<junction x="469.9" y="33.02"/>
<pinref part="LED26" gate="G$1" pin="COM@2"/>
<pinref part="LED26" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG2"/>
<wire x1="454.66" y1="15.24" x2="497.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="497.84" y1="15.24" x2="497.84" y2="10.16" width="0.1524" layer="91"/>
<wire x1="497.84" y1="10.16" x2="497.84" y2="7.62" width="0.1524" layer="91"/>
<junction x="497.84" y="10.16"/>
<pinref part="LED27" gate="G$1" pin="COM@2"/>
<wire x1="508" y1="10.16" x2="497.84" y2="10.16" width="0.1524" layer="91"/>
<pinref part="LED27" gate="G$1" pin="COM@1"/>
<wire x1="497.84" y1="7.62" x2="508" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG3"/>
<wire x1="454.66" y1="12.7" x2="495.3" y2="12.7" width="0.1524" layer="91"/>
<wire x1="495.3" y1="12.7" x2="495.3" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-15.24" x2="508" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-15.24" x2="495.3" y2="-17.78" width="0.1524" layer="91"/>
<junction x="495.3" y="-15.24"/>
<wire x1="495.3" y1="-17.78" x2="508" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LED28" gate="G$1" pin="COM@2"/>
<pinref part="LED28" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG4"/>
<wire x1="454.66" y1="10.16" x2="492.76" y2="10.16" width="0.1524" layer="91"/>
<wire x1="492.76" y1="10.16" x2="492.76" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-40.64" x2="492.76" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-40.64" x2="508" y2="-40.64" width="0.1524" layer="91"/>
<junction x="492.76" y="-40.64"/>
<pinref part="LED29" gate="G$1" pin="COM@2"/>
<pinref part="LED29" gate="G$1" pin="COM@1"/>
<wire x1="492.76" y1="-43.18" x2="508" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG5"/>
<wire x1="454.66" y1="7.62" x2="490.22" y2="7.62" width="0.1524" layer="91"/>
<wire x1="490.22" y1="7.62" x2="490.22" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-66.04" x2="490.22" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-68.58" x2="508" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-66.04" x2="508" y2="-66.04" width="0.1524" layer="91"/>
<junction x="490.22" y="-66.04"/>
<pinref part="LED30" gate="G$1" pin="COM@2"/>
<pinref part="LED30" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<wire x1="487.68" y1="-91.44" x2="508" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="DIG6"/>
<wire x1="454.66" y1="5.08" x2="487.68" y2="5.08" width="0.1524" layer="91"/>
<wire x1="487.68" y1="5.08" x2="487.68" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-91.44" x2="487.68" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-93.98" x2="508" y2="-93.98" width="0.1524" layer="91"/>
<junction x="487.68" y="-91.44"/>
<pinref part="LED31" gate="G$1" pin="COM@2"/>
<pinref part="LED31" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DIG7"/>
<wire x1="454.66" y1="2.54" x2="485.14" y2="2.54" width="0.1524" layer="91"/>
<wire x1="485.14" y1="2.54" x2="485.14" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-116.84" x2="485.14" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-119.38" x2="508" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="508" y1="-116.84" x2="485.14" y2="-116.84" width="0.1524" layer="91"/>
<junction x="485.14" y="-116.84"/>
<pinref part="LED32" gate="G$1" pin="COM@2"/>
<pinref part="LED32" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGA"/>
<wire x1="454.66" y1="0" x2="482.6" y2="0" width="0.1524" layer="91"/>
<wire x1="482.6" y1="0" x2="482.6" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-129.54" x2="533.4" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-129.54" x2="533.4" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-119.38" x2="533.4" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-93.98" x2="533.4" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-68.58" x2="533.4" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-43.18" x2="533.4" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-17.78" x2="533.4" y2="7.62" width="0.1524" layer="91"/>
<wire x1="533.4" y1="7.62" x2="533.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="533.4" y1="33.02" x2="533.4" y2="58.42" width="0.1524" layer="91"/>
<junction x="533.4" y="33.02"/>
<wire x1="528.32" y1="33.02" x2="533.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="528.32" y1="7.62" x2="533.4" y2="7.62" width="0.1524" layer="91"/>
<junction x="533.4" y="7.62"/>
<wire x1="528.32" y1="-17.78" x2="533.4" y2="-17.78" width="0.1524" layer="91"/>
<junction x="533.4" y="-17.78"/>
<wire x1="528.32" y1="-43.18" x2="533.4" y2="-43.18" width="0.1524" layer="91"/>
<junction x="533.4" y="-43.18"/>
<wire x1="528.32" y1="-68.58" x2="533.4" y2="-68.58" width="0.1524" layer="91"/>
<junction x="533.4" y="-68.58"/>
<wire x1="528.32" y1="-93.98" x2="533.4" y2="-93.98" width="0.1524" layer="91"/>
<junction x="533.4" y="-93.98"/>
<junction x="533.4" y="-119.38"/>
<pinref part="LED25" gate="G$1" pin="A"/>
<wire x1="528.32" y1="58.42" x2="533.4" y2="58.42" width="0.1524" layer="91"/>
<pinref part="LED32" gate="G$1" pin="A"/>
<wire x1="528.32" y1="-119.38" x2="533.4" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="LED26" gate="G$1" pin="A"/>
<pinref part="LED27" gate="G$1" pin="A"/>
<pinref part="LED28" gate="G$1" pin="A"/>
<pinref part="LED29" gate="G$1" pin="A"/>
<pinref part="LED30" gate="G$1" pin="A"/>
<pinref part="LED31" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGB"/>
<wire x1="454.66" y1="-2.54" x2="480.06" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-2.54" x2="480.06" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-132.08" x2="535.94" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-132.08" x2="535.94" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-116.84" x2="535.94" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-91.44" x2="535.94" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-66.04" x2="535.94" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-40.64" x2="535.94" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-15.24" x2="535.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="535.94" y1="10.16" x2="535.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="535.94" y1="35.56" x2="535.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="535.94" y1="60.96" x2="528.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="528.32" y1="35.56" x2="535.94" y2="35.56" width="0.1524" layer="91"/>
<junction x="535.94" y="35.56"/>
<wire x1="528.32" y1="10.16" x2="535.94" y2="10.16" width="0.1524" layer="91"/>
<junction x="535.94" y="10.16"/>
<wire x1="528.32" y1="-15.24" x2="535.94" y2="-15.24" width="0.1524" layer="91"/>
<junction x="535.94" y="-15.24"/>
<wire x1="528.32" y1="-40.64" x2="535.94" y2="-40.64" width="0.1524" layer="91"/>
<junction x="535.94" y="-40.64"/>
<wire x1="528.32" y1="-66.04" x2="535.94" y2="-66.04" width="0.1524" layer="91"/>
<junction x="535.94" y="-66.04"/>
<wire x1="528.32" y1="-91.44" x2="535.94" y2="-91.44" width="0.1524" layer="91"/>
<junction x="535.94" y="-91.44"/>
<wire x1="528.32" y1="-116.84" x2="535.94" y2="-116.84" width="0.1524" layer="91"/>
<junction x="535.94" y="-116.84"/>
<pinref part="LED25" gate="G$1" pin="B"/>
<pinref part="LED32" gate="G$1" pin="B"/>
<pinref part="LED26" gate="G$1" pin="B"/>
<pinref part="LED27" gate="G$1" pin="B"/>
<pinref part="LED28" gate="G$1" pin="B"/>
<pinref part="LED29" gate="G$1" pin="B"/>
<pinref part="LED30" gate="G$1" pin="B"/>
<pinref part="LED31" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGC"/>
<wire x1="454.66" y1="-5.08" x2="477.52" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-5.08" x2="477.52" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-134.62" x2="538.48" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-134.62" x2="538.48" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-114.3" x2="538.48" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-88.9" x2="538.48" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-63.5" x2="538.48" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-38.1" x2="538.48" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-12.7" x2="538.48" y2="12.7" width="0.1524" layer="91"/>
<wire x1="538.48" y1="12.7" x2="538.48" y2="38.1" width="0.1524" layer="91"/>
<wire x1="538.48" y1="38.1" x2="538.48" y2="63.5" width="0.1524" layer="91"/>
<wire x1="538.48" y1="63.5" x2="528.32" y2="63.5" width="0.1524" layer="91"/>
<wire x1="528.32" y1="38.1" x2="538.48" y2="38.1" width="0.1524" layer="91"/>
<junction x="538.48" y="38.1"/>
<wire x1="528.32" y1="12.7" x2="538.48" y2="12.7" width="0.1524" layer="91"/>
<junction x="538.48" y="12.7"/>
<wire x1="528.32" y1="-12.7" x2="538.48" y2="-12.7" width="0.1524" layer="91"/>
<junction x="538.48" y="-12.7"/>
<wire x1="528.32" y1="-38.1" x2="538.48" y2="-38.1" width="0.1524" layer="91"/>
<junction x="538.48" y="-38.1"/>
<wire x1="528.32" y1="-63.5" x2="538.48" y2="-63.5" width="0.1524" layer="91"/>
<junction x="538.48" y="-63.5"/>
<wire x1="528.32" y1="-88.9" x2="538.48" y2="-88.9" width="0.1524" layer="91"/>
<junction x="538.48" y="-88.9"/>
<wire x1="528.32" y1="-114.3" x2="538.48" y2="-114.3" width="0.1524" layer="91"/>
<junction x="538.48" y="-114.3"/>
<pinref part="LED25" gate="G$1" pin="C"/>
<pinref part="LED32" gate="G$1" pin="C"/>
<pinref part="LED26" gate="G$1" pin="C"/>
<pinref part="LED27" gate="G$1" pin="C"/>
<pinref part="LED28" gate="G$1" pin="C"/>
<pinref part="LED29" gate="G$1" pin="C"/>
<pinref part="LED30" gate="G$1" pin="C"/>
<pinref part="LED31" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGD"/>
<wire x1="454.66" y1="-7.62" x2="474.98" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-7.62" x2="474.98" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-137.16" x2="541.02" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-137.16" x2="541.02" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-111.76" x2="541.02" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-86.36" x2="541.02" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-60.96" x2="541.02" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-35.56" x2="541.02" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-10.16" x2="541.02" y2="15.24" width="0.1524" layer="91"/>
<wire x1="541.02" y1="15.24" x2="541.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="541.02" y1="40.64" x2="541.02" y2="66.04" width="0.1524" layer="91"/>
<wire x1="541.02" y1="66.04" x2="528.32" y2="66.04" width="0.1524" layer="91"/>
<wire x1="528.32" y1="40.64" x2="541.02" y2="40.64" width="0.1524" layer="91"/>
<junction x="541.02" y="40.64"/>
<wire x1="528.32" y1="15.24" x2="541.02" y2="15.24" width="0.1524" layer="91"/>
<junction x="541.02" y="15.24"/>
<wire x1="528.32" y1="-10.16" x2="541.02" y2="-10.16" width="0.1524" layer="91"/>
<junction x="541.02" y="-10.16"/>
<wire x1="528.32" y1="-35.56" x2="541.02" y2="-35.56" width="0.1524" layer="91"/>
<junction x="541.02" y="-35.56"/>
<wire x1="528.32" y1="-60.96" x2="541.02" y2="-60.96" width="0.1524" layer="91"/>
<junction x="541.02" y="-60.96"/>
<wire x1="528.32" y1="-86.36" x2="541.02" y2="-86.36" width="0.1524" layer="91"/>
<junction x="541.02" y="-86.36"/>
<wire x1="528.32" y1="-111.76" x2="541.02" y2="-111.76" width="0.1524" layer="91"/>
<junction x="541.02" y="-111.76"/>
<pinref part="LED25" gate="G$1" pin="D"/>
<pinref part="LED32" gate="G$1" pin="D"/>
<pinref part="LED26" gate="G$1" pin="D"/>
<pinref part="LED27" gate="G$1" pin="D"/>
<pinref part="LED28" gate="G$1" pin="D"/>
<pinref part="LED29" gate="G$1" pin="D"/>
<pinref part="LED30" gate="G$1" pin="D"/>
<pinref part="LED31" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGE"/>
<wire x1="454.66" y1="-10.16" x2="472.44" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-10.16" x2="472.44" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-139.7" x2="543.56" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-139.7" x2="543.56" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-109.22" x2="543.56" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-83.82" x2="543.56" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-58.42" x2="543.56" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-33.02" x2="543.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-7.62" x2="543.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="543.56" y1="17.78" x2="543.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="543.56" y1="43.18" x2="543.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="543.56" y1="68.58" x2="528.32" y2="68.58" width="0.1524" layer="91"/>
<wire x1="528.32" y1="43.18" x2="543.56" y2="43.18" width="0.1524" layer="91"/>
<junction x="543.56" y="43.18"/>
<wire x1="528.32" y1="17.78" x2="543.56" y2="17.78" width="0.1524" layer="91"/>
<junction x="543.56" y="17.78"/>
<wire x1="528.32" y1="-7.62" x2="543.56" y2="-7.62" width="0.1524" layer="91"/>
<junction x="543.56" y="-7.62"/>
<wire x1="528.32" y1="-33.02" x2="543.56" y2="-33.02" width="0.1524" layer="91"/>
<junction x="543.56" y="-33.02"/>
<wire x1="528.32" y1="-58.42" x2="543.56" y2="-58.42" width="0.1524" layer="91"/>
<junction x="543.56" y="-58.42"/>
<wire x1="528.32" y1="-83.82" x2="543.56" y2="-83.82" width="0.1524" layer="91"/>
<junction x="543.56" y="-83.82"/>
<wire x1="528.32" y1="-109.22" x2="543.56" y2="-109.22" width="0.1524" layer="91"/>
<junction x="543.56" y="-109.22"/>
<pinref part="LED25" gate="G$1" pin="E"/>
<pinref part="LED32" gate="G$1" pin="E"/>
<pinref part="LED26" gate="G$1" pin="E"/>
<pinref part="LED27" gate="G$1" pin="E"/>
<pinref part="LED28" gate="G$1" pin="E"/>
<pinref part="LED29" gate="G$1" pin="E"/>
<pinref part="LED30" gate="G$1" pin="E"/>
<pinref part="LED31" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGG"/>
<wire x1="454.66" y1="-15.24" x2="467.36" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="467.36" y1="-15.24" x2="467.36" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="467.36" y1="-144.78" x2="548.64" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-144.78" x2="548.64" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-104.14" x2="548.64" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-78.74" x2="548.64" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-53.34" x2="548.64" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-27.94" x2="548.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-2.54" x2="548.64" y2="22.86" width="0.1524" layer="91"/>
<wire x1="548.64" y1="22.86" x2="548.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="548.64" y1="48.26" x2="548.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="548.64" y1="73.66" x2="528.32" y2="73.66" width="0.1524" layer="91"/>
<wire x1="528.32" y1="48.26" x2="548.64" y2="48.26" width="0.1524" layer="91"/>
<junction x="548.64" y="48.26"/>
<wire x1="528.32" y1="22.86" x2="548.64" y2="22.86" width="0.1524" layer="91"/>
<junction x="548.64" y="22.86"/>
<wire x1="528.32" y1="-2.54" x2="548.64" y2="-2.54" width="0.1524" layer="91"/>
<junction x="548.64" y="-2.54"/>
<wire x1="528.32" y1="-27.94" x2="548.64" y2="-27.94" width="0.1524" layer="91"/>
<junction x="548.64" y="-27.94"/>
<wire x1="528.32" y1="-53.34" x2="548.64" y2="-53.34" width="0.1524" layer="91"/>
<junction x="548.64" y="-53.34"/>
<wire x1="528.32" y1="-78.74" x2="548.64" y2="-78.74" width="0.1524" layer="91"/>
<junction x="548.64" y="-78.74"/>
<wire x1="528.32" y1="-104.14" x2="548.64" y2="-104.14" width="0.1524" layer="91"/>
<junction x="548.64" y="-104.14"/>
<pinref part="LED25" gate="G$1" pin="G"/>
<pinref part="LED32" gate="G$1" pin="G"/>
<pinref part="LED26" gate="G$1" pin="G"/>
<pinref part="LED27" gate="G$1" pin="G"/>
<pinref part="LED28" gate="G$1" pin="G"/>
<pinref part="LED29" gate="G$1" pin="G"/>
<pinref part="LED30" gate="G$1" pin="G"/>
<pinref part="LED31" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="SEGF"/>
<wire x1="454.66" y1="-12.7" x2="469.9" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="469.9" y1="-12.7" x2="469.9" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="469.9" y1="-142.24" x2="546.1" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-142.24" x2="546.1" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-106.68" x2="546.1" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-81.28" x2="546.1" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-55.88" x2="546.1" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-30.48" x2="546.1" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-5.08" x2="546.1" y2="20.32" width="0.1524" layer="91"/>
<wire x1="546.1" y1="20.32" x2="546.1" y2="45.72" width="0.1524" layer="91"/>
<wire x1="546.1" y1="45.72" x2="546.1" y2="71.12" width="0.1524" layer="91"/>
<wire x1="546.1" y1="71.12" x2="528.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="528.32" y1="45.72" x2="546.1" y2="45.72" width="0.1524" layer="91"/>
<junction x="546.1" y="45.72"/>
<wire x1="528.32" y1="20.32" x2="546.1" y2="20.32" width="0.1524" layer="91"/>
<junction x="546.1" y="20.32"/>
<wire x1="528.32" y1="-5.08" x2="546.1" y2="-5.08" width="0.1524" layer="91"/>
<junction x="546.1" y="-5.08"/>
<wire x1="528.32" y1="-30.48" x2="546.1" y2="-30.48" width="0.1524" layer="91"/>
<junction x="546.1" y="-30.48"/>
<wire x1="528.32" y1="-55.88" x2="546.1" y2="-55.88" width="0.1524" layer="91"/>
<junction x="546.1" y="-55.88"/>
<wire x1="528.32" y1="-81.28" x2="546.1" y2="-81.28" width="0.1524" layer="91"/>
<junction x="546.1" y="-81.28"/>
<wire x1="528.32" y1="-106.68" x2="546.1" y2="-106.68" width="0.1524" layer="91"/>
<junction x="546.1" y="-106.68"/>
<pinref part="LED25" gate="G$1" pin="F"/>
<pinref part="LED32" gate="G$1" pin="F"/>
<pinref part="LED26" gate="G$1" pin="F"/>
<pinref part="LED27" gate="G$1" pin="F"/>
<pinref part="LED28" gate="G$1" pin="F"/>
<pinref part="LED29" gate="G$1" pin="F"/>
<pinref part="LED30" gate="G$1" pin="F"/>
<pinref part="LED31" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="DOUT"/>
<wire x1="426.72" y1="7.62" x2="408.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="408.94" y1="7.62" x2="408.94" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="DIN"/>
<wire x1="-38.1" y1="-279.4" x2="-58.42" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="408.94" y1="86.36" x2="558.8" y2="86.36" width="0.1524" layer="91"/>
<wire x1="558.8" y1="86.36" x2="558.8" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-175.26" x2="-58.42" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-175.26" x2="-58.42" y2="-279.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="IC5" gate="G$1" pin="ISET"/>
<wire x1="-43.18" y1="-289.56" x2="-43.18" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-287.02" x2="-38.1" y2="-287.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGDP"/>
<wire x1="-10.16" y1="-307.34" x2="0" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="0" y1="-307.34" x2="0" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="0" y1="-215.9" x2="35.56" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-215.9" x2="35.56" y2="-241.3" width="0.1524" layer="91"/>
<junction x="35.56" y="-215.9"/>
<wire x1="35.56" y1="-241.3" x2="35.56" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-266.7" x2="35.56" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-292.1" x2="35.56" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-317.5" x2="35.56" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-342.9" x2="35.56" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-368.3" x2="35.56" y2="-393.7" width="0.1524" layer="91"/>
<junction x="35.56" y="-241.3"/>
<junction x="35.56" y="-266.7"/>
<junction x="35.56" y="-292.1"/>
<junction x="35.56" y="-317.5"/>
<junction x="35.56" y="-342.9"/>
<junction x="35.56" y="-368.3"/>
<pinref part="LED33" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-215.9" x2="43.18" y2="-215.9" width="0.1524" layer="91"/>
<pinref part="LED34" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-241.3" x2="43.18" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="LED35" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-266.7" x2="43.18" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="LED36" gate="G$1" pin="DP"/>
<wire x1="43.18" y1="-292.1" x2="35.56" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="LED37" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-317.5" x2="43.18" y2="-317.5" width="0.1524" layer="91"/>
<pinref part="LED38" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-342.9" x2="43.18" y2="-342.9" width="0.1524" layer="91"/>
<pinref part="LED39" gate="G$1" pin="DP"/>
<wire x1="43.18" y1="-368.3" x2="35.56" y2="-368.3" width="0.1524" layer="91"/>
<pinref part="LED40" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="-393.7" x2="43.18" y2="-393.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG0"/>
<wire x1="-10.16" y1="-269.24" x2="2.54" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-269.24" x2="2.54" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-231.14" x2="2.54" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-228.6" x2="43.18" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-231.14" x2="43.18" y2="-231.14" width="0.1524" layer="91"/>
<junction x="2.54" y="-231.14"/>
<pinref part="LED33" gate="G$1" pin="COM@2"/>
<pinref part="LED33" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG1"/>
<wire x1="-10.16" y1="-271.78" x2="5.08" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-271.78" x2="5.08" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-256.54" x2="5.08" y2="-254" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-254" x2="43.18" y2="-254" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-256.54" x2="43.18" y2="-256.54" width="0.1524" layer="91"/>
<junction x="5.08" y="-256.54"/>
<pinref part="LED34" gate="G$1" pin="COM@2"/>
<pinref part="LED34" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG2"/>
<wire x1="-10.16" y1="-274.32" x2="33.02" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-274.32" x2="33.02" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-279.4" x2="33.02" y2="-281.94" width="0.1524" layer="91"/>
<junction x="33.02" y="-279.4"/>
<pinref part="LED35" gate="G$1" pin="COM@2"/>
<wire x1="43.18" y1="-279.4" x2="33.02" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="LED35" gate="G$1" pin="COM@1"/>
<wire x1="33.02" y1="-281.94" x2="43.18" y2="-281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG3"/>
<wire x1="-10.16" y1="-276.86" x2="30.48" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-276.86" x2="30.48" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-304.8" x2="43.18" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-304.8" x2="30.48" y2="-307.34" width="0.1524" layer="91"/>
<junction x="30.48" y="-304.8"/>
<wire x1="30.48" y1="-307.34" x2="43.18" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="LED36" gate="G$1" pin="COM@2"/>
<pinref part="LED36" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG4"/>
<wire x1="-10.16" y1="-279.4" x2="27.94" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-279.4" x2="27.94" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-330.2" x2="43.18" y2="-330.2" width="0.1524" layer="91"/>
<pinref part="LED37" gate="G$1" pin="COM@2"/>
<wire x1="27.94" y1="-330.2" x2="27.94" y2="-332.74" width="0.1524" layer="91"/>
<junction x="27.94" y="-330.2"/>
<pinref part="LED37" gate="G$1" pin="COM@1"/>
<wire x1="27.94" y1="-332.74" x2="43.18" y2="-332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG5"/>
<wire x1="-10.16" y1="-281.94" x2="25.4" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-281.94" x2="25.4" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-355.6" x2="25.4" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-358.14" x2="43.18" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-355.6" x2="43.18" y2="-355.6" width="0.1524" layer="91"/>
<junction x="25.4" y="-355.6"/>
<pinref part="LED38" gate="G$1" pin="COM@2"/>
<pinref part="LED38" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<wire x1="22.86" y1="-381" x2="43.18" y2="-381" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="DIG6"/>
<wire x1="-10.16" y1="-284.48" x2="22.86" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-284.48" x2="22.86" y2="-381" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-381" x2="22.86" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-383.54" x2="43.18" y2="-383.54" width="0.1524" layer="91"/>
<junction x="22.86" y="-381"/>
<pinref part="LED39" gate="G$1" pin="COM@2"/>
<pinref part="LED39" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DIG7"/>
<wire x1="-10.16" y1="-287.02" x2="20.32" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-287.02" x2="20.32" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-406.4" x2="20.32" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-408.94" x2="43.18" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-406.4" x2="20.32" y2="-406.4" width="0.1524" layer="91"/>
<junction x="20.32" y="-406.4"/>
<pinref part="LED40" gate="G$1" pin="COM@2"/>
<pinref part="LED40" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$101" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGA"/>
<wire x1="-10.16" y1="-289.56" x2="17.78" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-289.56" x2="17.78" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-419.1" x2="68.58" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-419.1" x2="68.58" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-408.94" x2="68.58" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-383.54" x2="68.58" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-358.14" x2="68.58" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-332.74" x2="68.58" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-307.34" x2="68.58" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-281.94" x2="68.58" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-256.54" x2="68.58" y2="-231.14" width="0.1524" layer="91"/>
<junction x="68.58" y="-256.54"/>
<wire x1="63.5" y1="-256.54" x2="68.58" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-281.94" x2="68.58" y2="-281.94" width="0.1524" layer="91"/>
<junction x="68.58" y="-281.94"/>
<wire x1="63.5" y1="-307.34" x2="68.58" y2="-307.34" width="0.1524" layer="91"/>
<junction x="68.58" y="-307.34"/>
<wire x1="63.5" y1="-332.74" x2="68.58" y2="-332.74" width="0.1524" layer="91"/>
<junction x="68.58" y="-332.74"/>
<wire x1="63.5" y1="-358.14" x2="68.58" y2="-358.14" width="0.1524" layer="91"/>
<junction x="68.58" y="-358.14"/>
<wire x1="63.5" y1="-383.54" x2="68.58" y2="-383.54" width="0.1524" layer="91"/>
<junction x="68.58" y="-383.54"/>
<junction x="68.58" y="-408.94"/>
<pinref part="LED33" gate="G$1" pin="A"/>
<wire x1="63.5" y1="-231.14" x2="68.58" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="LED40" gate="G$1" pin="A"/>
<wire x1="63.5" y1="-408.94" x2="68.58" y2="-408.94" width="0.1524" layer="91"/>
<pinref part="LED34" gate="G$1" pin="A"/>
<pinref part="LED35" gate="G$1" pin="A"/>
<pinref part="LED36" gate="G$1" pin="A"/>
<pinref part="LED37" gate="G$1" pin="A"/>
<pinref part="LED38" gate="G$1" pin="A"/>
<pinref part="LED39" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$102" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGB"/>
<wire x1="-10.16" y1="-292.1" x2="15.24" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-292.1" x2="15.24" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-421.64" x2="71.12" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-421.64" x2="71.12" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-406.4" x2="71.12" y2="-381" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-381" x2="71.12" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-355.6" x2="71.12" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-330.2" x2="71.12" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-304.8" x2="71.12" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-279.4" x2="71.12" y2="-254" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-254" x2="71.12" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-228.6" x2="63.5" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-254" x2="71.12" y2="-254" width="0.1524" layer="91"/>
<junction x="71.12" y="-254"/>
<wire x1="63.5" y1="-279.4" x2="71.12" y2="-279.4" width="0.1524" layer="91"/>
<junction x="71.12" y="-279.4"/>
<wire x1="63.5" y1="-304.8" x2="71.12" y2="-304.8" width="0.1524" layer="91"/>
<junction x="71.12" y="-304.8"/>
<wire x1="63.5" y1="-330.2" x2="71.12" y2="-330.2" width="0.1524" layer="91"/>
<junction x="71.12" y="-330.2"/>
<wire x1="63.5" y1="-355.6" x2="71.12" y2="-355.6" width="0.1524" layer="91"/>
<junction x="71.12" y="-355.6"/>
<wire x1="63.5" y1="-381" x2="71.12" y2="-381" width="0.1524" layer="91"/>
<junction x="71.12" y="-381"/>
<wire x1="63.5" y1="-406.4" x2="71.12" y2="-406.4" width="0.1524" layer="91"/>
<junction x="71.12" y="-406.4"/>
<pinref part="LED33" gate="G$1" pin="B"/>
<pinref part="LED40" gate="G$1" pin="B"/>
<pinref part="LED34" gate="G$1" pin="B"/>
<pinref part="LED35" gate="G$1" pin="B"/>
<pinref part="LED36" gate="G$1" pin="B"/>
<pinref part="LED37" gate="G$1" pin="B"/>
<pinref part="LED38" gate="G$1" pin="B"/>
<pinref part="LED39" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$103" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGC"/>
<wire x1="-10.16" y1="-294.64" x2="12.7" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-294.64" x2="12.7" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-424.18" x2="73.66" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-424.18" x2="73.66" y2="-403.86" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-403.86" x2="73.66" y2="-378.46" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-378.46" x2="73.66" y2="-353.06" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-353.06" x2="73.66" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-327.66" x2="73.66" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-302.26" x2="73.66" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-276.86" x2="73.66" y2="-251.46" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-251.46" x2="73.66" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-226.06" x2="63.5" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-251.46" x2="73.66" y2="-251.46" width="0.1524" layer="91"/>
<junction x="73.66" y="-251.46"/>
<wire x1="63.5" y1="-276.86" x2="73.66" y2="-276.86" width="0.1524" layer="91"/>
<junction x="73.66" y="-276.86"/>
<wire x1="63.5" y1="-302.26" x2="73.66" y2="-302.26" width="0.1524" layer="91"/>
<junction x="73.66" y="-302.26"/>
<wire x1="63.5" y1="-327.66" x2="73.66" y2="-327.66" width="0.1524" layer="91"/>
<junction x="73.66" y="-327.66"/>
<wire x1="63.5" y1="-353.06" x2="73.66" y2="-353.06" width="0.1524" layer="91"/>
<junction x="73.66" y="-353.06"/>
<wire x1="63.5" y1="-378.46" x2="73.66" y2="-378.46" width="0.1524" layer="91"/>
<junction x="73.66" y="-378.46"/>
<wire x1="63.5" y1="-403.86" x2="73.66" y2="-403.86" width="0.1524" layer="91"/>
<junction x="73.66" y="-403.86"/>
<pinref part="LED33" gate="G$1" pin="C"/>
<pinref part="LED40" gate="G$1" pin="C"/>
<pinref part="LED34" gate="G$1" pin="C"/>
<pinref part="LED35" gate="G$1" pin="C"/>
<pinref part="LED36" gate="G$1" pin="C"/>
<pinref part="LED37" gate="G$1" pin="C"/>
<pinref part="LED38" gate="G$1" pin="C"/>
<pinref part="LED39" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$104" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGD"/>
<wire x1="-10.16" y1="-297.18" x2="10.16" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-297.18" x2="10.16" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-426.72" x2="76.2" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-426.72" x2="76.2" y2="-401.32" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-401.32" x2="76.2" y2="-375.92" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-375.92" x2="76.2" y2="-350.52" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-350.52" x2="76.2" y2="-325.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-325.12" x2="76.2" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-299.72" x2="76.2" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-274.32" x2="76.2" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-248.92" x2="76.2" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-223.52" x2="63.5" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-248.92" x2="76.2" y2="-248.92" width="0.1524" layer="91"/>
<junction x="76.2" y="-248.92"/>
<wire x1="63.5" y1="-274.32" x2="76.2" y2="-274.32" width="0.1524" layer="91"/>
<junction x="76.2" y="-274.32"/>
<wire x1="63.5" y1="-299.72" x2="76.2" y2="-299.72" width="0.1524" layer="91"/>
<junction x="76.2" y="-299.72"/>
<wire x1="63.5" y1="-325.12" x2="76.2" y2="-325.12" width="0.1524" layer="91"/>
<junction x="76.2" y="-325.12"/>
<wire x1="63.5" y1="-350.52" x2="76.2" y2="-350.52" width="0.1524" layer="91"/>
<junction x="76.2" y="-350.52"/>
<wire x1="63.5" y1="-375.92" x2="76.2" y2="-375.92" width="0.1524" layer="91"/>
<junction x="76.2" y="-375.92"/>
<wire x1="63.5" y1="-401.32" x2="76.2" y2="-401.32" width="0.1524" layer="91"/>
<junction x="76.2" y="-401.32"/>
<pinref part="LED33" gate="G$1" pin="D"/>
<pinref part="LED40" gate="G$1" pin="D"/>
<pinref part="LED34" gate="G$1" pin="D"/>
<pinref part="LED35" gate="G$1" pin="D"/>
<pinref part="LED36" gate="G$1" pin="D"/>
<pinref part="LED37" gate="G$1" pin="D"/>
<pinref part="LED38" gate="G$1" pin="D"/>
<pinref part="LED39" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$105" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGE"/>
<wire x1="-10.16" y1="-299.72" x2="7.62" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-299.72" x2="7.62" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-429.26" x2="78.74" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-429.26" x2="78.74" y2="-398.78" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-398.78" x2="78.74" y2="-373.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-373.38" x2="78.74" y2="-347.98" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-347.98" x2="78.74" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-322.58" x2="78.74" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-297.18" x2="78.74" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-271.78" x2="78.74" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-246.38" x2="78.74" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-220.98" x2="63.5" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-246.38" x2="78.74" y2="-246.38" width="0.1524" layer="91"/>
<junction x="78.74" y="-246.38"/>
<wire x1="63.5" y1="-271.78" x2="78.74" y2="-271.78" width="0.1524" layer="91"/>
<junction x="78.74" y="-271.78"/>
<wire x1="63.5" y1="-297.18" x2="78.74" y2="-297.18" width="0.1524" layer="91"/>
<junction x="78.74" y="-297.18"/>
<wire x1="63.5" y1="-322.58" x2="78.74" y2="-322.58" width="0.1524" layer="91"/>
<junction x="78.74" y="-322.58"/>
<wire x1="63.5" y1="-347.98" x2="78.74" y2="-347.98" width="0.1524" layer="91"/>
<junction x="78.74" y="-347.98"/>
<wire x1="63.5" y1="-373.38" x2="78.74" y2="-373.38" width="0.1524" layer="91"/>
<junction x="78.74" y="-373.38"/>
<wire x1="63.5" y1="-398.78" x2="78.74" y2="-398.78" width="0.1524" layer="91"/>
<junction x="78.74" y="-398.78"/>
<pinref part="LED33" gate="G$1" pin="E"/>
<pinref part="LED40" gate="G$1" pin="E"/>
<pinref part="LED34" gate="G$1" pin="E"/>
<pinref part="LED35" gate="G$1" pin="E"/>
<pinref part="LED36" gate="G$1" pin="E"/>
<pinref part="LED37" gate="G$1" pin="E"/>
<pinref part="LED38" gate="G$1" pin="E"/>
<pinref part="LED39" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$106" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGG"/>
<wire x1="-10.16" y1="-304.8" x2="2.54" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-304.8" x2="2.54" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-434.34" x2="83.82" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-434.34" x2="83.82" y2="-393.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-393.7" x2="83.82" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-368.3" x2="83.82" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-342.9" x2="83.82" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-317.5" x2="83.82" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-292.1" x2="83.82" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-266.7" x2="83.82" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-241.3" x2="83.82" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-215.9" x2="63.5" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-241.3" x2="83.82" y2="-241.3" width="0.1524" layer="91"/>
<junction x="83.82" y="-241.3"/>
<wire x1="63.5" y1="-266.7" x2="83.82" y2="-266.7" width="0.1524" layer="91"/>
<junction x="83.82" y="-266.7"/>
<wire x1="63.5" y1="-292.1" x2="83.82" y2="-292.1" width="0.1524" layer="91"/>
<junction x="83.82" y="-292.1"/>
<wire x1="63.5" y1="-317.5" x2="83.82" y2="-317.5" width="0.1524" layer="91"/>
<junction x="83.82" y="-317.5"/>
<wire x1="63.5" y1="-342.9" x2="83.82" y2="-342.9" width="0.1524" layer="91"/>
<junction x="83.82" y="-342.9"/>
<wire x1="63.5" y1="-368.3" x2="83.82" y2="-368.3" width="0.1524" layer="91"/>
<junction x="83.82" y="-368.3"/>
<wire x1="63.5" y1="-393.7" x2="83.82" y2="-393.7" width="0.1524" layer="91"/>
<junction x="83.82" y="-393.7"/>
<pinref part="LED33" gate="G$1" pin="G"/>
<pinref part="LED40" gate="G$1" pin="G"/>
<pinref part="LED34" gate="G$1" pin="G"/>
<pinref part="LED35" gate="G$1" pin="G"/>
<pinref part="LED36" gate="G$1" pin="G"/>
<pinref part="LED37" gate="G$1" pin="G"/>
<pinref part="LED38" gate="G$1" pin="G"/>
<pinref part="LED39" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$107" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="SEGF"/>
<wire x1="-10.16" y1="-302.26" x2="5.08" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-302.26" x2="5.08" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-431.8" x2="81.28" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-431.8" x2="81.28" y2="-396.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-396.24" x2="81.28" y2="-370.84" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-370.84" x2="81.28" y2="-345.44" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-345.44" x2="81.28" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-320.04" x2="81.28" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-294.64" x2="81.28" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-269.24" x2="81.28" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-243.84" x2="81.28" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-218.44" x2="63.5" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-243.84" x2="81.28" y2="-243.84" width="0.1524" layer="91"/>
<junction x="81.28" y="-243.84"/>
<wire x1="63.5" y1="-269.24" x2="81.28" y2="-269.24" width="0.1524" layer="91"/>
<junction x="81.28" y="-269.24"/>
<wire x1="63.5" y1="-294.64" x2="81.28" y2="-294.64" width="0.1524" layer="91"/>
<junction x="81.28" y="-294.64"/>
<wire x1="63.5" y1="-320.04" x2="81.28" y2="-320.04" width="0.1524" layer="91"/>
<junction x="81.28" y="-320.04"/>
<wire x1="63.5" y1="-345.44" x2="81.28" y2="-345.44" width="0.1524" layer="91"/>
<junction x="81.28" y="-345.44"/>
<wire x1="63.5" y1="-370.84" x2="81.28" y2="-370.84" width="0.1524" layer="91"/>
<junction x="81.28" y="-370.84"/>
<wire x1="63.5" y1="-396.24" x2="81.28" y2="-396.24" width="0.1524" layer="91"/>
<junction x="81.28" y="-396.24"/>
<pinref part="LED33" gate="G$1" pin="F"/>
<pinref part="LED40" gate="G$1" pin="F"/>
<pinref part="LED34" gate="G$1" pin="F"/>
<pinref part="LED35" gate="G$1" pin="F"/>
<pinref part="LED36" gate="G$1" pin="F"/>
<pinref part="LED37" gate="G$1" pin="F"/>
<pinref part="LED38" gate="G$1" pin="F"/>
<pinref part="LED39" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$109" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="DOUT"/>
<wire x1="-38.1" y1="-281.94" x2="-55.88" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-281.94" x2="-55.88" y2="-203.2" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="DIN"/>
<wire x1="119.38" y1="-279.4" x2="99.06" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-279.4" x2="99.06" y2="-203.2" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-203.2" x2="99.06" y2="-203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$115" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="IC6" gate="G$1" pin="ISET"/>
<wire x1="114.3" y1="-289.56" x2="114.3" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-287.02" x2="119.38" y2="-287.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$116" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGDP"/>
<wire x1="147.32" y1="-307.34" x2="157.48" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-307.34" x2="157.48" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-215.9" x2="193.04" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-215.9" x2="193.04" y2="-241.3" width="0.1524" layer="91"/>
<junction x="193.04" y="-215.9"/>
<wire x1="193.04" y1="-241.3" x2="193.04" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-266.7" x2="193.04" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-292.1" x2="193.04" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-317.5" x2="193.04" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-342.9" x2="193.04" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-368.3" x2="193.04" y2="-393.7" width="0.1524" layer="91"/>
<junction x="193.04" y="-241.3"/>
<junction x="193.04" y="-266.7"/>
<junction x="193.04" y="-292.1"/>
<junction x="193.04" y="-317.5"/>
<junction x="193.04" y="-342.9"/>
<junction x="193.04" y="-368.3"/>
<pinref part="LED41" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-215.9" x2="200.66" y2="-215.9" width="0.1524" layer="91"/>
<pinref part="LED42" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-241.3" x2="200.66" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="LED43" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-266.7" x2="200.66" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="LED44" gate="G$1" pin="DP"/>
<wire x1="200.66" y1="-292.1" x2="193.04" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="LED45" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-317.5" x2="200.66" y2="-317.5" width="0.1524" layer="91"/>
<pinref part="LED46" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-342.9" x2="200.66" y2="-342.9" width="0.1524" layer="91"/>
<pinref part="LED47" gate="G$1" pin="DP"/>
<wire x1="200.66" y1="-368.3" x2="193.04" y2="-368.3" width="0.1524" layer="91"/>
<pinref part="LED48" gate="G$1" pin="DP"/>
<wire x1="193.04" y1="-393.7" x2="200.66" y2="-393.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$117" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG0"/>
<wire x1="147.32" y1="-269.24" x2="160.02" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-269.24" x2="160.02" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-231.14" x2="160.02" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-228.6" x2="200.66" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-231.14" x2="200.66" y2="-231.14" width="0.1524" layer="91"/>
<junction x="160.02" y="-231.14"/>
<pinref part="LED41" gate="G$1" pin="COM@2"/>
<pinref part="LED41" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$118" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG1"/>
<wire x1="147.32" y1="-271.78" x2="162.56" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-271.78" x2="162.56" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-256.54" x2="162.56" y2="-254" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-254" x2="200.66" y2="-254" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-256.54" x2="200.66" y2="-256.54" width="0.1524" layer="91"/>
<junction x="162.56" y="-256.54"/>
<pinref part="LED42" gate="G$1" pin="COM@2"/>
<pinref part="LED42" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$119" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG2"/>
<wire x1="147.32" y1="-274.32" x2="190.5" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-274.32" x2="190.5" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-279.4" x2="190.5" y2="-281.94" width="0.1524" layer="91"/>
<junction x="190.5" y="-279.4"/>
<pinref part="LED43" gate="G$1" pin="COM@2"/>
<wire x1="200.66" y1="-279.4" x2="190.5" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="LED43" gate="G$1" pin="COM@1"/>
<wire x1="190.5" y1="-281.94" x2="200.66" y2="-281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$120" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG3"/>
<wire x1="147.32" y1="-276.86" x2="187.96" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-276.86" x2="187.96" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-304.8" x2="200.66" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-304.8" x2="187.96" y2="-307.34" width="0.1524" layer="91"/>
<junction x="187.96" y="-304.8"/>
<wire x1="187.96" y1="-307.34" x2="200.66" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="LED44" gate="G$1" pin="COM@2"/>
<pinref part="LED44" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$121" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG4"/>
<wire x1="147.32" y1="-279.4" x2="185.42" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-279.4" x2="185.42" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-330.2" x2="185.42" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-330.2" x2="200.66" y2="-330.2" width="0.1524" layer="91"/>
<junction x="185.42" y="-330.2"/>
<pinref part="LED45" gate="G$1" pin="COM@2"/>
<pinref part="LED45" gate="G$1" pin="COM@1"/>
<wire x1="185.42" y1="-332.74" x2="200.66" y2="-332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG5"/>
<wire x1="147.32" y1="-281.94" x2="182.88" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-281.94" x2="182.88" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-355.6" x2="182.88" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-358.14" x2="200.66" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-355.6" x2="200.66" y2="-355.6" width="0.1524" layer="91"/>
<junction x="182.88" y="-355.6"/>
<pinref part="LED46" gate="G$1" pin="COM@2"/>
<pinref part="LED46" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<wire x1="180.34" y1="-381" x2="200.66" y2="-381" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="DIG6"/>
<wire x1="147.32" y1="-284.48" x2="180.34" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-284.48" x2="180.34" y2="-381" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-381" x2="180.34" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-383.54" x2="200.66" y2="-383.54" width="0.1524" layer="91"/>
<junction x="180.34" y="-381"/>
<pinref part="LED47" gate="G$1" pin="COM@2"/>
<pinref part="LED47" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DIG7"/>
<wire x1="147.32" y1="-287.02" x2="177.8" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-287.02" x2="177.8" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-406.4" x2="177.8" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-408.94" x2="200.66" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-406.4" x2="177.8" y2="-406.4" width="0.1524" layer="91"/>
<junction x="177.8" y="-406.4"/>
<pinref part="LED48" gate="G$1" pin="COM@2"/>
<pinref part="LED48" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGA"/>
<wire x1="147.32" y1="-289.56" x2="175.26" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-289.56" x2="175.26" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-419.1" x2="226.06" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-419.1" x2="226.06" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-408.94" x2="226.06" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-383.54" x2="226.06" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-358.14" x2="226.06" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-332.74" x2="226.06" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-307.34" x2="226.06" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-281.94" x2="226.06" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-256.54" x2="226.06" y2="-231.14" width="0.1524" layer="91"/>
<junction x="226.06" y="-256.54"/>
<wire x1="220.98" y1="-256.54" x2="226.06" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-281.94" x2="226.06" y2="-281.94" width="0.1524" layer="91"/>
<junction x="226.06" y="-281.94"/>
<wire x1="220.98" y1="-307.34" x2="226.06" y2="-307.34" width="0.1524" layer="91"/>
<junction x="226.06" y="-307.34"/>
<wire x1="220.98" y1="-332.74" x2="226.06" y2="-332.74" width="0.1524" layer="91"/>
<junction x="226.06" y="-332.74"/>
<wire x1="220.98" y1="-358.14" x2="226.06" y2="-358.14" width="0.1524" layer="91"/>
<junction x="226.06" y="-358.14"/>
<wire x1="220.98" y1="-383.54" x2="226.06" y2="-383.54" width="0.1524" layer="91"/>
<junction x="226.06" y="-383.54"/>
<junction x="226.06" y="-408.94"/>
<pinref part="LED41" gate="G$1" pin="A"/>
<wire x1="220.98" y1="-231.14" x2="226.06" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="LED48" gate="G$1" pin="A"/>
<wire x1="220.98" y1="-408.94" x2="226.06" y2="-408.94" width="0.1524" layer="91"/>
<pinref part="LED42" gate="G$1" pin="A"/>
<pinref part="LED43" gate="G$1" pin="A"/>
<pinref part="LED44" gate="G$1" pin="A"/>
<pinref part="LED45" gate="G$1" pin="A"/>
<pinref part="LED46" gate="G$1" pin="A"/>
<pinref part="LED47" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGB"/>
<wire x1="147.32" y1="-292.1" x2="172.72" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-292.1" x2="172.72" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-421.64" x2="228.6" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-421.64" x2="228.6" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-406.4" x2="228.6" y2="-381" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-381" x2="228.6" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-355.6" x2="228.6" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-330.2" x2="228.6" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-304.8" x2="228.6" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-279.4" x2="228.6" y2="-254" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-254" x2="228.6" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-228.6" x2="220.98" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-254" x2="228.6" y2="-254" width="0.1524" layer="91"/>
<junction x="228.6" y="-254"/>
<wire x1="220.98" y1="-279.4" x2="228.6" y2="-279.4" width="0.1524" layer="91"/>
<junction x="228.6" y="-279.4"/>
<wire x1="220.98" y1="-304.8" x2="228.6" y2="-304.8" width="0.1524" layer="91"/>
<junction x="228.6" y="-304.8"/>
<wire x1="220.98" y1="-330.2" x2="228.6" y2="-330.2" width="0.1524" layer="91"/>
<junction x="228.6" y="-330.2"/>
<wire x1="220.98" y1="-355.6" x2="228.6" y2="-355.6" width="0.1524" layer="91"/>
<junction x="228.6" y="-355.6"/>
<wire x1="220.98" y1="-381" x2="228.6" y2="-381" width="0.1524" layer="91"/>
<junction x="228.6" y="-381"/>
<wire x1="220.98" y1="-406.4" x2="228.6" y2="-406.4" width="0.1524" layer="91"/>
<junction x="228.6" y="-406.4"/>
<pinref part="LED41" gate="G$1" pin="B"/>
<pinref part="LED48" gate="G$1" pin="B"/>
<pinref part="LED42" gate="G$1" pin="B"/>
<pinref part="LED43" gate="G$1" pin="B"/>
<pinref part="LED44" gate="G$1" pin="B"/>
<pinref part="LED45" gate="G$1" pin="B"/>
<pinref part="LED46" gate="G$1" pin="B"/>
<pinref part="LED47" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGC"/>
<wire x1="147.32" y1="-294.64" x2="170.18" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-294.64" x2="170.18" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-424.18" x2="231.14" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-424.18" x2="231.14" y2="-403.86" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-403.86" x2="231.14" y2="-378.46" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-378.46" x2="231.14" y2="-353.06" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-353.06" x2="231.14" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-327.66" x2="231.14" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-302.26" x2="231.14" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-276.86" x2="231.14" y2="-251.46" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-251.46" x2="231.14" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-226.06" x2="220.98" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-251.46" x2="231.14" y2="-251.46" width="0.1524" layer="91"/>
<junction x="231.14" y="-251.46"/>
<wire x1="220.98" y1="-276.86" x2="231.14" y2="-276.86" width="0.1524" layer="91"/>
<junction x="231.14" y="-276.86"/>
<wire x1="220.98" y1="-302.26" x2="231.14" y2="-302.26" width="0.1524" layer="91"/>
<junction x="231.14" y="-302.26"/>
<wire x1="220.98" y1="-327.66" x2="231.14" y2="-327.66" width="0.1524" layer="91"/>
<junction x="231.14" y="-327.66"/>
<wire x1="220.98" y1="-353.06" x2="231.14" y2="-353.06" width="0.1524" layer="91"/>
<junction x="231.14" y="-353.06"/>
<wire x1="220.98" y1="-378.46" x2="231.14" y2="-378.46" width="0.1524" layer="91"/>
<junction x="231.14" y="-378.46"/>
<wire x1="220.98" y1="-403.86" x2="231.14" y2="-403.86" width="0.1524" layer="91"/>
<junction x="231.14" y="-403.86"/>
<pinref part="LED41" gate="G$1" pin="C"/>
<pinref part="LED48" gate="G$1" pin="C"/>
<pinref part="LED42" gate="G$1" pin="C"/>
<pinref part="LED43" gate="G$1" pin="C"/>
<pinref part="LED44" gate="G$1" pin="C"/>
<pinref part="LED45" gate="G$1" pin="C"/>
<pinref part="LED46" gate="G$1" pin="C"/>
<pinref part="LED47" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGD"/>
<wire x1="147.32" y1="-297.18" x2="167.64" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-297.18" x2="167.64" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-426.72" x2="233.68" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-426.72" x2="233.68" y2="-401.32" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-401.32" x2="233.68" y2="-375.92" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-375.92" x2="233.68" y2="-350.52" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-350.52" x2="233.68" y2="-325.12" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-325.12" x2="233.68" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-299.72" x2="233.68" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-274.32" x2="233.68" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-248.92" x2="233.68" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-223.52" x2="220.98" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-248.92" x2="233.68" y2="-248.92" width="0.1524" layer="91"/>
<junction x="233.68" y="-248.92"/>
<wire x1="220.98" y1="-274.32" x2="233.68" y2="-274.32" width="0.1524" layer="91"/>
<junction x="233.68" y="-274.32"/>
<wire x1="220.98" y1="-299.72" x2="233.68" y2="-299.72" width="0.1524" layer="91"/>
<junction x="233.68" y="-299.72"/>
<wire x1="220.98" y1="-325.12" x2="233.68" y2="-325.12" width="0.1524" layer="91"/>
<junction x="233.68" y="-325.12"/>
<wire x1="220.98" y1="-350.52" x2="233.68" y2="-350.52" width="0.1524" layer="91"/>
<junction x="233.68" y="-350.52"/>
<wire x1="220.98" y1="-375.92" x2="233.68" y2="-375.92" width="0.1524" layer="91"/>
<junction x="233.68" y="-375.92"/>
<wire x1="220.98" y1="-401.32" x2="233.68" y2="-401.32" width="0.1524" layer="91"/>
<junction x="233.68" y="-401.32"/>
<pinref part="LED41" gate="G$1" pin="D"/>
<pinref part="LED48" gate="G$1" pin="D"/>
<pinref part="LED42" gate="G$1" pin="D"/>
<pinref part="LED43" gate="G$1" pin="D"/>
<pinref part="LED44" gate="G$1" pin="D"/>
<pinref part="LED45" gate="G$1" pin="D"/>
<pinref part="LED46" gate="G$1" pin="D"/>
<pinref part="LED47" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$129" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGE"/>
<wire x1="147.32" y1="-299.72" x2="165.1" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-299.72" x2="165.1" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-429.26" x2="236.22" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-429.26" x2="236.22" y2="-398.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-398.78" x2="236.22" y2="-373.38" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-373.38" x2="236.22" y2="-347.98" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-347.98" x2="236.22" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-322.58" x2="236.22" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-297.18" x2="236.22" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-271.78" x2="236.22" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-246.38" x2="236.22" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-220.98" x2="220.98" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-246.38" x2="236.22" y2="-246.38" width="0.1524" layer="91"/>
<junction x="236.22" y="-246.38"/>
<wire x1="220.98" y1="-271.78" x2="236.22" y2="-271.78" width="0.1524" layer="91"/>
<junction x="236.22" y="-271.78"/>
<wire x1="220.98" y1="-297.18" x2="236.22" y2="-297.18" width="0.1524" layer="91"/>
<junction x="236.22" y="-297.18"/>
<wire x1="220.98" y1="-322.58" x2="236.22" y2="-322.58" width="0.1524" layer="91"/>
<junction x="236.22" y="-322.58"/>
<wire x1="220.98" y1="-347.98" x2="236.22" y2="-347.98" width="0.1524" layer="91"/>
<junction x="236.22" y="-347.98"/>
<wire x1="220.98" y1="-373.38" x2="236.22" y2="-373.38" width="0.1524" layer="91"/>
<junction x="236.22" y="-373.38"/>
<wire x1="220.98" y1="-398.78" x2="236.22" y2="-398.78" width="0.1524" layer="91"/>
<junction x="236.22" y="-398.78"/>
<pinref part="LED41" gate="G$1" pin="E"/>
<pinref part="LED48" gate="G$1" pin="E"/>
<pinref part="LED42" gate="G$1" pin="E"/>
<pinref part="LED43" gate="G$1" pin="E"/>
<pinref part="LED44" gate="G$1" pin="E"/>
<pinref part="LED45" gate="G$1" pin="E"/>
<pinref part="LED46" gate="G$1" pin="E"/>
<pinref part="LED47" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$130" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGG"/>
<wire x1="147.32" y1="-304.8" x2="160.02" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-304.8" x2="160.02" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-434.34" x2="241.3" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-434.34" x2="241.3" y2="-393.7" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-393.7" x2="241.3" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-368.3" x2="241.3" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-342.9" x2="241.3" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-317.5" x2="241.3" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-292.1" x2="241.3" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-266.7" x2="241.3" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-241.3" x2="241.3" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-215.9" x2="220.98" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-241.3" x2="241.3" y2="-241.3" width="0.1524" layer="91"/>
<junction x="241.3" y="-241.3"/>
<wire x1="220.98" y1="-266.7" x2="241.3" y2="-266.7" width="0.1524" layer="91"/>
<junction x="241.3" y="-266.7"/>
<wire x1="220.98" y1="-292.1" x2="241.3" y2="-292.1" width="0.1524" layer="91"/>
<junction x="241.3" y="-292.1"/>
<wire x1="220.98" y1="-317.5" x2="241.3" y2="-317.5" width="0.1524" layer="91"/>
<junction x="241.3" y="-317.5"/>
<wire x1="220.98" y1="-342.9" x2="241.3" y2="-342.9" width="0.1524" layer="91"/>
<junction x="241.3" y="-342.9"/>
<wire x1="220.98" y1="-368.3" x2="241.3" y2="-368.3" width="0.1524" layer="91"/>
<junction x="241.3" y="-368.3"/>
<wire x1="220.98" y1="-393.7" x2="241.3" y2="-393.7" width="0.1524" layer="91"/>
<junction x="241.3" y="-393.7"/>
<pinref part="LED41" gate="G$1" pin="G"/>
<pinref part="LED48" gate="G$1" pin="G"/>
<pinref part="LED42" gate="G$1" pin="G"/>
<pinref part="LED43" gate="G$1" pin="G"/>
<pinref part="LED44" gate="G$1" pin="G"/>
<pinref part="LED45" gate="G$1" pin="G"/>
<pinref part="LED46" gate="G$1" pin="G"/>
<pinref part="LED47" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$131" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="SEGF"/>
<wire x1="147.32" y1="-302.26" x2="162.56" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-302.26" x2="162.56" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-431.8" x2="238.76" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-431.8" x2="238.76" y2="-396.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-396.24" x2="238.76" y2="-370.84" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-370.84" x2="238.76" y2="-345.44" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-345.44" x2="238.76" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-320.04" x2="238.76" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-294.64" x2="238.76" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-269.24" x2="238.76" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-243.84" x2="238.76" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-218.44" x2="220.98" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-243.84" x2="238.76" y2="-243.84" width="0.1524" layer="91"/>
<junction x="238.76" y="-243.84"/>
<wire x1="220.98" y1="-269.24" x2="238.76" y2="-269.24" width="0.1524" layer="91"/>
<junction x="238.76" y="-269.24"/>
<wire x1="220.98" y1="-294.64" x2="238.76" y2="-294.64" width="0.1524" layer="91"/>
<junction x="238.76" y="-294.64"/>
<wire x1="220.98" y1="-320.04" x2="238.76" y2="-320.04" width="0.1524" layer="91"/>
<junction x="238.76" y="-320.04"/>
<wire x1="220.98" y1="-345.44" x2="238.76" y2="-345.44" width="0.1524" layer="91"/>
<junction x="238.76" y="-345.44"/>
<wire x1="220.98" y1="-370.84" x2="238.76" y2="-370.84" width="0.1524" layer="91"/>
<junction x="238.76" y="-370.84"/>
<wire x1="220.98" y1="-396.24" x2="238.76" y2="-396.24" width="0.1524" layer="91"/>
<junction x="238.76" y="-396.24"/>
<pinref part="LED41" gate="G$1" pin="F"/>
<pinref part="LED48" gate="G$1" pin="F"/>
<pinref part="LED42" gate="G$1" pin="F"/>
<pinref part="LED43" gate="G$1" pin="F"/>
<pinref part="LED44" gate="G$1" pin="F"/>
<pinref part="LED45" gate="G$1" pin="F"/>
<pinref part="LED46" gate="G$1" pin="F"/>
<pinref part="LED47" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$133" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="DOUT"/>
<wire x1="119.38" y1="-281.94" x2="101.6" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-281.94" x2="101.6" y2="-203.2" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="DIN"/>
<wire x1="276.86" y1="-279.4" x2="256.54" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-279.4" x2="256.54" y2="-203.2" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-203.2" x2="256.54" y2="-203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$139" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="IC7" gate="G$1" pin="ISET"/>
<wire x1="271.78" y1="-289.56" x2="271.78" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-287.02" x2="276.86" y2="-287.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$140" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGDP"/>
<wire x1="304.8" y1="-307.34" x2="314.96" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-307.34" x2="314.96" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-215.9" x2="350.52" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-215.9" x2="350.52" y2="-241.3" width="0.1524" layer="91"/>
<junction x="350.52" y="-215.9"/>
<wire x1="350.52" y1="-241.3" x2="350.52" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-266.7" x2="350.52" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-292.1" x2="350.52" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-317.5" x2="350.52" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-342.9" x2="350.52" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-368.3" x2="350.52" y2="-393.7" width="0.1524" layer="91"/>
<junction x="350.52" y="-241.3"/>
<junction x="350.52" y="-266.7"/>
<junction x="350.52" y="-292.1"/>
<junction x="350.52" y="-317.5"/>
<junction x="350.52" y="-342.9"/>
<junction x="350.52" y="-368.3"/>
<pinref part="LED49" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-215.9" x2="358.14" y2="-215.9" width="0.1524" layer="91"/>
<pinref part="LED50" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-241.3" x2="358.14" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="LED51" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-266.7" x2="358.14" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="LED52" gate="G$1" pin="DP"/>
<wire x1="358.14" y1="-292.1" x2="350.52" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="LED53" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-317.5" x2="358.14" y2="-317.5" width="0.1524" layer="91"/>
<pinref part="LED54" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-342.9" x2="358.14" y2="-342.9" width="0.1524" layer="91"/>
<pinref part="LED55" gate="G$1" pin="DP"/>
<wire x1="358.14" y1="-368.3" x2="350.52" y2="-368.3" width="0.1524" layer="91"/>
<pinref part="LED56" gate="G$1" pin="DP"/>
<wire x1="350.52" y1="-393.7" x2="358.14" y2="-393.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$141" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG0"/>
<wire x1="304.8" y1="-269.24" x2="317.5" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-269.24" x2="317.5" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-231.14" x2="317.5" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-228.6" x2="358.14" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-231.14" x2="358.14" y2="-231.14" width="0.1524" layer="91"/>
<junction x="317.5" y="-231.14"/>
<pinref part="LED49" gate="G$1" pin="COM@2"/>
<pinref part="LED49" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$142" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG1"/>
<wire x1="304.8" y1="-271.78" x2="320.04" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-271.78" x2="320.04" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-256.54" x2="320.04" y2="-254" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-254" x2="358.14" y2="-254" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-256.54" x2="358.14" y2="-256.54" width="0.1524" layer="91"/>
<junction x="320.04" y="-256.54"/>
<pinref part="LED50" gate="G$1" pin="COM@2"/>
<pinref part="LED50" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$143" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG2"/>
<wire x1="304.8" y1="-274.32" x2="347.98" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-274.32" x2="347.98" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-279.4" x2="347.98" y2="-281.94" width="0.1524" layer="91"/>
<junction x="347.98" y="-279.4"/>
<pinref part="LED51" gate="G$1" pin="COM@2"/>
<wire x1="358.14" y1="-279.4" x2="347.98" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="LED51" gate="G$1" pin="COM@1"/>
<wire x1="347.98" y1="-281.94" x2="358.14" y2="-281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$144" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG3"/>
<wire x1="304.8" y1="-276.86" x2="345.44" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-276.86" x2="345.44" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-304.8" x2="358.14" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-304.8" x2="345.44" y2="-307.34" width="0.1524" layer="91"/>
<junction x="345.44" y="-304.8"/>
<wire x1="345.44" y1="-307.34" x2="358.14" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="LED52" gate="G$1" pin="COM@2"/>
<pinref part="LED52" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$145" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG4"/>
<wire x1="304.8" y1="-279.4" x2="342.9" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-279.4" x2="342.9" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-330.2" x2="342.9" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-330.2" x2="358.14" y2="-330.2" width="0.1524" layer="91"/>
<junction x="342.9" y="-330.2"/>
<pinref part="LED53" gate="G$1" pin="COM@2"/>
<pinref part="LED53" gate="G$1" pin="COM@1"/>
<wire x1="342.9" y1="-332.74" x2="358.14" y2="-332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$146" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG5"/>
<wire x1="304.8" y1="-281.94" x2="340.36" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-281.94" x2="340.36" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-355.6" x2="340.36" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-358.14" x2="358.14" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-355.6" x2="358.14" y2="-355.6" width="0.1524" layer="91"/>
<junction x="340.36" y="-355.6"/>
<pinref part="LED54" gate="G$1" pin="COM@2"/>
<pinref part="LED54" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$147" class="0">
<segment>
<wire x1="337.82" y1="-381" x2="358.14" y2="-381" width="0.1524" layer="91"/>
<pinref part="IC7" gate="G$1" pin="DIG6"/>
<wire x1="304.8" y1="-284.48" x2="337.82" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-284.48" x2="337.82" y2="-381" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-381" x2="337.82" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-383.54" x2="358.14" y2="-383.54" width="0.1524" layer="91"/>
<junction x="337.82" y="-381"/>
<pinref part="LED55" gate="G$1" pin="COM@2"/>
<pinref part="LED55" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$148" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DIG7"/>
<wire x1="304.8" y1="-287.02" x2="335.28" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-287.02" x2="335.28" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-406.4" x2="335.28" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-408.94" x2="358.14" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-406.4" x2="335.28" y2="-406.4" width="0.1524" layer="91"/>
<junction x="335.28" y="-406.4"/>
<pinref part="LED56" gate="G$1" pin="COM@2"/>
<pinref part="LED56" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$149" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGA"/>
<wire x1="304.8" y1="-289.56" x2="332.74" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-289.56" x2="332.74" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-419.1" x2="383.54" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-419.1" x2="383.54" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-408.94" x2="383.54" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-383.54" x2="383.54" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-358.14" x2="383.54" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-332.74" x2="383.54" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-307.34" x2="383.54" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-281.94" x2="383.54" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-256.54" x2="383.54" y2="-231.14" width="0.1524" layer="91"/>
<junction x="383.54" y="-256.54"/>
<wire x1="378.46" y1="-256.54" x2="383.54" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-281.94" x2="383.54" y2="-281.94" width="0.1524" layer="91"/>
<junction x="383.54" y="-281.94"/>
<wire x1="378.46" y1="-307.34" x2="383.54" y2="-307.34" width="0.1524" layer="91"/>
<junction x="383.54" y="-307.34"/>
<wire x1="378.46" y1="-332.74" x2="383.54" y2="-332.74" width="0.1524" layer="91"/>
<junction x="383.54" y="-332.74"/>
<wire x1="378.46" y1="-358.14" x2="383.54" y2="-358.14" width="0.1524" layer="91"/>
<junction x="383.54" y="-358.14"/>
<wire x1="378.46" y1="-383.54" x2="383.54" y2="-383.54" width="0.1524" layer="91"/>
<junction x="383.54" y="-383.54"/>
<junction x="383.54" y="-408.94"/>
<pinref part="LED49" gate="G$1" pin="A"/>
<wire x1="378.46" y1="-231.14" x2="383.54" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="LED56" gate="G$1" pin="A"/>
<wire x1="378.46" y1="-408.94" x2="383.54" y2="-408.94" width="0.1524" layer="91"/>
<pinref part="LED50" gate="G$1" pin="A"/>
<pinref part="LED51" gate="G$1" pin="A"/>
<pinref part="LED52" gate="G$1" pin="A"/>
<pinref part="LED53" gate="G$1" pin="A"/>
<pinref part="LED54" gate="G$1" pin="A"/>
<pinref part="LED55" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$150" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGB"/>
<wire x1="304.8" y1="-292.1" x2="330.2" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-292.1" x2="330.2" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-421.64" x2="386.08" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-421.64" x2="386.08" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-406.4" x2="386.08" y2="-381" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-381" x2="386.08" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-355.6" x2="386.08" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-330.2" x2="386.08" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-304.8" x2="386.08" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-279.4" x2="386.08" y2="-254" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-254" x2="386.08" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-228.6" x2="378.46" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-254" x2="386.08" y2="-254" width="0.1524" layer="91"/>
<junction x="386.08" y="-254"/>
<wire x1="378.46" y1="-279.4" x2="386.08" y2="-279.4" width="0.1524" layer="91"/>
<junction x="386.08" y="-279.4"/>
<wire x1="378.46" y1="-304.8" x2="386.08" y2="-304.8" width="0.1524" layer="91"/>
<junction x="386.08" y="-304.8"/>
<wire x1="378.46" y1="-330.2" x2="386.08" y2="-330.2" width="0.1524" layer="91"/>
<junction x="386.08" y="-330.2"/>
<wire x1="378.46" y1="-355.6" x2="386.08" y2="-355.6" width="0.1524" layer="91"/>
<junction x="386.08" y="-355.6"/>
<wire x1="378.46" y1="-381" x2="386.08" y2="-381" width="0.1524" layer="91"/>
<junction x="386.08" y="-381"/>
<wire x1="378.46" y1="-406.4" x2="386.08" y2="-406.4" width="0.1524" layer="91"/>
<junction x="386.08" y="-406.4"/>
<pinref part="LED49" gate="G$1" pin="B"/>
<pinref part="LED56" gate="G$1" pin="B"/>
<pinref part="LED50" gate="G$1" pin="B"/>
<pinref part="LED51" gate="G$1" pin="B"/>
<pinref part="LED52" gate="G$1" pin="B"/>
<pinref part="LED53" gate="G$1" pin="B"/>
<pinref part="LED54" gate="G$1" pin="B"/>
<pinref part="LED55" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$151" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGC"/>
<wire x1="304.8" y1="-294.64" x2="327.66" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-294.64" x2="327.66" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-424.18" x2="388.62" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-424.18" x2="388.62" y2="-403.86" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-403.86" x2="388.62" y2="-378.46" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-378.46" x2="388.62" y2="-353.06" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-353.06" x2="388.62" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-327.66" x2="388.62" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-302.26" x2="388.62" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-276.86" x2="388.62" y2="-251.46" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-251.46" x2="388.62" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-226.06" x2="378.46" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-251.46" x2="388.62" y2="-251.46" width="0.1524" layer="91"/>
<junction x="388.62" y="-251.46"/>
<wire x1="378.46" y1="-276.86" x2="388.62" y2="-276.86" width="0.1524" layer="91"/>
<junction x="388.62" y="-276.86"/>
<wire x1="378.46" y1="-302.26" x2="388.62" y2="-302.26" width="0.1524" layer="91"/>
<junction x="388.62" y="-302.26"/>
<wire x1="378.46" y1="-327.66" x2="388.62" y2="-327.66" width="0.1524" layer="91"/>
<junction x="388.62" y="-327.66"/>
<wire x1="378.46" y1="-353.06" x2="388.62" y2="-353.06" width="0.1524" layer="91"/>
<junction x="388.62" y="-353.06"/>
<wire x1="378.46" y1="-378.46" x2="388.62" y2="-378.46" width="0.1524" layer="91"/>
<junction x="388.62" y="-378.46"/>
<wire x1="378.46" y1="-403.86" x2="388.62" y2="-403.86" width="0.1524" layer="91"/>
<junction x="388.62" y="-403.86"/>
<pinref part="LED49" gate="G$1" pin="C"/>
<pinref part="LED56" gate="G$1" pin="C"/>
<pinref part="LED50" gate="G$1" pin="C"/>
<pinref part="LED51" gate="G$1" pin="C"/>
<pinref part="LED52" gate="G$1" pin="C"/>
<pinref part="LED53" gate="G$1" pin="C"/>
<pinref part="LED54" gate="G$1" pin="C"/>
<pinref part="LED55" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$152" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGD"/>
<wire x1="304.8" y1="-297.18" x2="325.12" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-297.18" x2="325.12" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-426.72" x2="391.16" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-426.72" x2="391.16" y2="-401.32" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-401.32" x2="391.16" y2="-375.92" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-375.92" x2="391.16" y2="-350.52" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-350.52" x2="391.16" y2="-325.12" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-325.12" x2="391.16" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-299.72" x2="391.16" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-274.32" x2="391.16" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-248.92" x2="391.16" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-223.52" x2="378.46" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-248.92" x2="391.16" y2="-248.92" width="0.1524" layer="91"/>
<junction x="391.16" y="-248.92"/>
<wire x1="378.46" y1="-274.32" x2="391.16" y2="-274.32" width="0.1524" layer="91"/>
<junction x="391.16" y="-274.32"/>
<wire x1="378.46" y1="-299.72" x2="391.16" y2="-299.72" width="0.1524" layer="91"/>
<junction x="391.16" y="-299.72"/>
<wire x1="378.46" y1="-325.12" x2="391.16" y2="-325.12" width="0.1524" layer="91"/>
<junction x="391.16" y="-325.12"/>
<wire x1="378.46" y1="-350.52" x2="391.16" y2="-350.52" width="0.1524" layer="91"/>
<junction x="391.16" y="-350.52"/>
<wire x1="378.46" y1="-375.92" x2="391.16" y2="-375.92" width="0.1524" layer="91"/>
<junction x="391.16" y="-375.92"/>
<wire x1="378.46" y1="-401.32" x2="391.16" y2="-401.32" width="0.1524" layer="91"/>
<junction x="391.16" y="-401.32"/>
<pinref part="LED49" gate="G$1" pin="D"/>
<pinref part="LED56" gate="G$1" pin="D"/>
<pinref part="LED50" gate="G$1" pin="D"/>
<pinref part="LED51" gate="G$1" pin="D"/>
<pinref part="LED52" gate="G$1" pin="D"/>
<pinref part="LED53" gate="G$1" pin="D"/>
<pinref part="LED54" gate="G$1" pin="D"/>
<pinref part="LED55" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$153" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGE"/>
<wire x1="304.8" y1="-299.72" x2="322.58" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-299.72" x2="322.58" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-429.26" x2="393.7" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-429.26" x2="393.7" y2="-398.78" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-398.78" x2="393.7" y2="-373.38" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-373.38" x2="393.7" y2="-347.98" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-347.98" x2="393.7" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-322.58" x2="393.7" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-297.18" x2="393.7" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-271.78" x2="393.7" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-246.38" x2="393.7" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-220.98" x2="378.46" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-246.38" x2="393.7" y2="-246.38" width="0.1524" layer="91"/>
<junction x="393.7" y="-246.38"/>
<wire x1="378.46" y1="-271.78" x2="393.7" y2="-271.78" width="0.1524" layer="91"/>
<junction x="393.7" y="-271.78"/>
<wire x1="378.46" y1="-297.18" x2="393.7" y2="-297.18" width="0.1524" layer="91"/>
<junction x="393.7" y="-297.18"/>
<wire x1="378.46" y1="-322.58" x2="393.7" y2="-322.58" width="0.1524" layer="91"/>
<junction x="393.7" y="-322.58"/>
<wire x1="378.46" y1="-347.98" x2="393.7" y2="-347.98" width="0.1524" layer="91"/>
<junction x="393.7" y="-347.98"/>
<wire x1="378.46" y1="-373.38" x2="393.7" y2="-373.38" width="0.1524" layer="91"/>
<junction x="393.7" y="-373.38"/>
<wire x1="378.46" y1="-398.78" x2="393.7" y2="-398.78" width="0.1524" layer="91"/>
<junction x="393.7" y="-398.78"/>
<pinref part="LED49" gate="G$1" pin="E"/>
<pinref part="LED56" gate="G$1" pin="E"/>
<pinref part="LED50" gate="G$1" pin="E"/>
<pinref part="LED51" gate="G$1" pin="E"/>
<pinref part="LED52" gate="G$1" pin="E"/>
<pinref part="LED53" gate="G$1" pin="E"/>
<pinref part="LED54" gate="G$1" pin="E"/>
<pinref part="LED55" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$154" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGG"/>
<wire x1="304.8" y1="-304.8" x2="317.5" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-304.8" x2="317.5" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-434.34" x2="398.78" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-434.34" x2="398.78" y2="-393.7" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-393.7" x2="398.78" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-368.3" x2="398.78" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-342.9" x2="398.78" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-317.5" x2="398.78" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-292.1" x2="398.78" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-266.7" x2="398.78" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-241.3" x2="398.78" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-215.9" x2="378.46" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-241.3" x2="398.78" y2="-241.3" width="0.1524" layer="91"/>
<junction x="398.78" y="-241.3"/>
<wire x1="378.46" y1="-266.7" x2="398.78" y2="-266.7" width="0.1524" layer="91"/>
<junction x="398.78" y="-266.7"/>
<wire x1="378.46" y1="-292.1" x2="398.78" y2="-292.1" width="0.1524" layer="91"/>
<junction x="398.78" y="-292.1"/>
<wire x1="378.46" y1="-317.5" x2="398.78" y2="-317.5" width="0.1524" layer="91"/>
<junction x="398.78" y="-317.5"/>
<wire x1="378.46" y1="-342.9" x2="398.78" y2="-342.9" width="0.1524" layer="91"/>
<junction x="398.78" y="-342.9"/>
<wire x1="378.46" y1="-368.3" x2="398.78" y2="-368.3" width="0.1524" layer="91"/>
<junction x="398.78" y="-368.3"/>
<wire x1="378.46" y1="-393.7" x2="398.78" y2="-393.7" width="0.1524" layer="91"/>
<junction x="398.78" y="-393.7"/>
<pinref part="LED49" gate="G$1" pin="G"/>
<pinref part="LED56" gate="G$1" pin="G"/>
<pinref part="LED50" gate="G$1" pin="G"/>
<pinref part="LED51" gate="G$1" pin="G"/>
<pinref part="LED52" gate="G$1" pin="G"/>
<pinref part="LED53" gate="G$1" pin="G"/>
<pinref part="LED54" gate="G$1" pin="G"/>
<pinref part="LED55" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$155" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="SEGF"/>
<wire x1="304.8" y1="-302.26" x2="320.04" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-302.26" x2="320.04" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="320.04" y1="-431.8" x2="396.24" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-431.8" x2="396.24" y2="-396.24" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-396.24" x2="396.24" y2="-370.84" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-370.84" x2="396.24" y2="-345.44" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-345.44" x2="396.24" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-320.04" x2="396.24" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-294.64" x2="396.24" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-269.24" x2="396.24" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-243.84" x2="396.24" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-218.44" x2="378.46" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-243.84" x2="396.24" y2="-243.84" width="0.1524" layer="91"/>
<junction x="396.24" y="-243.84"/>
<wire x1="378.46" y1="-269.24" x2="396.24" y2="-269.24" width="0.1524" layer="91"/>
<junction x="396.24" y="-269.24"/>
<wire x1="378.46" y1="-294.64" x2="396.24" y2="-294.64" width="0.1524" layer="91"/>
<junction x="396.24" y="-294.64"/>
<wire x1="378.46" y1="-320.04" x2="396.24" y2="-320.04" width="0.1524" layer="91"/>
<junction x="396.24" y="-320.04"/>
<wire x1="378.46" y1="-345.44" x2="396.24" y2="-345.44" width="0.1524" layer="91"/>
<junction x="396.24" y="-345.44"/>
<wire x1="378.46" y1="-370.84" x2="396.24" y2="-370.84" width="0.1524" layer="91"/>
<junction x="396.24" y="-370.84"/>
<wire x1="378.46" y1="-396.24" x2="396.24" y2="-396.24" width="0.1524" layer="91"/>
<junction x="396.24" y="-396.24"/>
<pinref part="LED49" gate="G$1" pin="F"/>
<pinref part="LED56" gate="G$1" pin="F"/>
<pinref part="LED50" gate="G$1" pin="F"/>
<pinref part="LED51" gate="G$1" pin="F"/>
<pinref part="LED52" gate="G$1" pin="F"/>
<pinref part="LED53" gate="G$1" pin="F"/>
<pinref part="LED54" gate="G$1" pin="F"/>
<pinref part="LED55" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$157" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="DOUT"/>
<wire x1="276.86" y1="-281.94" x2="259.08" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-281.94" x2="259.08" y2="-203.2" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="DIN"/>
<wire x1="434.34" y1="-279.4" x2="414.02" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="414.02" y1="-279.4" x2="414.02" y2="-203.2" width="0.1524" layer="91"/>
<wire x1="259.08" y1="-203.2" x2="414.02" y2="-203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$163" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="IC8" gate="G$1" pin="ISET"/>
<wire x1="429.26" y1="-289.56" x2="429.26" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="429.26" y1="-287.02" x2="434.34" y2="-287.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$164" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGDP"/>
<wire x1="462.28" y1="-307.34" x2="472.44" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-307.34" x2="472.44" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-215.9" x2="508" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="508" y1="-215.9" x2="508" y2="-241.3" width="0.1524" layer="91"/>
<junction x="508" y="-215.9"/>
<wire x1="508" y1="-241.3" x2="508" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="508" y1="-266.7" x2="508" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="508" y1="-292.1" x2="508" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="508" y1="-317.5" x2="508" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="508" y1="-342.9" x2="508" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="508" y1="-368.3" x2="508" y2="-393.7" width="0.1524" layer="91"/>
<junction x="508" y="-241.3"/>
<junction x="508" y="-266.7"/>
<junction x="508" y="-292.1"/>
<junction x="508" y="-317.5"/>
<junction x="508" y="-342.9"/>
<junction x="508" y="-368.3"/>
<pinref part="LED57" gate="G$1" pin="DP"/>
<wire x1="508" y1="-215.9" x2="515.62" y2="-215.9" width="0.1524" layer="91"/>
<pinref part="LED58" gate="G$1" pin="DP"/>
<wire x1="508" y1="-241.3" x2="515.62" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="LED59" gate="G$1" pin="DP"/>
<wire x1="508" y1="-266.7" x2="515.62" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="LED60" gate="G$1" pin="DP"/>
<wire x1="515.62" y1="-292.1" x2="508" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="LED61" gate="G$1" pin="DP"/>
<wire x1="508" y1="-317.5" x2="515.62" y2="-317.5" width="0.1524" layer="91"/>
<pinref part="LED62" gate="G$1" pin="DP"/>
<wire x1="508" y1="-342.9" x2="515.62" y2="-342.9" width="0.1524" layer="91"/>
<pinref part="LED63" gate="G$1" pin="DP"/>
<wire x1="515.62" y1="-368.3" x2="508" y2="-368.3" width="0.1524" layer="91"/>
<pinref part="LED64" gate="G$1" pin="DP"/>
<wire x1="508" y1="-393.7" x2="515.62" y2="-393.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$165" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG0"/>
<wire x1="462.28" y1="-269.24" x2="474.98" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-269.24" x2="474.98" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-231.14" x2="474.98" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-228.6" x2="515.62" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-231.14" x2="515.62" y2="-231.14" width="0.1524" layer="91"/>
<junction x="474.98" y="-231.14"/>
<pinref part="LED57" gate="G$1" pin="COM@2"/>
<pinref part="LED57" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$166" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG1"/>
<wire x1="462.28" y1="-271.78" x2="477.52" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-271.78" x2="477.52" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-256.54" x2="477.52" y2="-254" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-254" x2="515.62" y2="-254" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-256.54" x2="515.62" y2="-256.54" width="0.1524" layer="91"/>
<junction x="477.52" y="-256.54"/>
<pinref part="LED58" gate="G$1" pin="COM@2"/>
<pinref part="LED58" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$167" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG2"/>
<wire x1="462.28" y1="-274.32" x2="505.46" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="505.46" y1="-274.32" x2="505.46" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="505.46" y1="-279.4" x2="505.46" y2="-281.94" width="0.1524" layer="91"/>
<junction x="505.46" y="-279.4"/>
<pinref part="LED59" gate="G$1" pin="COM@2"/>
<wire x1="515.62" y1="-279.4" x2="505.46" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="LED59" gate="G$1" pin="COM@1"/>
<wire x1="505.46" y1="-281.94" x2="515.62" y2="-281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$168" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG3"/>
<wire x1="462.28" y1="-276.86" x2="502.92" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-276.86" x2="502.92" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-304.8" x2="515.62" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-304.8" x2="502.92" y2="-307.34" width="0.1524" layer="91"/>
<junction x="502.92" y="-304.8"/>
<wire x1="502.92" y1="-307.34" x2="515.62" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="LED60" gate="G$1" pin="COM@2"/>
<pinref part="LED60" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$169" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG4"/>
<wire x1="462.28" y1="-279.4" x2="500.38" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-279.4" x2="500.38" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-330.2" x2="500.38" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-330.2" x2="515.62" y2="-330.2" width="0.1524" layer="91"/>
<junction x="500.38" y="-330.2"/>
<pinref part="LED61" gate="G$1" pin="COM@2"/>
<pinref part="LED61" gate="G$1" pin="COM@1"/>
<wire x1="500.38" y1="-332.74" x2="515.62" y2="-332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$170" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG5"/>
<wire x1="462.28" y1="-281.94" x2="497.84" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-281.94" x2="497.84" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-355.6" x2="497.84" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-358.14" x2="515.62" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-355.6" x2="515.62" y2="-355.6" width="0.1524" layer="91"/>
<junction x="497.84" y="-355.6"/>
<pinref part="LED62" gate="G$1" pin="COM@2"/>
<pinref part="LED62" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$171" class="0">
<segment>
<wire x1="495.3" y1="-381" x2="515.62" y2="-381" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="DIG6"/>
<wire x1="462.28" y1="-284.48" x2="495.3" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-284.48" x2="495.3" y2="-381" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-381" x2="495.3" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-383.54" x2="515.62" y2="-383.54" width="0.1524" layer="91"/>
<junction x="495.3" y="-381"/>
<pinref part="LED63" gate="G$1" pin="COM@2"/>
<pinref part="LED63" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$172" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DIG7"/>
<wire x1="462.28" y1="-287.02" x2="492.76" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-287.02" x2="492.76" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-406.4" x2="492.76" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-408.94" x2="515.62" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="515.62" y1="-406.4" x2="492.76" y2="-406.4" width="0.1524" layer="91"/>
<junction x="492.76" y="-406.4"/>
<pinref part="LED64" gate="G$1" pin="COM@2"/>
<pinref part="LED64" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$173" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGA"/>
<wire x1="462.28" y1="-289.56" x2="490.22" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-289.56" x2="490.22" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-419.1" x2="541.02" y2="-419.1" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-419.1" x2="541.02" y2="-408.94" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-408.94" x2="541.02" y2="-383.54" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-383.54" x2="541.02" y2="-358.14" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-358.14" x2="541.02" y2="-332.74" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-332.74" x2="541.02" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-307.34" x2="541.02" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-281.94" x2="541.02" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-256.54" x2="541.02" y2="-231.14" width="0.1524" layer="91"/>
<junction x="541.02" y="-256.54"/>
<wire x1="535.94" y1="-256.54" x2="541.02" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-281.94" x2="541.02" y2="-281.94" width="0.1524" layer="91"/>
<junction x="541.02" y="-281.94"/>
<wire x1="535.94" y1="-307.34" x2="541.02" y2="-307.34" width="0.1524" layer="91"/>
<junction x="541.02" y="-307.34"/>
<wire x1="535.94" y1="-332.74" x2="541.02" y2="-332.74" width="0.1524" layer="91"/>
<junction x="541.02" y="-332.74"/>
<wire x1="535.94" y1="-358.14" x2="541.02" y2="-358.14" width="0.1524" layer="91"/>
<junction x="541.02" y="-358.14"/>
<wire x1="535.94" y1="-383.54" x2="541.02" y2="-383.54" width="0.1524" layer="91"/>
<junction x="541.02" y="-383.54"/>
<junction x="541.02" y="-408.94"/>
<pinref part="LED57" gate="G$1" pin="A"/>
<wire x1="535.94" y1="-231.14" x2="541.02" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="LED64" gate="G$1" pin="A"/>
<wire x1="535.94" y1="-408.94" x2="541.02" y2="-408.94" width="0.1524" layer="91"/>
<pinref part="LED58" gate="G$1" pin="A"/>
<pinref part="LED59" gate="G$1" pin="A"/>
<pinref part="LED60" gate="G$1" pin="A"/>
<pinref part="LED61" gate="G$1" pin="A"/>
<pinref part="LED62" gate="G$1" pin="A"/>
<pinref part="LED63" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$174" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGB"/>
<wire x1="462.28" y1="-292.1" x2="487.68" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-292.1" x2="487.68" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-421.64" x2="543.56" y2="-421.64" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-421.64" x2="543.56" y2="-406.4" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-406.4" x2="543.56" y2="-381" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-381" x2="543.56" y2="-355.6" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-355.6" x2="543.56" y2="-330.2" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-330.2" x2="543.56" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-304.8" x2="543.56" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-279.4" x2="543.56" y2="-254" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-254" x2="543.56" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-228.6" x2="535.94" y2="-228.6" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-254" x2="543.56" y2="-254" width="0.1524" layer="91"/>
<junction x="543.56" y="-254"/>
<wire x1="535.94" y1="-279.4" x2="543.56" y2="-279.4" width="0.1524" layer="91"/>
<junction x="543.56" y="-279.4"/>
<wire x1="535.94" y1="-304.8" x2="543.56" y2="-304.8" width="0.1524" layer="91"/>
<junction x="543.56" y="-304.8"/>
<wire x1="535.94" y1="-330.2" x2="543.56" y2="-330.2" width="0.1524" layer="91"/>
<junction x="543.56" y="-330.2"/>
<wire x1="535.94" y1="-355.6" x2="543.56" y2="-355.6" width="0.1524" layer="91"/>
<junction x="543.56" y="-355.6"/>
<wire x1="535.94" y1="-381" x2="543.56" y2="-381" width="0.1524" layer="91"/>
<junction x="543.56" y="-381"/>
<wire x1="535.94" y1="-406.4" x2="543.56" y2="-406.4" width="0.1524" layer="91"/>
<junction x="543.56" y="-406.4"/>
<pinref part="LED57" gate="G$1" pin="B"/>
<pinref part="LED64" gate="G$1" pin="B"/>
<pinref part="LED58" gate="G$1" pin="B"/>
<pinref part="LED59" gate="G$1" pin="B"/>
<pinref part="LED60" gate="G$1" pin="B"/>
<pinref part="LED61" gate="G$1" pin="B"/>
<pinref part="LED62" gate="G$1" pin="B"/>
<pinref part="LED63" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$175" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGC"/>
<wire x1="462.28" y1="-294.64" x2="485.14" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-294.64" x2="485.14" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-424.18" x2="546.1" y2="-424.18" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-424.18" x2="546.1" y2="-403.86" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-403.86" x2="546.1" y2="-378.46" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-378.46" x2="546.1" y2="-353.06" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-353.06" x2="546.1" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-327.66" x2="546.1" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-302.26" x2="546.1" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-276.86" x2="546.1" y2="-251.46" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-251.46" x2="546.1" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-226.06" x2="535.94" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-251.46" x2="546.1" y2="-251.46" width="0.1524" layer="91"/>
<junction x="546.1" y="-251.46"/>
<wire x1="535.94" y1="-276.86" x2="546.1" y2="-276.86" width="0.1524" layer="91"/>
<junction x="546.1" y="-276.86"/>
<wire x1="535.94" y1="-302.26" x2="546.1" y2="-302.26" width="0.1524" layer="91"/>
<junction x="546.1" y="-302.26"/>
<wire x1="535.94" y1="-327.66" x2="546.1" y2="-327.66" width="0.1524" layer="91"/>
<junction x="546.1" y="-327.66"/>
<wire x1="535.94" y1="-353.06" x2="546.1" y2="-353.06" width="0.1524" layer="91"/>
<junction x="546.1" y="-353.06"/>
<wire x1="535.94" y1="-378.46" x2="546.1" y2="-378.46" width="0.1524" layer="91"/>
<junction x="546.1" y="-378.46"/>
<wire x1="535.94" y1="-403.86" x2="546.1" y2="-403.86" width="0.1524" layer="91"/>
<junction x="546.1" y="-403.86"/>
<pinref part="LED57" gate="G$1" pin="C"/>
<pinref part="LED64" gate="G$1" pin="C"/>
<pinref part="LED58" gate="G$1" pin="C"/>
<pinref part="LED59" gate="G$1" pin="C"/>
<pinref part="LED60" gate="G$1" pin="C"/>
<pinref part="LED61" gate="G$1" pin="C"/>
<pinref part="LED62" gate="G$1" pin="C"/>
<pinref part="LED63" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$176" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGD"/>
<wire x1="462.28" y1="-297.18" x2="482.6" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-297.18" x2="482.6" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-426.72" x2="548.64" y2="-426.72" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-426.72" x2="548.64" y2="-401.32" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-401.32" x2="548.64" y2="-375.92" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-375.92" x2="548.64" y2="-350.52" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-350.52" x2="548.64" y2="-325.12" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-325.12" x2="548.64" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-299.72" x2="548.64" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-274.32" x2="548.64" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-248.92" x2="548.64" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-223.52" x2="535.94" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-248.92" x2="548.64" y2="-248.92" width="0.1524" layer="91"/>
<junction x="548.64" y="-248.92"/>
<wire x1="535.94" y1="-274.32" x2="548.64" y2="-274.32" width="0.1524" layer="91"/>
<junction x="548.64" y="-274.32"/>
<wire x1="535.94" y1="-299.72" x2="548.64" y2="-299.72" width="0.1524" layer="91"/>
<junction x="548.64" y="-299.72"/>
<wire x1="535.94" y1="-325.12" x2="548.64" y2="-325.12" width="0.1524" layer="91"/>
<junction x="548.64" y="-325.12"/>
<wire x1="535.94" y1="-350.52" x2="548.64" y2="-350.52" width="0.1524" layer="91"/>
<junction x="548.64" y="-350.52"/>
<wire x1="535.94" y1="-375.92" x2="548.64" y2="-375.92" width="0.1524" layer="91"/>
<junction x="548.64" y="-375.92"/>
<wire x1="535.94" y1="-401.32" x2="548.64" y2="-401.32" width="0.1524" layer="91"/>
<junction x="548.64" y="-401.32"/>
<pinref part="LED57" gate="G$1" pin="D"/>
<pinref part="LED64" gate="G$1" pin="D"/>
<pinref part="LED58" gate="G$1" pin="D"/>
<pinref part="LED59" gate="G$1" pin="D"/>
<pinref part="LED60" gate="G$1" pin="D"/>
<pinref part="LED61" gate="G$1" pin="D"/>
<pinref part="LED62" gate="G$1" pin="D"/>
<pinref part="LED63" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$177" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGE"/>
<wire x1="462.28" y1="-299.72" x2="480.06" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-299.72" x2="480.06" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-429.26" x2="551.18" y2="-429.26" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-429.26" x2="551.18" y2="-398.78" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-398.78" x2="551.18" y2="-373.38" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-373.38" x2="551.18" y2="-347.98" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-347.98" x2="551.18" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-322.58" x2="551.18" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-297.18" x2="551.18" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-271.78" x2="551.18" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-246.38" x2="551.18" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-220.98" x2="535.94" y2="-220.98" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-246.38" x2="551.18" y2="-246.38" width="0.1524" layer="91"/>
<junction x="551.18" y="-246.38"/>
<wire x1="535.94" y1="-271.78" x2="551.18" y2="-271.78" width="0.1524" layer="91"/>
<junction x="551.18" y="-271.78"/>
<wire x1="535.94" y1="-297.18" x2="551.18" y2="-297.18" width="0.1524" layer="91"/>
<junction x="551.18" y="-297.18"/>
<wire x1="535.94" y1="-322.58" x2="551.18" y2="-322.58" width="0.1524" layer="91"/>
<junction x="551.18" y="-322.58"/>
<wire x1="535.94" y1="-347.98" x2="551.18" y2="-347.98" width="0.1524" layer="91"/>
<junction x="551.18" y="-347.98"/>
<wire x1="535.94" y1="-373.38" x2="551.18" y2="-373.38" width="0.1524" layer="91"/>
<junction x="551.18" y="-373.38"/>
<wire x1="535.94" y1="-398.78" x2="551.18" y2="-398.78" width="0.1524" layer="91"/>
<junction x="551.18" y="-398.78"/>
<pinref part="LED57" gate="G$1" pin="E"/>
<pinref part="LED64" gate="G$1" pin="E"/>
<pinref part="LED58" gate="G$1" pin="E"/>
<pinref part="LED59" gate="G$1" pin="E"/>
<pinref part="LED60" gate="G$1" pin="E"/>
<pinref part="LED61" gate="G$1" pin="E"/>
<pinref part="LED62" gate="G$1" pin="E"/>
<pinref part="LED63" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$178" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGG"/>
<wire x1="462.28" y1="-304.8" x2="474.98" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-304.8" x2="474.98" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-434.34" x2="556.26" y2="-434.34" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-434.34" x2="556.26" y2="-393.7" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-393.7" x2="556.26" y2="-368.3" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-368.3" x2="556.26" y2="-342.9" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-342.9" x2="556.26" y2="-317.5" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-317.5" x2="556.26" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-292.1" x2="556.26" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-266.7" x2="556.26" y2="-241.3" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-241.3" x2="556.26" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-215.9" x2="535.94" y2="-215.9" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-241.3" x2="556.26" y2="-241.3" width="0.1524" layer="91"/>
<junction x="556.26" y="-241.3"/>
<wire x1="535.94" y1="-266.7" x2="556.26" y2="-266.7" width="0.1524" layer="91"/>
<junction x="556.26" y="-266.7"/>
<wire x1="535.94" y1="-292.1" x2="556.26" y2="-292.1" width="0.1524" layer="91"/>
<junction x="556.26" y="-292.1"/>
<wire x1="535.94" y1="-317.5" x2="556.26" y2="-317.5" width="0.1524" layer="91"/>
<junction x="556.26" y="-317.5"/>
<wire x1="535.94" y1="-342.9" x2="556.26" y2="-342.9" width="0.1524" layer="91"/>
<junction x="556.26" y="-342.9"/>
<wire x1="535.94" y1="-368.3" x2="556.26" y2="-368.3" width="0.1524" layer="91"/>
<junction x="556.26" y="-368.3"/>
<wire x1="535.94" y1="-393.7" x2="556.26" y2="-393.7" width="0.1524" layer="91"/>
<junction x="556.26" y="-393.7"/>
<pinref part="LED57" gate="G$1" pin="G"/>
<pinref part="LED64" gate="G$1" pin="G"/>
<pinref part="LED58" gate="G$1" pin="G"/>
<pinref part="LED59" gate="G$1" pin="G"/>
<pinref part="LED60" gate="G$1" pin="G"/>
<pinref part="LED61" gate="G$1" pin="G"/>
<pinref part="LED62" gate="G$1" pin="G"/>
<pinref part="LED63" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$179" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="SEGF"/>
<wire x1="462.28" y1="-302.26" x2="477.52" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-302.26" x2="477.52" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="477.52" y1="-431.8" x2="553.72" y2="-431.8" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-431.8" x2="553.72" y2="-396.24" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-396.24" x2="553.72" y2="-370.84" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-370.84" x2="553.72" y2="-345.44" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-345.44" x2="553.72" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-320.04" x2="553.72" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-294.64" x2="553.72" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-269.24" x2="553.72" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-243.84" x2="553.72" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-218.44" x2="535.94" y2="-218.44" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-243.84" x2="553.72" y2="-243.84" width="0.1524" layer="91"/>
<junction x="553.72" y="-243.84"/>
<wire x1="535.94" y1="-269.24" x2="553.72" y2="-269.24" width="0.1524" layer="91"/>
<junction x="553.72" y="-269.24"/>
<wire x1="535.94" y1="-294.64" x2="553.72" y2="-294.64" width="0.1524" layer="91"/>
<junction x="553.72" y="-294.64"/>
<wire x1="535.94" y1="-320.04" x2="553.72" y2="-320.04" width="0.1524" layer="91"/>
<junction x="553.72" y="-320.04"/>
<wire x1="535.94" y1="-345.44" x2="553.72" y2="-345.44" width="0.1524" layer="91"/>
<junction x="553.72" y="-345.44"/>
<wire x1="535.94" y1="-370.84" x2="553.72" y2="-370.84" width="0.1524" layer="91"/>
<junction x="553.72" y="-370.84"/>
<wire x1="535.94" y1="-396.24" x2="553.72" y2="-396.24" width="0.1524" layer="91"/>
<junction x="553.72" y="-396.24"/>
<pinref part="LED57" gate="G$1" pin="F"/>
<pinref part="LED64" gate="G$1" pin="F"/>
<pinref part="LED58" gate="G$1" pin="F"/>
<pinref part="LED59" gate="G$1" pin="F"/>
<pinref part="LED60" gate="G$1" pin="F"/>
<pinref part="LED61" gate="G$1" pin="F"/>
<pinref part="LED62" gate="G$1" pin="F"/>
<pinref part="LED63" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$181" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="DOUT"/>
<wire x1="434.34" y1="-281.94" x2="416.56" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="416.56" y1="-281.94" x2="416.56" y2="-203.2" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="DIN"/>
<wire x1="-27.94" y1="-571.5" x2="-48.26" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-563.88" x2="-48.26" y2="-464.82" width="0.1524" layer="91"/>
<wire x1="416.56" y1="-203.2" x2="604.52" y2="-203.2" width="0.1524" layer="91"/>
<wire x1="604.52" y1="-203.2" x2="604.52" y2="-464.82" width="0.1524" layer="91"/>
<wire x1="604.52" y1="-464.82" x2="-48.26" y2="-464.82" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-563.88" x2="-48.26" y2="-571.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$187" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="IC9" gate="G$1" pin="ISET"/>
<wire x1="-33.02" y1="-581.66" x2="-33.02" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-579.12" x2="-27.94" y2="-579.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$188" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGDP"/>
<wire x1="0" y1="-599.44" x2="10.16" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-599.44" x2="10.16" y2="-508" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-508" x2="45.72" y2="-508" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-508" x2="45.72" y2="-533.4" width="0.1524" layer="91"/>
<junction x="45.72" y="-508"/>
<wire x1="45.72" y1="-533.4" x2="45.72" y2="-558.8" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-558.8" x2="45.72" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-584.2" x2="45.72" y2="-609.6" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-609.6" x2="45.72" y2="-635" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-635" x2="45.72" y2="-660.4" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-660.4" x2="45.72" y2="-685.8" width="0.1524" layer="91"/>
<junction x="45.72" y="-533.4"/>
<junction x="45.72" y="-558.8"/>
<junction x="45.72" y="-584.2"/>
<junction x="45.72" y="-609.6"/>
<junction x="45.72" y="-635"/>
<junction x="45.72" y="-660.4"/>
<pinref part="LED65" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-508" x2="53.34" y2="-508" width="0.1524" layer="91"/>
<pinref part="LED66" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-533.4" x2="53.34" y2="-533.4" width="0.1524" layer="91"/>
<pinref part="LED67" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-558.8" x2="53.34" y2="-558.8" width="0.1524" layer="91"/>
<pinref part="LED68" gate="G$1" pin="DP"/>
<wire x1="53.34" y1="-584.2" x2="45.72" y2="-584.2" width="0.1524" layer="91"/>
<pinref part="LED69" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-609.6" x2="53.34" y2="-609.6" width="0.1524" layer="91"/>
<pinref part="LED70" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-635" x2="53.34" y2="-635" width="0.1524" layer="91"/>
<pinref part="LED71" gate="G$1" pin="DP"/>
<wire x1="53.34" y1="-660.4" x2="45.72" y2="-660.4" width="0.1524" layer="91"/>
<pinref part="LED72" gate="G$1" pin="DP"/>
<wire x1="45.72" y1="-685.8" x2="53.34" y2="-685.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$189" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG0"/>
<wire x1="0" y1="-561.34" x2="12.7" y2="-561.34" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-561.34" x2="12.7" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-523.24" x2="12.7" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-520.7" x2="53.34" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-523.24" x2="53.34" y2="-523.24" width="0.1524" layer="91"/>
<junction x="12.7" y="-523.24"/>
<pinref part="LED65" gate="G$1" pin="COM@2"/>
<pinref part="LED65" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$190" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG1"/>
<wire x1="0" y1="-563.88" x2="15.24" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-563.88" x2="15.24" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-548.64" x2="15.24" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-546.1" x2="53.34" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-548.64" x2="53.34" y2="-548.64" width="0.1524" layer="91"/>
<junction x="15.24" y="-548.64"/>
<pinref part="LED66" gate="G$1" pin="COM@2"/>
<pinref part="LED66" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$191" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG2"/>
<wire x1="0" y1="-566.42" x2="43.18" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-566.42" x2="43.18" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-571.5" x2="43.18" y2="-574.04" width="0.1524" layer="91"/>
<junction x="43.18" y="-571.5"/>
<pinref part="LED67" gate="G$1" pin="COM@2"/>
<wire x1="53.34" y1="-571.5" x2="43.18" y2="-571.5" width="0.1524" layer="91"/>
<pinref part="LED67" gate="G$1" pin="COM@1"/>
<wire x1="43.18" y1="-574.04" x2="53.34" y2="-574.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$192" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG3"/>
<wire x1="0" y1="-568.96" x2="40.64" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-568.96" x2="40.64" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-596.9" x2="53.34" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-596.9" x2="40.64" y2="-599.44" width="0.1524" layer="91"/>
<junction x="40.64" y="-596.9"/>
<wire x1="40.64" y1="-599.44" x2="53.34" y2="-599.44" width="0.1524" layer="91"/>
<pinref part="LED68" gate="G$1" pin="COM@2"/>
<pinref part="LED68" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$193" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG4"/>
<wire x1="0" y1="-571.5" x2="38.1" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-571.5" x2="38.1" y2="-622.3" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-622.3" x2="38.1" y2="-624.84" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-622.3" x2="53.34" y2="-622.3" width="0.1524" layer="91"/>
<junction x="38.1" y="-622.3"/>
<pinref part="LED69" gate="G$1" pin="COM@2"/>
<pinref part="LED69" gate="G$1" pin="COM@1"/>
<wire x1="53.34" y1="-624.84" x2="38.1" y2="-624.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$194" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG5"/>
<wire x1="0" y1="-574.04" x2="35.56" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-574.04" x2="35.56" y2="-647.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-647.7" x2="35.56" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-650.24" x2="53.34" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-647.7" x2="53.34" y2="-647.7" width="0.1524" layer="91"/>
<junction x="35.56" y="-647.7"/>
<pinref part="LED70" gate="G$1" pin="COM@2"/>
<pinref part="LED70" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$195" class="0">
<segment>
<wire x1="33.02" y1="-673.1" x2="53.34" y2="-673.1" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="DIG6"/>
<wire x1="0" y1="-576.58" x2="33.02" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-576.58" x2="33.02" y2="-673.1" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-673.1" x2="33.02" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-675.64" x2="53.34" y2="-675.64" width="0.1524" layer="91"/>
<junction x="33.02" y="-673.1"/>
<pinref part="LED71" gate="G$1" pin="COM@2"/>
<pinref part="LED71" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$196" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DIG7"/>
<wire x1="0" y1="-579.12" x2="30.48" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-579.12" x2="30.48" y2="-698.5" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-698.5" x2="30.48" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-701.04" x2="53.34" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-698.5" x2="30.48" y2="-698.5" width="0.1524" layer="91"/>
<junction x="30.48" y="-698.5"/>
<pinref part="LED72" gate="G$1" pin="COM@2"/>
<pinref part="LED72" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$197" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGA"/>
<wire x1="0" y1="-581.66" x2="27.94" y2="-581.66" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-581.66" x2="27.94" y2="-711.2" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-711.2" x2="78.74" y2="-711.2" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-711.2" x2="78.74" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-701.04" x2="78.74" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-675.64" x2="78.74" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-650.24" x2="78.74" y2="-624.84" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-624.84" x2="78.74" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-599.44" x2="78.74" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-574.04" x2="78.74" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-548.64" x2="78.74" y2="-523.24" width="0.1524" layer="91"/>
<junction x="78.74" y="-548.64"/>
<wire x1="73.66" y1="-548.64" x2="78.74" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-574.04" x2="78.74" y2="-574.04" width="0.1524" layer="91"/>
<junction x="78.74" y="-574.04"/>
<wire x1="73.66" y1="-599.44" x2="78.74" y2="-599.44" width="0.1524" layer="91"/>
<junction x="78.74" y="-599.44"/>
<wire x1="73.66" y1="-624.84" x2="78.74" y2="-624.84" width="0.1524" layer="91"/>
<junction x="78.74" y="-624.84"/>
<wire x1="73.66" y1="-650.24" x2="78.74" y2="-650.24" width="0.1524" layer="91"/>
<junction x="78.74" y="-650.24"/>
<wire x1="73.66" y1="-675.64" x2="78.74" y2="-675.64" width="0.1524" layer="91"/>
<junction x="78.74" y="-675.64"/>
<junction x="78.74" y="-701.04"/>
<pinref part="LED65" gate="G$1" pin="A"/>
<wire x1="73.66" y1="-523.24" x2="78.74" y2="-523.24" width="0.1524" layer="91"/>
<pinref part="LED72" gate="G$1" pin="A"/>
<wire x1="73.66" y1="-701.04" x2="78.74" y2="-701.04" width="0.1524" layer="91"/>
<pinref part="LED66" gate="G$1" pin="A"/>
<pinref part="LED67" gate="G$1" pin="A"/>
<pinref part="LED68" gate="G$1" pin="A"/>
<pinref part="LED69" gate="G$1" pin="A"/>
<pinref part="LED70" gate="G$1" pin="A"/>
<pinref part="LED71" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$198" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGB"/>
<wire x1="0" y1="-584.2" x2="25.4" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-584.2" x2="25.4" y2="-713.74" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-713.74" x2="81.28" y2="-713.74" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-713.74" x2="81.28" y2="-698.5" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-698.5" x2="81.28" y2="-673.1" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-673.1" x2="81.28" y2="-647.7" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-647.7" x2="81.28" y2="-622.3" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-622.3" x2="81.28" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-596.9" x2="81.28" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-571.5" x2="81.28" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-546.1" x2="81.28" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-520.7" x2="73.66" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-546.1" x2="81.28" y2="-546.1" width="0.1524" layer="91"/>
<junction x="81.28" y="-546.1"/>
<wire x1="73.66" y1="-571.5" x2="81.28" y2="-571.5" width="0.1524" layer="91"/>
<junction x="81.28" y="-571.5"/>
<wire x1="73.66" y1="-596.9" x2="81.28" y2="-596.9" width="0.1524" layer="91"/>
<junction x="81.28" y="-596.9"/>
<wire x1="73.66" y1="-622.3" x2="81.28" y2="-622.3" width="0.1524" layer="91"/>
<junction x="81.28" y="-622.3"/>
<wire x1="73.66" y1="-647.7" x2="81.28" y2="-647.7" width="0.1524" layer="91"/>
<junction x="81.28" y="-647.7"/>
<wire x1="73.66" y1="-673.1" x2="81.28" y2="-673.1" width="0.1524" layer="91"/>
<junction x="81.28" y="-673.1"/>
<wire x1="73.66" y1="-698.5" x2="81.28" y2="-698.5" width="0.1524" layer="91"/>
<junction x="81.28" y="-698.5"/>
<pinref part="LED65" gate="G$1" pin="B"/>
<pinref part="LED72" gate="G$1" pin="B"/>
<pinref part="LED66" gate="G$1" pin="B"/>
<pinref part="LED67" gate="G$1" pin="B"/>
<pinref part="LED68" gate="G$1" pin="B"/>
<pinref part="LED69" gate="G$1" pin="B"/>
<pinref part="LED70" gate="G$1" pin="B"/>
<pinref part="LED71" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$199" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGC"/>
<wire x1="0" y1="-586.74" x2="22.86" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-586.74" x2="22.86" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-716.28" x2="83.82" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-716.28" x2="83.82" y2="-695.96" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-695.96" x2="83.82" y2="-670.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-670.56" x2="83.82" y2="-645.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-645.16" x2="83.82" y2="-619.76" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-619.76" x2="83.82" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-594.36" x2="83.82" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-568.96" x2="83.82" y2="-543.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-543.56" x2="83.82" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-518.16" x2="73.66" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-543.56" x2="83.82" y2="-543.56" width="0.1524" layer="91"/>
<junction x="83.82" y="-543.56"/>
<wire x1="73.66" y1="-568.96" x2="83.82" y2="-568.96" width="0.1524" layer="91"/>
<junction x="83.82" y="-568.96"/>
<wire x1="73.66" y1="-594.36" x2="83.82" y2="-594.36" width="0.1524" layer="91"/>
<junction x="83.82" y="-594.36"/>
<wire x1="73.66" y1="-619.76" x2="83.82" y2="-619.76" width="0.1524" layer="91"/>
<junction x="83.82" y="-619.76"/>
<wire x1="73.66" y1="-645.16" x2="83.82" y2="-645.16" width="0.1524" layer="91"/>
<junction x="83.82" y="-645.16"/>
<wire x1="73.66" y1="-670.56" x2="83.82" y2="-670.56" width="0.1524" layer="91"/>
<junction x="83.82" y="-670.56"/>
<wire x1="73.66" y1="-695.96" x2="83.82" y2="-695.96" width="0.1524" layer="91"/>
<junction x="83.82" y="-695.96"/>
<pinref part="LED65" gate="G$1" pin="C"/>
<pinref part="LED72" gate="G$1" pin="C"/>
<pinref part="LED66" gate="G$1" pin="C"/>
<pinref part="LED67" gate="G$1" pin="C"/>
<pinref part="LED68" gate="G$1" pin="C"/>
<pinref part="LED69" gate="G$1" pin="C"/>
<pinref part="LED70" gate="G$1" pin="C"/>
<pinref part="LED71" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$200" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGD"/>
<wire x1="0" y1="-589.28" x2="20.32" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-589.28" x2="20.32" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-718.82" x2="86.36" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-718.82" x2="86.36" y2="-693.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-693.42" x2="86.36" y2="-668.02" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-668.02" x2="86.36" y2="-642.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-642.62" x2="86.36" y2="-617.22" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-617.22" x2="86.36" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-591.82" x2="86.36" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-566.42" x2="86.36" y2="-541.02" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-541.02" x2="86.36" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-515.62" x2="73.66" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-541.02" x2="86.36" y2="-541.02" width="0.1524" layer="91"/>
<junction x="86.36" y="-541.02"/>
<wire x1="73.66" y1="-566.42" x2="86.36" y2="-566.42" width="0.1524" layer="91"/>
<junction x="86.36" y="-566.42"/>
<wire x1="73.66" y1="-591.82" x2="86.36" y2="-591.82" width="0.1524" layer="91"/>
<junction x="86.36" y="-591.82"/>
<wire x1="73.66" y1="-617.22" x2="86.36" y2="-617.22" width="0.1524" layer="91"/>
<junction x="86.36" y="-617.22"/>
<wire x1="73.66" y1="-642.62" x2="86.36" y2="-642.62" width="0.1524" layer="91"/>
<junction x="86.36" y="-642.62"/>
<wire x1="73.66" y1="-668.02" x2="86.36" y2="-668.02" width="0.1524" layer="91"/>
<junction x="86.36" y="-668.02"/>
<wire x1="73.66" y1="-693.42" x2="86.36" y2="-693.42" width="0.1524" layer="91"/>
<junction x="86.36" y="-693.42"/>
<pinref part="LED65" gate="G$1" pin="D"/>
<pinref part="LED72" gate="G$1" pin="D"/>
<pinref part="LED66" gate="G$1" pin="D"/>
<pinref part="LED67" gate="G$1" pin="D"/>
<pinref part="LED68" gate="G$1" pin="D"/>
<pinref part="LED69" gate="G$1" pin="D"/>
<pinref part="LED70" gate="G$1" pin="D"/>
<pinref part="LED71" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$201" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGE"/>
<wire x1="0" y1="-591.82" x2="17.78" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-591.82" x2="17.78" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-721.36" x2="88.9" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-721.36" x2="88.9" y2="-690.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-690.88" x2="88.9" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-665.48" x2="88.9" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-640.08" x2="88.9" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-614.68" x2="88.9" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-589.28" x2="88.9" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-563.88" x2="88.9" y2="-538.48" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-538.48" x2="88.9" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-513.08" x2="73.66" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-538.48" x2="88.9" y2="-538.48" width="0.1524" layer="91"/>
<junction x="88.9" y="-538.48"/>
<wire x1="73.66" y1="-563.88" x2="88.9" y2="-563.88" width="0.1524" layer="91"/>
<junction x="88.9" y="-563.88"/>
<wire x1="73.66" y1="-589.28" x2="88.9" y2="-589.28" width="0.1524" layer="91"/>
<junction x="88.9" y="-589.28"/>
<wire x1="73.66" y1="-614.68" x2="88.9" y2="-614.68" width="0.1524" layer="91"/>
<junction x="88.9" y="-614.68"/>
<wire x1="73.66" y1="-640.08" x2="88.9" y2="-640.08" width="0.1524" layer="91"/>
<junction x="88.9" y="-640.08"/>
<wire x1="73.66" y1="-665.48" x2="88.9" y2="-665.48" width="0.1524" layer="91"/>
<junction x="88.9" y="-665.48"/>
<wire x1="73.66" y1="-690.88" x2="88.9" y2="-690.88" width="0.1524" layer="91"/>
<junction x="88.9" y="-690.88"/>
<pinref part="LED65" gate="G$1" pin="E"/>
<pinref part="LED72" gate="G$1" pin="E"/>
<pinref part="LED66" gate="G$1" pin="E"/>
<pinref part="LED67" gate="G$1" pin="E"/>
<pinref part="LED68" gate="G$1" pin="E"/>
<pinref part="LED69" gate="G$1" pin="E"/>
<pinref part="LED70" gate="G$1" pin="E"/>
<pinref part="LED71" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$202" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGG"/>
<wire x1="0" y1="-596.9" x2="12.7" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-596.9" x2="12.7" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-726.44" x2="93.98" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-726.44" x2="93.98" y2="-685.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-685.8" x2="93.98" y2="-660.4" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-660.4" x2="93.98" y2="-635" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-635" x2="93.98" y2="-609.6" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-609.6" x2="93.98" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-584.2" x2="93.98" y2="-558.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-558.8" x2="93.98" y2="-533.4" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-533.4" x2="93.98" y2="-508" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-508" x2="73.66" y2="-508" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-533.4" x2="93.98" y2="-533.4" width="0.1524" layer="91"/>
<junction x="93.98" y="-533.4"/>
<wire x1="73.66" y1="-558.8" x2="93.98" y2="-558.8" width="0.1524" layer="91"/>
<junction x="93.98" y="-558.8"/>
<wire x1="73.66" y1="-584.2" x2="93.98" y2="-584.2" width="0.1524" layer="91"/>
<junction x="93.98" y="-584.2"/>
<wire x1="73.66" y1="-609.6" x2="93.98" y2="-609.6" width="0.1524" layer="91"/>
<junction x="93.98" y="-609.6"/>
<wire x1="73.66" y1="-635" x2="93.98" y2="-635" width="0.1524" layer="91"/>
<junction x="93.98" y="-635"/>
<wire x1="73.66" y1="-660.4" x2="93.98" y2="-660.4" width="0.1524" layer="91"/>
<junction x="93.98" y="-660.4"/>
<wire x1="73.66" y1="-685.8" x2="93.98" y2="-685.8" width="0.1524" layer="91"/>
<junction x="93.98" y="-685.8"/>
<pinref part="LED65" gate="G$1" pin="G"/>
<pinref part="LED72" gate="G$1" pin="G"/>
<pinref part="LED66" gate="G$1" pin="G"/>
<pinref part="LED67" gate="G$1" pin="G"/>
<pinref part="LED68" gate="G$1" pin="G"/>
<pinref part="LED69" gate="G$1" pin="G"/>
<pinref part="LED70" gate="G$1" pin="G"/>
<pinref part="LED71" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$203" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="SEGF"/>
<wire x1="0" y1="-594.36" x2="15.24" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-594.36" x2="15.24" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-723.9" x2="91.44" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-723.9" x2="91.44" y2="-688.34" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-688.34" x2="91.44" y2="-662.94" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-662.94" x2="91.44" y2="-637.54" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-637.54" x2="91.44" y2="-612.14" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-612.14" x2="91.44" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-586.74" x2="91.44" y2="-561.34" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-561.34" x2="91.44" y2="-535.94" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-535.94" x2="91.44" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-510.54" x2="73.66" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-535.94" x2="91.44" y2="-535.94" width="0.1524" layer="91"/>
<junction x="91.44" y="-535.94"/>
<wire x1="73.66" y1="-561.34" x2="91.44" y2="-561.34" width="0.1524" layer="91"/>
<junction x="91.44" y="-561.34"/>
<wire x1="73.66" y1="-586.74" x2="91.44" y2="-586.74" width="0.1524" layer="91"/>
<junction x="91.44" y="-586.74"/>
<wire x1="73.66" y1="-612.14" x2="91.44" y2="-612.14" width="0.1524" layer="91"/>
<junction x="91.44" y="-612.14"/>
<wire x1="73.66" y1="-637.54" x2="91.44" y2="-637.54" width="0.1524" layer="91"/>
<junction x="91.44" y="-637.54"/>
<wire x1="73.66" y1="-662.94" x2="91.44" y2="-662.94" width="0.1524" layer="91"/>
<junction x="91.44" y="-662.94"/>
<wire x1="73.66" y1="-688.34" x2="91.44" y2="-688.34" width="0.1524" layer="91"/>
<junction x="91.44" y="-688.34"/>
<pinref part="LED65" gate="G$1" pin="F"/>
<pinref part="LED72" gate="G$1" pin="F"/>
<pinref part="LED66" gate="G$1" pin="F"/>
<pinref part="LED67" gate="G$1" pin="F"/>
<pinref part="LED68" gate="G$1" pin="F"/>
<pinref part="LED69" gate="G$1" pin="F"/>
<pinref part="LED70" gate="G$1" pin="F"/>
<pinref part="LED71" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$205" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="DOUT"/>
<wire x1="-27.94" y1="-574.04" x2="-45.72" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-574.04" x2="-45.72" y2="-495.3" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="DIN"/>
<wire x1="129.54" y1="-574.04" x2="109.22" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-574.04" x2="109.22" y2="-495.3" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-495.3" x2="109.22" y2="-495.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$211" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="IC10" gate="G$1" pin="ISET"/>
<wire x1="124.46" y1="-584.2" x2="124.46" y2="-581.66" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-581.66" x2="129.54" y2="-581.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$212" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGDP"/>
<wire x1="157.48" y1="-601.98" x2="167.64" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-601.98" x2="167.64" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-510.54" x2="203.2" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-510.54" x2="203.2" y2="-535.94" width="0.1524" layer="91"/>
<junction x="203.2" y="-510.54"/>
<wire x1="203.2" y1="-535.94" x2="203.2" y2="-561.34" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-561.34" x2="203.2" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-586.74" x2="203.2" y2="-612.14" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-612.14" x2="203.2" y2="-637.54" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-637.54" x2="203.2" y2="-662.94" width="0.1524" layer="91"/>
<wire x1="203.2" y1="-662.94" x2="203.2" y2="-688.34" width="0.1524" layer="91"/>
<junction x="203.2" y="-535.94"/>
<junction x="203.2" y="-561.34"/>
<junction x="203.2" y="-586.74"/>
<junction x="203.2" y="-612.14"/>
<junction x="203.2" y="-637.54"/>
<junction x="203.2" y="-662.94"/>
<pinref part="LED73" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-510.54" x2="210.82" y2="-510.54" width="0.1524" layer="91"/>
<pinref part="LED74" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-535.94" x2="210.82" y2="-535.94" width="0.1524" layer="91"/>
<pinref part="LED75" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-561.34" x2="210.82" y2="-561.34" width="0.1524" layer="91"/>
<pinref part="LED76" gate="G$1" pin="DP"/>
<wire x1="210.82" y1="-586.74" x2="203.2" y2="-586.74" width="0.1524" layer="91"/>
<pinref part="LED77" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-612.14" x2="210.82" y2="-612.14" width="0.1524" layer="91"/>
<pinref part="LED78" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-637.54" x2="210.82" y2="-637.54" width="0.1524" layer="91"/>
<pinref part="LED79" gate="G$1" pin="DP"/>
<wire x1="210.82" y1="-662.94" x2="203.2" y2="-662.94" width="0.1524" layer="91"/>
<pinref part="LED80" gate="G$1" pin="DP"/>
<wire x1="203.2" y1="-688.34" x2="210.82" y2="-688.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$213" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG0"/>
<wire x1="157.48" y1="-563.88" x2="170.18" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-563.88" x2="170.18" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-525.78" x2="170.18" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-523.24" x2="210.82" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-525.78" x2="210.82" y2="-525.78" width="0.1524" layer="91"/>
<junction x="170.18" y="-525.78"/>
<pinref part="LED73" gate="G$1" pin="COM@2"/>
<pinref part="LED73" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$214" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG1"/>
<wire x1="157.48" y1="-566.42" x2="172.72" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-566.42" x2="172.72" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-551.18" x2="172.72" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-548.64" x2="210.82" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-551.18" x2="210.82" y2="-551.18" width="0.1524" layer="91"/>
<junction x="172.72" y="-551.18"/>
<pinref part="LED74" gate="G$1" pin="COM@2"/>
<pinref part="LED74" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$215" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG2"/>
<wire x1="157.48" y1="-568.96" x2="200.66" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-568.96" x2="200.66" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-574.04" x2="200.66" y2="-576.58" width="0.1524" layer="91"/>
<junction x="200.66" y="-574.04"/>
<pinref part="LED75" gate="G$1" pin="COM@2"/>
<wire x1="210.82" y1="-574.04" x2="200.66" y2="-574.04" width="0.1524" layer="91"/>
<pinref part="LED75" gate="G$1" pin="COM@1"/>
<wire x1="200.66" y1="-576.58" x2="210.82" y2="-576.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$216" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG3"/>
<wire x1="157.48" y1="-571.5" x2="198.12" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-571.5" x2="198.12" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-599.44" x2="210.82" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-599.44" x2="198.12" y2="-601.98" width="0.1524" layer="91"/>
<junction x="198.12" y="-599.44"/>
<wire x1="198.12" y1="-601.98" x2="210.82" y2="-601.98" width="0.1524" layer="91"/>
<pinref part="LED76" gate="G$1" pin="COM@2"/>
<pinref part="LED76" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$218" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG5"/>
<wire x1="157.48" y1="-576.58" x2="193.04" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-576.58" x2="193.04" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-650.24" x2="193.04" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-652.78" x2="210.82" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-650.24" x2="210.82" y2="-650.24" width="0.1524" layer="91"/>
<junction x="193.04" y="-650.24"/>
<pinref part="LED78" gate="G$1" pin="COM@2"/>
<pinref part="LED78" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$219" class="0">
<segment>
<wire x1="190.5" y1="-675.64" x2="210.82" y2="-675.64" width="0.1524" layer="91"/>
<pinref part="IC10" gate="G$1" pin="DIG6"/>
<wire x1="157.48" y1="-579.12" x2="190.5" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-579.12" x2="190.5" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-675.64" x2="190.5" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="190.5" y1="-678.18" x2="210.82" y2="-678.18" width="0.1524" layer="91"/>
<junction x="190.5" y="-675.64"/>
<pinref part="LED79" gate="G$1" pin="COM@2"/>
<pinref part="LED79" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$220" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG7"/>
<wire x1="157.48" y1="-581.66" x2="187.96" y2="-581.66" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-581.66" x2="187.96" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-701.04" x2="187.96" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="187.96" y1="-703.58" x2="210.82" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-701.04" x2="187.96" y2="-701.04" width="0.1524" layer="91"/>
<junction x="187.96" y="-701.04"/>
<pinref part="LED80" gate="G$1" pin="COM@2"/>
<pinref part="LED80" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$221" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGA"/>
<wire x1="157.48" y1="-584.2" x2="185.42" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-584.2" x2="185.42" y2="-713.74" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-713.74" x2="236.22" y2="-713.74" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-713.74" x2="236.22" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-703.58" x2="236.22" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-678.18" x2="236.22" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-652.78" x2="236.22" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-627.38" x2="236.22" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-601.98" x2="236.22" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-576.58" x2="236.22" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-551.18" x2="236.22" y2="-525.78" width="0.1524" layer="91"/>
<junction x="236.22" y="-551.18"/>
<wire x1="231.14" y1="-551.18" x2="236.22" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-576.58" x2="236.22" y2="-576.58" width="0.1524" layer="91"/>
<junction x="236.22" y="-576.58"/>
<wire x1="231.14" y1="-601.98" x2="236.22" y2="-601.98" width="0.1524" layer="91"/>
<junction x="236.22" y="-601.98"/>
<wire x1="231.14" y1="-627.38" x2="236.22" y2="-627.38" width="0.1524" layer="91"/>
<junction x="236.22" y="-627.38"/>
<wire x1="231.14" y1="-652.78" x2="236.22" y2="-652.78" width="0.1524" layer="91"/>
<junction x="236.22" y="-652.78"/>
<wire x1="231.14" y1="-678.18" x2="236.22" y2="-678.18" width="0.1524" layer="91"/>
<junction x="236.22" y="-678.18"/>
<junction x="236.22" y="-703.58"/>
<pinref part="LED73" gate="G$1" pin="A"/>
<wire x1="231.14" y1="-525.78" x2="236.22" y2="-525.78" width="0.1524" layer="91"/>
<pinref part="LED80" gate="G$1" pin="A"/>
<wire x1="231.14" y1="-703.58" x2="236.22" y2="-703.58" width="0.1524" layer="91"/>
<pinref part="LED74" gate="G$1" pin="A"/>
<pinref part="LED75" gate="G$1" pin="A"/>
<pinref part="LED76" gate="G$1" pin="A"/>
<pinref part="LED77" gate="G$1" pin="A"/>
<pinref part="LED78" gate="G$1" pin="A"/>
<pinref part="LED79" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$222" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGB"/>
<wire x1="157.48" y1="-586.74" x2="182.88" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-586.74" x2="182.88" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="182.88" y1="-716.28" x2="238.76" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-716.28" x2="238.76" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-701.04" x2="238.76" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-675.64" x2="238.76" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-650.24" x2="238.76" y2="-624.84" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-624.84" x2="238.76" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-599.44" x2="238.76" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-574.04" x2="238.76" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-548.64" x2="238.76" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-523.24" x2="231.14" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-548.64" x2="238.76" y2="-548.64" width="0.1524" layer="91"/>
<junction x="238.76" y="-548.64"/>
<wire x1="231.14" y1="-574.04" x2="238.76" y2="-574.04" width="0.1524" layer="91"/>
<junction x="238.76" y="-574.04"/>
<wire x1="231.14" y1="-599.44" x2="238.76" y2="-599.44" width="0.1524" layer="91"/>
<junction x="238.76" y="-599.44"/>
<wire x1="231.14" y1="-624.84" x2="238.76" y2="-624.84" width="0.1524" layer="91"/>
<junction x="238.76" y="-624.84"/>
<wire x1="231.14" y1="-650.24" x2="238.76" y2="-650.24" width="0.1524" layer="91"/>
<junction x="238.76" y="-650.24"/>
<wire x1="231.14" y1="-675.64" x2="238.76" y2="-675.64" width="0.1524" layer="91"/>
<junction x="238.76" y="-675.64"/>
<wire x1="231.14" y1="-701.04" x2="238.76" y2="-701.04" width="0.1524" layer="91"/>
<junction x="238.76" y="-701.04"/>
<pinref part="LED73" gate="G$1" pin="B"/>
<pinref part="LED80" gate="G$1" pin="B"/>
<pinref part="LED74" gate="G$1" pin="B"/>
<pinref part="LED75" gate="G$1" pin="B"/>
<pinref part="LED76" gate="G$1" pin="B"/>
<pinref part="LED77" gate="G$1" pin="B"/>
<pinref part="LED78" gate="G$1" pin="B"/>
<pinref part="LED79" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$223" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGC"/>
<wire x1="157.48" y1="-589.28" x2="180.34" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-589.28" x2="180.34" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-718.82" x2="241.3" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-718.82" x2="241.3" y2="-698.5" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-698.5" x2="241.3" y2="-673.1" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-673.1" x2="241.3" y2="-647.7" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-647.7" x2="241.3" y2="-622.3" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-622.3" x2="241.3" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-596.9" x2="241.3" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-571.5" x2="241.3" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-546.1" x2="241.3" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-520.7" x2="231.14" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-546.1" x2="241.3" y2="-546.1" width="0.1524" layer="91"/>
<junction x="241.3" y="-546.1"/>
<wire x1="231.14" y1="-571.5" x2="241.3" y2="-571.5" width="0.1524" layer="91"/>
<junction x="241.3" y="-571.5"/>
<wire x1="231.14" y1="-596.9" x2="241.3" y2="-596.9" width="0.1524" layer="91"/>
<junction x="241.3" y="-596.9"/>
<wire x1="231.14" y1="-622.3" x2="241.3" y2="-622.3" width="0.1524" layer="91"/>
<junction x="241.3" y="-622.3"/>
<wire x1="231.14" y1="-647.7" x2="241.3" y2="-647.7" width="0.1524" layer="91"/>
<junction x="241.3" y="-647.7"/>
<wire x1="231.14" y1="-673.1" x2="241.3" y2="-673.1" width="0.1524" layer="91"/>
<junction x="241.3" y="-673.1"/>
<wire x1="231.14" y1="-698.5" x2="241.3" y2="-698.5" width="0.1524" layer="91"/>
<junction x="241.3" y="-698.5"/>
<pinref part="LED73" gate="G$1" pin="C"/>
<pinref part="LED80" gate="G$1" pin="C"/>
<pinref part="LED74" gate="G$1" pin="C"/>
<pinref part="LED75" gate="G$1" pin="C"/>
<pinref part="LED76" gate="G$1" pin="C"/>
<pinref part="LED77" gate="G$1" pin="C"/>
<pinref part="LED78" gate="G$1" pin="C"/>
<pinref part="LED79" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$224" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGD"/>
<wire x1="157.48" y1="-591.82" x2="177.8" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-591.82" x2="177.8" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-721.36" x2="243.84" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-721.36" x2="243.84" y2="-695.96" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-695.96" x2="243.84" y2="-670.56" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-670.56" x2="243.84" y2="-645.16" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-645.16" x2="243.84" y2="-619.76" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-619.76" x2="243.84" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-594.36" x2="243.84" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-568.96" x2="243.84" y2="-543.56" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-543.56" x2="243.84" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-518.16" x2="231.14" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-543.56" x2="243.84" y2="-543.56" width="0.1524" layer="91"/>
<junction x="243.84" y="-543.56"/>
<wire x1="231.14" y1="-568.96" x2="243.84" y2="-568.96" width="0.1524" layer="91"/>
<junction x="243.84" y="-568.96"/>
<wire x1="231.14" y1="-594.36" x2="243.84" y2="-594.36" width="0.1524" layer="91"/>
<junction x="243.84" y="-594.36"/>
<wire x1="231.14" y1="-619.76" x2="243.84" y2="-619.76" width="0.1524" layer="91"/>
<junction x="243.84" y="-619.76"/>
<wire x1="231.14" y1="-645.16" x2="243.84" y2="-645.16" width="0.1524" layer="91"/>
<junction x="243.84" y="-645.16"/>
<wire x1="231.14" y1="-670.56" x2="243.84" y2="-670.56" width="0.1524" layer="91"/>
<junction x="243.84" y="-670.56"/>
<wire x1="231.14" y1="-695.96" x2="243.84" y2="-695.96" width="0.1524" layer="91"/>
<junction x="243.84" y="-695.96"/>
<pinref part="LED73" gate="G$1" pin="D"/>
<pinref part="LED80" gate="G$1" pin="D"/>
<pinref part="LED74" gate="G$1" pin="D"/>
<pinref part="LED75" gate="G$1" pin="D"/>
<pinref part="LED76" gate="G$1" pin="D"/>
<pinref part="LED77" gate="G$1" pin="D"/>
<pinref part="LED78" gate="G$1" pin="D"/>
<pinref part="LED79" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$225" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGE"/>
<wire x1="157.48" y1="-594.36" x2="175.26" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-594.36" x2="175.26" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-723.9" x2="246.38" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-723.9" x2="246.38" y2="-693.42" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-693.42" x2="246.38" y2="-668.02" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-668.02" x2="246.38" y2="-642.62" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-642.62" x2="246.38" y2="-617.22" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-617.22" x2="246.38" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-591.82" x2="246.38" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-566.42" x2="246.38" y2="-541.02" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-541.02" x2="246.38" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-515.62" x2="231.14" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-541.02" x2="246.38" y2="-541.02" width="0.1524" layer="91"/>
<junction x="246.38" y="-541.02"/>
<wire x1="231.14" y1="-566.42" x2="246.38" y2="-566.42" width="0.1524" layer="91"/>
<junction x="246.38" y="-566.42"/>
<wire x1="231.14" y1="-591.82" x2="246.38" y2="-591.82" width="0.1524" layer="91"/>
<junction x="246.38" y="-591.82"/>
<wire x1="231.14" y1="-617.22" x2="246.38" y2="-617.22" width="0.1524" layer="91"/>
<junction x="246.38" y="-617.22"/>
<wire x1="231.14" y1="-642.62" x2="246.38" y2="-642.62" width="0.1524" layer="91"/>
<junction x="246.38" y="-642.62"/>
<wire x1="231.14" y1="-668.02" x2="246.38" y2="-668.02" width="0.1524" layer="91"/>
<junction x="246.38" y="-668.02"/>
<wire x1="231.14" y1="-693.42" x2="246.38" y2="-693.42" width="0.1524" layer="91"/>
<junction x="246.38" y="-693.42"/>
<pinref part="LED73" gate="G$1" pin="E"/>
<pinref part="LED80" gate="G$1" pin="E"/>
<pinref part="LED74" gate="G$1" pin="E"/>
<pinref part="LED75" gate="G$1" pin="E"/>
<pinref part="LED76" gate="G$1" pin="E"/>
<pinref part="LED77" gate="G$1" pin="E"/>
<pinref part="LED78" gate="G$1" pin="E"/>
<pinref part="LED79" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$226" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGG"/>
<wire x1="157.48" y1="-599.44" x2="170.18" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-599.44" x2="170.18" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-728.98" x2="251.46" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-728.98" x2="251.46" y2="-688.34" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-688.34" x2="251.46" y2="-662.94" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-662.94" x2="251.46" y2="-637.54" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-637.54" x2="251.46" y2="-612.14" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-612.14" x2="251.46" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-586.74" x2="251.46" y2="-561.34" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-561.34" x2="251.46" y2="-535.94" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-535.94" x2="251.46" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-510.54" x2="231.14" y2="-510.54" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-535.94" x2="251.46" y2="-535.94" width="0.1524" layer="91"/>
<junction x="251.46" y="-535.94"/>
<wire x1="231.14" y1="-561.34" x2="251.46" y2="-561.34" width="0.1524" layer="91"/>
<junction x="251.46" y="-561.34"/>
<wire x1="231.14" y1="-586.74" x2="251.46" y2="-586.74" width="0.1524" layer="91"/>
<junction x="251.46" y="-586.74"/>
<wire x1="231.14" y1="-612.14" x2="251.46" y2="-612.14" width="0.1524" layer="91"/>
<junction x="251.46" y="-612.14"/>
<wire x1="231.14" y1="-637.54" x2="251.46" y2="-637.54" width="0.1524" layer="91"/>
<junction x="251.46" y="-637.54"/>
<wire x1="231.14" y1="-662.94" x2="251.46" y2="-662.94" width="0.1524" layer="91"/>
<junction x="251.46" y="-662.94"/>
<wire x1="231.14" y1="-688.34" x2="251.46" y2="-688.34" width="0.1524" layer="91"/>
<junction x="251.46" y="-688.34"/>
<pinref part="LED73" gate="G$1" pin="G"/>
<pinref part="LED80" gate="G$1" pin="G"/>
<pinref part="LED74" gate="G$1" pin="G"/>
<pinref part="LED75" gate="G$1" pin="G"/>
<pinref part="LED76" gate="G$1" pin="G"/>
<pinref part="LED77" gate="G$1" pin="G"/>
<pinref part="LED78" gate="G$1" pin="G"/>
<pinref part="LED79" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$227" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="SEGF"/>
<wire x1="157.48" y1="-596.9" x2="172.72" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-596.9" x2="172.72" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-726.44" x2="248.92" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-726.44" x2="248.92" y2="-690.88" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-690.88" x2="248.92" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-665.48" x2="248.92" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-640.08" x2="248.92" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-614.68" x2="248.92" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-589.28" x2="248.92" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-563.88" x2="248.92" y2="-538.48" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-538.48" x2="248.92" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-513.08" x2="231.14" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-538.48" x2="248.92" y2="-538.48" width="0.1524" layer="91"/>
<junction x="248.92" y="-538.48"/>
<wire x1="231.14" y1="-563.88" x2="248.92" y2="-563.88" width="0.1524" layer="91"/>
<junction x="248.92" y="-563.88"/>
<wire x1="231.14" y1="-589.28" x2="248.92" y2="-589.28" width="0.1524" layer="91"/>
<junction x="248.92" y="-589.28"/>
<wire x1="231.14" y1="-614.68" x2="248.92" y2="-614.68" width="0.1524" layer="91"/>
<junction x="248.92" y="-614.68"/>
<wire x1="231.14" y1="-640.08" x2="248.92" y2="-640.08" width="0.1524" layer="91"/>
<junction x="248.92" y="-640.08"/>
<wire x1="231.14" y1="-665.48" x2="248.92" y2="-665.48" width="0.1524" layer="91"/>
<junction x="248.92" y="-665.48"/>
<wire x1="231.14" y1="-690.88" x2="248.92" y2="-690.88" width="0.1524" layer="91"/>
<junction x="248.92" y="-690.88"/>
<pinref part="LED73" gate="G$1" pin="F"/>
<pinref part="LED80" gate="G$1" pin="F"/>
<pinref part="LED74" gate="G$1" pin="F"/>
<pinref part="LED75" gate="G$1" pin="F"/>
<pinref part="LED76" gate="G$1" pin="F"/>
<pinref part="LED77" gate="G$1" pin="F"/>
<pinref part="LED78" gate="G$1" pin="F"/>
<pinref part="LED79" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$229" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DOUT"/>
<wire x1="129.54" y1="-576.58" x2="111.76" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-576.58" x2="111.76" y2="-495.3" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="DIN"/>
<wire x1="287.02" y1="-576.58" x2="266.7" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-576.58" x2="266.7" y2="-495.3" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-495.3" x2="266.7" y2="-495.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$235" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="IC11" gate="G$1" pin="ISET"/>
<wire x1="281.94" y1="-586.74" x2="281.94" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-584.2" x2="287.02" y2="-584.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$236" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGDP"/>
<wire x1="314.96" y1="-604.52" x2="325.12" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-604.52" x2="325.12" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="325.12" y1="-513.08" x2="360.68" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-513.08" x2="360.68" y2="-538.48" width="0.1524" layer="91"/>
<junction x="360.68" y="-513.08"/>
<wire x1="360.68" y1="-538.48" x2="360.68" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-563.88" x2="360.68" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-589.28" x2="360.68" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-614.68" x2="360.68" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-640.08" x2="360.68" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-665.48" x2="360.68" y2="-690.88" width="0.1524" layer="91"/>
<junction x="360.68" y="-538.48"/>
<junction x="360.68" y="-563.88"/>
<junction x="360.68" y="-589.28"/>
<junction x="360.68" y="-614.68"/>
<junction x="360.68" y="-640.08"/>
<junction x="360.68" y="-665.48"/>
<pinref part="LED81" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-513.08" x2="368.3" y2="-513.08" width="0.1524" layer="91"/>
<pinref part="LED82" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-538.48" x2="368.3" y2="-538.48" width="0.1524" layer="91"/>
<pinref part="LED83" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-563.88" x2="368.3" y2="-563.88" width="0.1524" layer="91"/>
<pinref part="LED84" gate="G$1" pin="DP"/>
<wire x1="368.3" y1="-589.28" x2="360.68" y2="-589.28" width="0.1524" layer="91"/>
<pinref part="LED85" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-614.68" x2="368.3" y2="-614.68" width="0.1524" layer="91"/>
<pinref part="LED86" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-640.08" x2="368.3" y2="-640.08" width="0.1524" layer="91"/>
<pinref part="LED87" gate="G$1" pin="DP"/>
<wire x1="368.3" y1="-665.48" x2="360.68" y2="-665.48" width="0.1524" layer="91"/>
<pinref part="LED88" gate="G$1" pin="DP"/>
<wire x1="360.68" y1="-690.88" x2="368.3" y2="-690.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$237" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG0"/>
<wire x1="314.96" y1="-566.42" x2="327.66" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-566.42" x2="327.66" y2="-528.32" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-528.32" x2="327.66" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-525.78" x2="368.3" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-528.32" x2="368.3" y2="-528.32" width="0.1524" layer="91"/>
<junction x="327.66" y="-528.32"/>
<pinref part="LED81" gate="G$1" pin="COM@2"/>
<pinref part="LED81" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$238" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG1"/>
<wire x1="314.96" y1="-568.96" x2="330.2" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-568.96" x2="330.2" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-553.72" x2="330.2" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-551.18" x2="368.3" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-553.72" x2="368.3" y2="-553.72" width="0.1524" layer="91"/>
<junction x="330.2" y="-553.72"/>
<pinref part="LED82" gate="G$1" pin="COM@2"/>
<pinref part="LED82" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$239" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG2"/>
<wire x1="314.96" y1="-571.5" x2="358.14" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-571.5" x2="358.14" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="358.14" y1="-576.58" x2="358.14" y2="-579.12" width="0.1524" layer="91"/>
<junction x="358.14" y="-576.58"/>
<pinref part="LED83" gate="G$1" pin="COM@2"/>
<wire x1="368.3" y1="-576.58" x2="358.14" y2="-576.58" width="0.1524" layer="91"/>
<pinref part="LED83" gate="G$1" pin="COM@1"/>
<wire x1="358.14" y1="-579.12" x2="368.3" y2="-579.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$240" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG3"/>
<wire x1="314.96" y1="-574.04" x2="355.6" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-574.04" x2="355.6" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-601.98" x2="368.3" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-601.98" x2="355.6" y2="-604.52" width="0.1524" layer="91"/>
<junction x="355.6" y="-601.98"/>
<wire x1="355.6" y1="-604.52" x2="368.3" y2="-604.52" width="0.1524" layer="91"/>
<pinref part="LED84" gate="G$1" pin="COM@2"/>
<pinref part="LED84" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$241" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG4"/>
<wire x1="314.96" y1="-576.58" x2="353.06" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-576.58" x2="353.06" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-627.38" x2="368.3" y2="-627.38" width="0.1524" layer="91"/>
<pinref part="LED85" gate="G$1" pin="COM@2"/>
<pinref part="LED85" gate="G$1" pin="COM@1"/>
<wire x1="353.06" y1="-627.38" x2="353.06" y2="-629.92" width="0.1524" layer="91"/>
<wire x1="353.06" y1="-629.92" x2="368.3" y2="-629.92" width="0.1524" layer="91"/>
<junction x="353.06" y="-627.38"/>
</segment>
</net>
<net name="N$242" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG5"/>
<wire x1="314.96" y1="-579.12" x2="350.52" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-579.12" x2="350.52" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-652.78" x2="350.52" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-655.32" x2="368.3" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="350.52" y1="-652.78" x2="368.3" y2="-652.78" width="0.1524" layer="91"/>
<junction x="350.52" y="-652.78"/>
<pinref part="LED86" gate="G$1" pin="COM@2"/>
<pinref part="LED86" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$243" class="0">
<segment>
<wire x1="347.98" y1="-678.18" x2="368.3" y2="-678.18" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="DIG6"/>
<wire x1="314.96" y1="-581.66" x2="347.98" y2="-581.66" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-581.66" x2="347.98" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-678.18" x2="347.98" y2="-680.72" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-680.72" x2="368.3" y2="-680.72" width="0.1524" layer="91"/>
<junction x="347.98" y="-678.18"/>
<pinref part="LED87" gate="G$1" pin="COM@2"/>
<pinref part="LED87" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$244" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DIG7"/>
<wire x1="314.96" y1="-584.2" x2="345.44" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-584.2" x2="345.44" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-703.58" x2="345.44" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="345.44" y1="-706.12" x2="368.3" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-703.58" x2="345.44" y2="-703.58" width="0.1524" layer="91"/>
<junction x="345.44" y="-703.58"/>
<pinref part="LED88" gate="G$1" pin="COM@2"/>
<pinref part="LED88" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$245" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGA"/>
<wire x1="314.96" y1="-586.74" x2="342.9" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-586.74" x2="342.9" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-716.28" x2="393.7" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-716.28" x2="393.7" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-706.12" x2="393.7" y2="-680.72" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-680.72" x2="393.7" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-655.32" x2="393.7" y2="-629.92" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-629.92" x2="393.7" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-604.52" x2="393.7" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-579.12" x2="393.7" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="393.7" y1="-553.72" x2="393.7" y2="-528.32" width="0.1524" layer="91"/>
<junction x="393.7" y="-553.72"/>
<wire x1="388.62" y1="-553.72" x2="393.7" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-579.12" x2="393.7" y2="-579.12" width="0.1524" layer="91"/>
<junction x="393.7" y="-579.12"/>
<wire x1="388.62" y1="-604.52" x2="393.7" y2="-604.52" width="0.1524" layer="91"/>
<junction x="393.7" y="-604.52"/>
<wire x1="388.62" y1="-629.92" x2="393.7" y2="-629.92" width="0.1524" layer="91"/>
<junction x="393.7" y="-629.92"/>
<wire x1="388.62" y1="-655.32" x2="393.7" y2="-655.32" width="0.1524" layer="91"/>
<junction x="393.7" y="-655.32"/>
<wire x1="388.62" y1="-680.72" x2="393.7" y2="-680.72" width="0.1524" layer="91"/>
<junction x="393.7" y="-680.72"/>
<junction x="393.7" y="-706.12"/>
<pinref part="LED81" gate="G$1" pin="A"/>
<wire x1="388.62" y1="-528.32" x2="393.7" y2="-528.32" width="0.1524" layer="91"/>
<pinref part="LED88" gate="G$1" pin="A"/>
<wire x1="388.62" y1="-706.12" x2="393.7" y2="-706.12" width="0.1524" layer="91"/>
<pinref part="LED82" gate="G$1" pin="A"/>
<pinref part="LED83" gate="G$1" pin="A"/>
<pinref part="LED84" gate="G$1" pin="A"/>
<pinref part="LED85" gate="G$1" pin="A"/>
<pinref part="LED86" gate="G$1" pin="A"/>
<pinref part="LED87" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$246" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGB"/>
<wire x1="314.96" y1="-589.28" x2="340.36" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-589.28" x2="340.36" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-718.82" x2="396.24" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-718.82" x2="396.24" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-703.58" x2="396.24" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-678.18" x2="396.24" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-652.78" x2="396.24" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-627.38" x2="396.24" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-601.98" x2="396.24" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-576.58" x2="396.24" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-551.18" x2="396.24" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-525.78" x2="388.62" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-551.18" x2="396.24" y2="-551.18" width="0.1524" layer="91"/>
<junction x="396.24" y="-551.18"/>
<wire x1="388.62" y1="-576.58" x2="396.24" y2="-576.58" width="0.1524" layer="91"/>
<junction x="396.24" y="-576.58"/>
<wire x1="388.62" y1="-601.98" x2="396.24" y2="-601.98" width="0.1524" layer="91"/>
<junction x="396.24" y="-601.98"/>
<wire x1="388.62" y1="-627.38" x2="396.24" y2="-627.38" width="0.1524" layer="91"/>
<junction x="396.24" y="-627.38"/>
<wire x1="388.62" y1="-652.78" x2="396.24" y2="-652.78" width="0.1524" layer="91"/>
<junction x="396.24" y="-652.78"/>
<wire x1="388.62" y1="-678.18" x2="396.24" y2="-678.18" width="0.1524" layer="91"/>
<junction x="396.24" y="-678.18"/>
<wire x1="388.62" y1="-703.58" x2="396.24" y2="-703.58" width="0.1524" layer="91"/>
<junction x="396.24" y="-703.58"/>
<pinref part="LED81" gate="G$1" pin="B"/>
<pinref part="LED88" gate="G$1" pin="B"/>
<pinref part="LED82" gate="G$1" pin="B"/>
<pinref part="LED83" gate="G$1" pin="B"/>
<pinref part="LED84" gate="G$1" pin="B"/>
<pinref part="LED85" gate="G$1" pin="B"/>
<pinref part="LED86" gate="G$1" pin="B"/>
<pinref part="LED87" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$247" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGC"/>
<wire x1="314.96" y1="-591.82" x2="337.82" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-591.82" x2="337.82" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="337.82" y1="-721.36" x2="398.78" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-721.36" x2="398.78" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-701.04" x2="398.78" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-675.64" x2="398.78" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-650.24" x2="398.78" y2="-624.84" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-624.84" x2="398.78" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-599.44" x2="398.78" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-574.04" x2="398.78" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-548.64" x2="398.78" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-523.24" x2="388.62" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-548.64" x2="398.78" y2="-548.64" width="0.1524" layer="91"/>
<junction x="398.78" y="-548.64"/>
<wire x1="388.62" y1="-574.04" x2="398.78" y2="-574.04" width="0.1524" layer="91"/>
<junction x="398.78" y="-574.04"/>
<wire x1="388.62" y1="-599.44" x2="398.78" y2="-599.44" width="0.1524" layer="91"/>
<junction x="398.78" y="-599.44"/>
<wire x1="388.62" y1="-624.84" x2="398.78" y2="-624.84" width="0.1524" layer="91"/>
<junction x="398.78" y="-624.84"/>
<wire x1="388.62" y1="-650.24" x2="398.78" y2="-650.24" width="0.1524" layer="91"/>
<junction x="398.78" y="-650.24"/>
<wire x1="388.62" y1="-675.64" x2="398.78" y2="-675.64" width="0.1524" layer="91"/>
<junction x="398.78" y="-675.64"/>
<wire x1="388.62" y1="-701.04" x2="398.78" y2="-701.04" width="0.1524" layer="91"/>
<junction x="398.78" y="-701.04"/>
<pinref part="LED81" gate="G$1" pin="C"/>
<pinref part="LED88" gate="G$1" pin="C"/>
<pinref part="LED82" gate="G$1" pin="C"/>
<pinref part="LED83" gate="G$1" pin="C"/>
<pinref part="LED84" gate="G$1" pin="C"/>
<pinref part="LED85" gate="G$1" pin="C"/>
<pinref part="LED86" gate="G$1" pin="C"/>
<pinref part="LED87" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$248" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGD"/>
<wire x1="314.96" y1="-594.36" x2="335.28" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-594.36" x2="335.28" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="335.28" y1="-723.9" x2="401.32" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-723.9" x2="401.32" y2="-698.5" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-698.5" x2="401.32" y2="-673.1" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-673.1" x2="401.32" y2="-647.7" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-647.7" x2="401.32" y2="-622.3" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-622.3" x2="401.32" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-596.9" x2="401.32" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-571.5" x2="401.32" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-546.1" x2="401.32" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="401.32" y1="-520.7" x2="388.62" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-546.1" x2="401.32" y2="-546.1" width="0.1524" layer="91"/>
<junction x="401.32" y="-546.1"/>
<wire x1="388.62" y1="-571.5" x2="401.32" y2="-571.5" width="0.1524" layer="91"/>
<junction x="401.32" y="-571.5"/>
<wire x1="388.62" y1="-596.9" x2="401.32" y2="-596.9" width="0.1524" layer="91"/>
<junction x="401.32" y="-596.9"/>
<wire x1="388.62" y1="-622.3" x2="401.32" y2="-622.3" width="0.1524" layer="91"/>
<junction x="401.32" y="-622.3"/>
<wire x1="388.62" y1="-647.7" x2="401.32" y2="-647.7" width="0.1524" layer="91"/>
<junction x="401.32" y="-647.7"/>
<wire x1="388.62" y1="-673.1" x2="401.32" y2="-673.1" width="0.1524" layer="91"/>
<junction x="401.32" y="-673.1"/>
<wire x1="388.62" y1="-698.5" x2="401.32" y2="-698.5" width="0.1524" layer="91"/>
<junction x="401.32" y="-698.5"/>
<pinref part="LED81" gate="G$1" pin="D"/>
<pinref part="LED88" gate="G$1" pin="D"/>
<pinref part="LED82" gate="G$1" pin="D"/>
<pinref part="LED83" gate="G$1" pin="D"/>
<pinref part="LED84" gate="G$1" pin="D"/>
<pinref part="LED85" gate="G$1" pin="D"/>
<pinref part="LED86" gate="G$1" pin="D"/>
<pinref part="LED87" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$249" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGE"/>
<wire x1="314.96" y1="-596.9" x2="332.74" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-596.9" x2="332.74" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-726.44" x2="403.86" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-726.44" x2="403.86" y2="-695.96" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-695.96" x2="403.86" y2="-670.56" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-670.56" x2="403.86" y2="-645.16" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-645.16" x2="403.86" y2="-619.76" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-619.76" x2="403.86" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-594.36" x2="403.86" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-568.96" x2="403.86" y2="-543.56" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-543.56" x2="403.86" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-518.16" x2="388.62" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-543.56" x2="403.86" y2="-543.56" width="0.1524" layer="91"/>
<junction x="403.86" y="-543.56"/>
<wire x1="388.62" y1="-568.96" x2="403.86" y2="-568.96" width="0.1524" layer="91"/>
<junction x="403.86" y="-568.96"/>
<wire x1="388.62" y1="-594.36" x2="403.86" y2="-594.36" width="0.1524" layer="91"/>
<junction x="403.86" y="-594.36"/>
<wire x1="388.62" y1="-619.76" x2="403.86" y2="-619.76" width="0.1524" layer="91"/>
<junction x="403.86" y="-619.76"/>
<wire x1="388.62" y1="-645.16" x2="403.86" y2="-645.16" width="0.1524" layer="91"/>
<junction x="403.86" y="-645.16"/>
<wire x1="388.62" y1="-670.56" x2="403.86" y2="-670.56" width="0.1524" layer="91"/>
<junction x="403.86" y="-670.56"/>
<wire x1="388.62" y1="-695.96" x2="403.86" y2="-695.96" width="0.1524" layer="91"/>
<junction x="403.86" y="-695.96"/>
<pinref part="LED81" gate="G$1" pin="E"/>
<pinref part="LED88" gate="G$1" pin="E"/>
<pinref part="LED82" gate="G$1" pin="E"/>
<pinref part="LED83" gate="G$1" pin="E"/>
<pinref part="LED84" gate="G$1" pin="E"/>
<pinref part="LED85" gate="G$1" pin="E"/>
<pinref part="LED86" gate="G$1" pin="E"/>
<pinref part="LED87" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$250" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGG"/>
<wire x1="314.96" y1="-601.98" x2="327.66" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-601.98" x2="327.66" y2="-731.52" width="0.1524" layer="91"/>
<wire x1="327.66" y1="-731.52" x2="408.94" y2="-731.52" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-731.52" x2="408.94" y2="-690.88" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-690.88" x2="408.94" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-665.48" x2="408.94" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-640.08" x2="408.94" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-614.68" x2="408.94" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-589.28" x2="408.94" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-563.88" x2="408.94" y2="-538.48" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-538.48" x2="408.94" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-513.08" x2="388.62" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-538.48" x2="408.94" y2="-538.48" width="0.1524" layer="91"/>
<junction x="408.94" y="-538.48"/>
<wire x1="388.62" y1="-563.88" x2="408.94" y2="-563.88" width="0.1524" layer="91"/>
<junction x="408.94" y="-563.88"/>
<wire x1="388.62" y1="-589.28" x2="408.94" y2="-589.28" width="0.1524" layer="91"/>
<junction x="408.94" y="-589.28"/>
<wire x1="388.62" y1="-614.68" x2="408.94" y2="-614.68" width="0.1524" layer="91"/>
<junction x="408.94" y="-614.68"/>
<wire x1="388.62" y1="-640.08" x2="408.94" y2="-640.08" width="0.1524" layer="91"/>
<junction x="408.94" y="-640.08"/>
<wire x1="388.62" y1="-665.48" x2="408.94" y2="-665.48" width="0.1524" layer="91"/>
<junction x="408.94" y="-665.48"/>
<wire x1="388.62" y1="-690.88" x2="408.94" y2="-690.88" width="0.1524" layer="91"/>
<junction x="408.94" y="-690.88"/>
<pinref part="LED81" gate="G$1" pin="G"/>
<pinref part="LED88" gate="G$1" pin="G"/>
<pinref part="LED82" gate="G$1" pin="G"/>
<pinref part="LED83" gate="G$1" pin="G"/>
<pinref part="LED84" gate="G$1" pin="G"/>
<pinref part="LED85" gate="G$1" pin="G"/>
<pinref part="LED86" gate="G$1" pin="G"/>
<pinref part="LED87" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$251" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="SEGF"/>
<wire x1="314.96" y1="-599.44" x2="330.2" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-599.44" x2="330.2" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="330.2" y1="-728.98" x2="406.4" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-728.98" x2="406.4" y2="-693.42" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-693.42" x2="406.4" y2="-668.02" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-668.02" x2="406.4" y2="-642.62" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-642.62" x2="406.4" y2="-617.22" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-617.22" x2="406.4" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-591.82" x2="406.4" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-566.42" x2="406.4" y2="-541.02" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-541.02" x2="406.4" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-515.62" x2="388.62" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-541.02" x2="406.4" y2="-541.02" width="0.1524" layer="91"/>
<junction x="406.4" y="-541.02"/>
<wire x1="388.62" y1="-566.42" x2="406.4" y2="-566.42" width="0.1524" layer="91"/>
<junction x="406.4" y="-566.42"/>
<wire x1="388.62" y1="-591.82" x2="406.4" y2="-591.82" width="0.1524" layer="91"/>
<junction x="406.4" y="-591.82"/>
<wire x1="388.62" y1="-617.22" x2="406.4" y2="-617.22" width="0.1524" layer="91"/>
<junction x="406.4" y="-617.22"/>
<wire x1="388.62" y1="-642.62" x2="406.4" y2="-642.62" width="0.1524" layer="91"/>
<junction x="406.4" y="-642.62"/>
<wire x1="388.62" y1="-668.02" x2="406.4" y2="-668.02" width="0.1524" layer="91"/>
<junction x="406.4" y="-668.02"/>
<wire x1="388.62" y1="-693.42" x2="406.4" y2="-693.42" width="0.1524" layer="91"/>
<junction x="406.4" y="-693.42"/>
<pinref part="LED81" gate="G$1" pin="F"/>
<pinref part="LED88" gate="G$1" pin="F"/>
<pinref part="LED82" gate="G$1" pin="F"/>
<pinref part="LED83" gate="G$1" pin="F"/>
<pinref part="LED84" gate="G$1" pin="F"/>
<pinref part="LED85" gate="G$1" pin="F"/>
<pinref part="LED86" gate="G$1" pin="F"/>
<pinref part="LED87" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$253" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="DOUT"/>
<wire x1="287.02" y1="-579.12" x2="269.24" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-579.12" x2="269.24" y2="-495.3" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-495.3" x2="424.18" y2="-495.3" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="DIN"/>
<wire x1="444.5" y1="-576.58" x2="424.18" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="424.18" y1="-576.58" x2="424.18" y2="-495.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$182" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="IC12" gate="G$1" pin="ISET"/>
<wire x1="439.42" y1="-586.74" x2="439.42" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="439.42" y1="-584.2" x2="444.5" y2="-584.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$206" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGDP"/>
<wire x1="472.44" y1="-604.52" x2="482.6" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-604.52" x2="482.6" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-513.08" x2="518.16" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-513.08" x2="518.16" y2="-538.48" width="0.1524" layer="91"/>
<junction x="518.16" y="-513.08"/>
<wire x1="518.16" y1="-538.48" x2="518.16" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-563.88" x2="518.16" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-589.28" x2="518.16" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-614.68" x2="518.16" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-640.08" x2="518.16" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-665.48" x2="518.16" y2="-690.88" width="0.1524" layer="91"/>
<junction x="518.16" y="-538.48"/>
<junction x="518.16" y="-563.88"/>
<junction x="518.16" y="-589.28"/>
<junction x="518.16" y="-614.68"/>
<junction x="518.16" y="-640.08"/>
<junction x="518.16" y="-665.48"/>
<pinref part="LED89" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-513.08" x2="525.78" y2="-513.08" width="0.1524" layer="91"/>
<pinref part="LED90" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-538.48" x2="525.78" y2="-538.48" width="0.1524" layer="91"/>
<pinref part="LED91" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-563.88" x2="525.78" y2="-563.88" width="0.1524" layer="91"/>
<pinref part="LED92" gate="G$1" pin="DP"/>
<wire x1="525.78" y1="-589.28" x2="518.16" y2="-589.28" width="0.1524" layer="91"/>
<pinref part="LED93" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-614.68" x2="525.78" y2="-614.68" width="0.1524" layer="91"/>
<pinref part="LED94" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-640.08" x2="525.78" y2="-640.08" width="0.1524" layer="91"/>
<pinref part="LED95" gate="G$1" pin="DP"/>
<wire x1="525.78" y1="-665.48" x2="518.16" y2="-665.48" width="0.1524" layer="91"/>
<pinref part="LED96" gate="G$1" pin="DP"/>
<wire x1="518.16" y1="-690.88" x2="525.78" y2="-690.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$207" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG0"/>
<wire x1="472.44" y1="-566.42" x2="485.14" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-566.42" x2="485.14" y2="-528.32" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-528.32" x2="485.14" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-525.78" x2="525.78" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-528.32" x2="525.78" y2="-528.32" width="0.1524" layer="91"/>
<junction x="485.14" y="-528.32"/>
<pinref part="LED89" gate="G$1" pin="COM@2"/>
<pinref part="LED89" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$208" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG1"/>
<wire x1="472.44" y1="-568.96" x2="487.68" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-568.96" x2="487.68" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-553.72" x2="487.68" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-551.18" x2="525.78" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-553.72" x2="525.78" y2="-553.72" width="0.1524" layer="91"/>
<junction x="487.68" y="-553.72"/>
<pinref part="LED90" gate="G$1" pin="COM@2"/>
<pinref part="LED90" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$209" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG2"/>
<wire x1="472.44" y1="-571.5" x2="515.62" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="515.62" y1="-571.5" x2="515.62" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="515.62" y1="-576.58" x2="515.62" y2="-579.12" width="0.1524" layer="91"/>
<junction x="515.62" y="-576.58"/>
<pinref part="LED91" gate="G$1" pin="COM@2"/>
<wire x1="525.78" y1="-576.58" x2="515.62" y2="-576.58" width="0.1524" layer="91"/>
<pinref part="LED91" gate="G$1" pin="COM@1"/>
<wire x1="515.62" y1="-579.12" x2="525.78" y2="-579.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$210" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG3"/>
<wire x1="472.44" y1="-574.04" x2="513.08" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="513.08" y1="-574.04" x2="513.08" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="513.08" y1="-601.98" x2="525.78" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="513.08" y1="-601.98" x2="513.08" y2="-604.52" width="0.1524" layer="91"/>
<junction x="513.08" y="-601.98"/>
<wire x1="513.08" y1="-604.52" x2="525.78" y2="-604.52" width="0.1524" layer="91"/>
<pinref part="LED92" gate="G$1" pin="COM@2"/>
<pinref part="LED92" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$230" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG4"/>
<wire x1="472.44" y1="-576.58" x2="510.54" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="510.54" y1="-576.58" x2="510.54" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="510.54" y1="-627.38" x2="510.54" y2="-629.92" width="0.1524" layer="91"/>
<wire x1="510.54" y1="-627.38" x2="525.78" y2="-627.38" width="0.1524" layer="91"/>
<junction x="510.54" y="-627.38"/>
<pinref part="LED93" gate="G$1" pin="COM@2"/>
<pinref part="LED93" gate="G$1" pin="COM@1"/>
<wire x1="510.54" y1="-629.92" x2="525.78" y2="-629.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$231" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG5"/>
<wire x1="472.44" y1="-579.12" x2="508" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="508" y1="-579.12" x2="508" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="508" y1="-652.78" x2="508" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="508" y1="-655.32" x2="525.78" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="508" y1="-652.78" x2="525.78" y2="-652.78" width="0.1524" layer="91"/>
<junction x="508" y="-652.78"/>
<pinref part="LED94" gate="G$1" pin="COM@2"/>
<pinref part="LED94" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$232" class="0">
<segment>
<wire x1="505.46" y1="-678.18" x2="525.78" y2="-678.18" width="0.1524" layer="91"/>
<pinref part="IC12" gate="G$1" pin="DIG6"/>
<wire x1="472.44" y1="-581.66" x2="505.46" y2="-581.66" width="0.1524" layer="91"/>
<wire x1="505.46" y1="-581.66" x2="505.46" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="505.46" y1="-678.18" x2="505.46" y2="-680.72" width="0.1524" layer="91"/>
<wire x1="505.46" y1="-680.72" x2="525.78" y2="-680.72" width="0.1524" layer="91"/>
<junction x="505.46" y="-678.18"/>
<pinref part="LED95" gate="G$1" pin="COM@2"/>
<pinref part="LED95" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$233" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DIG7"/>
<wire x1="472.44" y1="-584.2" x2="502.92" y2="-584.2" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-584.2" x2="502.92" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-703.58" x2="502.92" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-706.12" x2="525.78" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="525.78" y1="-703.58" x2="502.92" y2="-703.58" width="0.1524" layer="91"/>
<junction x="502.92" y="-703.58"/>
<pinref part="LED96" gate="G$1" pin="COM@2"/>
<pinref part="LED96" gate="G$1" pin="COM@1"/>
</segment>
</net>
<net name="N$234" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGA"/>
<wire x1="472.44" y1="-586.74" x2="500.38" y2="-586.74" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-586.74" x2="500.38" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-716.28" x2="551.18" y2="-716.28" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-716.28" x2="551.18" y2="-706.12" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-706.12" x2="551.18" y2="-680.72" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-680.72" x2="551.18" y2="-655.32" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-655.32" x2="551.18" y2="-629.92" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-629.92" x2="551.18" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-604.52" x2="551.18" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-579.12" x2="551.18" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-553.72" x2="551.18" y2="-528.32" width="0.1524" layer="91"/>
<junction x="551.18" y="-553.72"/>
<wire x1="546.1" y1="-553.72" x2="551.18" y2="-553.72" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-579.12" x2="551.18" y2="-579.12" width="0.1524" layer="91"/>
<junction x="551.18" y="-579.12"/>
<wire x1="546.1" y1="-604.52" x2="551.18" y2="-604.52" width="0.1524" layer="91"/>
<junction x="551.18" y="-604.52"/>
<wire x1="546.1" y1="-629.92" x2="551.18" y2="-629.92" width="0.1524" layer="91"/>
<junction x="551.18" y="-629.92"/>
<wire x1="546.1" y1="-655.32" x2="551.18" y2="-655.32" width="0.1524" layer="91"/>
<junction x="551.18" y="-655.32"/>
<wire x1="546.1" y1="-680.72" x2="551.18" y2="-680.72" width="0.1524" layer="91"/>
<junction x="551.18" y="-680.72"/>
<junction x="551.18" y="-706.12"/>
<pinref part="LED89" gate="G$1" pin="A"/>
<wire x1="546.1" y1="-528.32" x2="551.18" y2="-528.32" width="0.1524" layer="91"/>
<pinref part="LED96" gate="G$1" pin="A"/>
<wire x1="546.1" y1="-706.12" x2="551.18" y2="-706.12" width="0.1524" layer="91"/>
<pinref part="LED90" gate="G$1" pin="A"/>
<pinref part="LED91" gate="G$1" pin="A"/>
<pinref part="LED92" gate="G$1" pin="A"/>
<pinref part="LED93" gate="G$1" pin="A"/>
<pinref part="LED94" gate="G$1" pin="A"/>
<pinref part="LED95" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$254" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGB"/>
<wire x1="472.44" y1="-589.28" x2="497.84" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-589.28" x2="497.84" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-718.82" x2="553.72" y2="-718.82" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-718.82" x2="553.72" y2="-703.58" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-703.58" x2="553.72" y2="-678.18" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-678.18" x2="553.72" y2="-652.78" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-652.78" x2="553.72" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-627.38" x2="553.72" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-601.98" x2="553.72" y2="-576.58" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-576.58" x2="553.72" y2="-551.18" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-551.18" x2="553.72" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-525.78" x2="546.1" y2="-525.78" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-551.18" x2="553.72" y2="-551.18" width="0.1524" layer="91"/>
<junction x="553.72" y="-551.18"/>
<wire x1="546.1" y1="-576.58" x2="553.72" y2="-576.58" width="0.1524" layer="91"/>
<junction x="553.72" y="-576.58"/>
<wire x1="546.1" y1="-601.98" x2="553.72" y2="-601.98" width="0.1524" layer="91"/>
<junction x="553.72" y="-601.98"/>
<wire x1="546.1" y1="-627.38" x2="553.72" y2="-627.38" width="0.1524" layer="91"/>
<junction x="553.72" y="-627.38"/>
<wire x1="546.1" y1="-652.78" x2="553.72" y2="-652.78" width="0.1524" layer="91"/>
<junction x="553.72" y="-652.78"/>
<wire x1="546.1" y1="-678.18" x2="553.72" y2="-678.18" width="0.1524" layer="91"/>
<junction x="553.72" y="-678.18"/>
<wire x1="546.1" y1="-703.58" x2="553.72" y2="-703.58" width="0.1524" layer="91"/>
<junction x="553.72" y="-703.58"/>
<pinref part="LED89" gate="G$1" pin="B"/>
<pinref part="LED96" gate="G$1" pin="B"/>
<pinref part="LED90" gate="G$1" pin="B"/>
<pinref part="LED91" gate="G$1" pin="B"/>
<pinref part="LED92" gate="G$1" pin="B"/>
<pinref part="LED93" gate="G$1" pin="B"/>
<pinref part="LED94" gate="G$1" pin="B"/>
<pinref part="LED95" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$255" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGC"/>
<wire x1="472.44" y1="-591.82" x2="495.3" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-591.82" x2="495.3" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-721.36" x2="556.26" y2="-721.36" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-721.36" x2="556.26" y2="-701.04" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-701.04" x2="556.26" y2="-675.64" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-675.64" x2="556.26" y2="-650.24" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-650.24" x2="556.26" y2="-624.84" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-624.84" x2="556.26" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-599.44" x2="556.26" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-574.04" x2="556.26" y2="-548.64" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-548.64" x2="556.26" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-523.24" x2="546.1" y2="-523.24" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-548.64" x2="556.26" y2="-548.64" width="0.1524" layer="91"/>
<junction x="556.26" y="-548.64"/>
<wire x1="546.1" y1="-574.04" x2="556.26" y2="-574.04" width="0.1524" layer="91"/>
<junction x="556.26" y="-574.04"/>
<wire x1="546.1" y1="-599.44" x2="556.26" y2="-599.44" width="0.1524" layer="91"/>
<junction x="556.26" y="-599.44"/>
<wire x1="546.1" y1="-624.84" x2="556.26" y2="-624.84" width="0.1524" layer="91"/>
<junction x="556.26" y="-624.84"/>
<wire x1="546.1" y1="-650.24" x2="556.26" y2="-650.24" width="0.1524" layer="91"/>
<junction x="556.26" y="-650.24"/>
<wire x1="546.1" y1="-675.64" x2="556.26" y2="-675.64" width="0.1524" layer="91"/>
<junction x="556.26" y="-675.64"/>
<wire x1="546.1" y1="-701.04" x2="556.26" y2="-701.04" width="0.1524" layer="91"/>
<junction x="556.26" y="-701.04"/>
<pinref part="LED89" gate="G$1" pin="C"/>
<pinref part="LED96" gate="G$1" pin="C"/>
<pinref part="LED90" gate="G$1" pin="C"/>
<pinref part="LED91" gate="G$1" pin="C"/>
<pinref part="LED92" gate="G$1" pin="C"/>
<pinref part="LED93" gate="G$1" pin="C"/>
<pinref part="LED94" gate="G$1" pin="C"/>
<pinref part="LED95" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$256" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGD"/>
<wire x1="472.44" y1="-594.36" x2="492.76" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-594.36" x2="492.76" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="492.76" y1="-723.9" x2="558.8" y2="-723.9" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-723.9" x2="558.8" y2="-698.5" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-698.5" x2="558.8" y2="-673.1" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-673.1" x2="558.8" y2="-647.7" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-647.7" x2="558.8" y2="-622.3" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-622.3" x2="558.8" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-596.9" x2="558.8" y2="-571.5" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-571.5" x2="558.8" y2="-546.1" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-546.1" x2="558.8" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-520.7" x2="546.1" y2="-520.7" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-546.1" x2="558.8" y2="-546.1" width="0.1524" layer="91"/>
<junction x="558.8" y="-546.1"/>
<wire x1="546.1" y1="-571.5" x2="558.8" y2="-571.5" width="0.1524" layer="91"/>
<junction x="558.8" y="-571.5"/>
<wire x1="546.1" y1="-596.9" x2="558.8" y2="-596.9" width="0.1524" layer="91"/>
<junction x="558.8" y="-596.9"/>
<wire x1="546.1" y1="-622.3" x2="558.8" y2="-622.3" width="0.1524" layer="91"/>
<junction x="558.8" y="-622.3"/>
<wire x1="546.1" y1="-647.7" x2="558.8" y2="-647.7" width="0.1524" layer="91"/>
<junction x="558.8" y="-647.7"/>
<wire x1="546.1" y1="-673.1" x2="558.8" y2="-673.1" width="0.1524" layer="91"/>
<junction x="558.8" y="-673.1"/>
<wire x1="546.1" y1="-698.5" x2="558.8" y2="-698.5" width="0.1524" layer="91"/>
<junction x="558.8" y="-698.5"/>
<pinref part="LED89" gate="G$1" pin="D"/>
<pinref part="LED96" gate="G$1" pin="D"/>
<pinref part="LED90" gate="G$1" pin="D"/>
<pinref part="LED91" gate="G$1" pin="D"/>
<pinref part="LED92" gate="G$1" pin="D"/>
<pinref part="LED93" gate="G$1" pin="D"/>
<pinref part="LED94" gate="G$1" pin="D"/>
<pinref part="LED95" gate="G$1" pin="D"/>
</segment>
</net>
<net name="N$257" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGE"/>
<wire x1="472.44" y1="-596.9" x2="490.22" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-596.9" x2="490.22" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="490.22" y1="-726.44" x2="561.34" y2="-726.44" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-726.44" x2="561.34" y2="-695.96" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-695.96" x2="561.34" y2="-670.56" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-670.56" x2="561.34" y2="-645.16" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-645.16" x2="561.34" y2="-619.76" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-619.76" x2="561.34" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-594.36" x2="561.34" y2="-568.96" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-568.96" x2="561.34" y2="-543.56" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-543.56" x2="561.34" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-518.16" x2="546.1" y2="-518.16" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-543.56" x2="561.34" y2="-543.56" width="0.1524" layer="91"/>
<junction x="561.34" y="-543.56"/>
<wire x1="546.1" y1="-568.96" x2="561.34" y2="-568.96" width="0.1524" layer="91"/>
<junction x="561.34" y="-568.96"/>
<wire x1="546.1" y1="-594.36" x2="561.34" y2="-594.36" width="0.1524" layer="91"/>
<junction x="561.34" y="-594.36"/>
<wire x1="546.1" y1="-619.76" x2="561.34" y2="-619.76" width="0.1524" layer="91"/>
<junction x="561.34" y="-619.76"/>
<wire x1="546.1" y1="-645.16" x2="561.34" y2="-645.16" width="0.1524" layer="91"/>
<junction x="561.34" y="-645.16"/>
<wire x1="546.1" y1="-670.56" x2="561.34" y2="-670.56" width="0.1524" layer="91"/>
<junction x="561.34" y="-670.56"/>
<wire x1="546.1" y1="-695.96" x2="561.34" y2="-695.96" width="0.1524" layer="91"/>
<junction x="561.34" y="-695.96"/>
<pinref part="LED89" gate="G$1" pin="E"/>
<pinref part="LED96" gate="G$1" pin="E"/>
<pinref part="LED90" gate="G$1" pin="E"/>
<pinref part="LED91" gate="G$1" pin="E"/>
<pinref part="LED92" gate="G$1" pin="E"/>
<pinref part="LED93" gate="G$1" pin="E"/>
<pinref part="LED94" gate="G$1" pin="E"/>
<pinref part="LED95" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$258" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGG"/>
<wire x1="472.44" y1="-601.98" x2="485.14" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-601.98" x2="485.14" y2="-731.52" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-731.52" x2="566.42" y2="-731.52" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-731.52" x2="566.42" y2="-690.88" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-690.88" x2="566.42" y2="-665.48" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-665.48" x2="566.42" y2="-640.08" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-640.08" x2="566.42" y2="-614.68" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-614.68" x2="566.42" y2="-589.28" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-589.28" x2="566.42" y2="-563.88" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-563.88" x2="566.42" y2="-538.48" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-538.48" x2="566.42" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="566.42" y1="-513.08" x2="546.1" y2="-513.08" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-538.48" x2="566.42" y2="-538.48" width="0.1524" layer="91"/>
<junction x="566.42" y="-538.48"/>
<wire x1="546.1" y1="-563.88" x2="566.42" y2="-563.88" width="0.1524" layer="91"/>
<junction x="566.42" y="-563.88"/>
<wire x1="546.1" y1="-589.28" x2="566.42" y2="-589.28" width="0.1524" layer="91"/>
<junction x="566.42" y="-589.28"/>
<wire x1="546.1" y1="-614.68" x2="566.42" y2="-614.68" width="0.1524" layer="91"/>
<junction x="566.42" y="-614.68"/>
<wire x1="546.1" y1="-640.08" x2="566.42" y2="-640.08" width="0.1524" layer="91"/>
<junction x="566.42" y="-640.08"/>
<wire x1="546.1" y1="-665.48" x2="566.42" y2="-665.48" width="0.1524" layer="91"/>
<junction x="566.42" y="-665.48"/>
<wire x1="546.1" y1="-690.88" x2="566.42" y2="-690.88" width="0.1524" layer="91"/>
<junction x="566.42" y="-690.88"/>
<pinref part="LED89" gate="G$1" pin="G"/>
<pinref part="LED96" gate="G$1" pin="G"/>
<pinref part="LED90" gate="G$1" pin="G"/>
<pinref part="LED91" gate="G$1" pin="G"/>
<pinref part="LED92" gate="G$1" pin="G"/>
<pinref part="LED93" gate="G$1" pin="G"/>
<pinref part="LED94" gate="G$1" pin="G"/>
<pinref part="LED95" gate="G$1" pin="G"/>
</segment>
</net>
<net name="N$259" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="SEGF"/>
<wire x1="472.44" y1="-599.44" x2="487.68" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-599.44" x2="487.68" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-728.98" x2="563.88" y2="-728.98" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-728.98" x2="563.88" y2="-693.42" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-693.42" x2="563.88" y2="-668.02" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-668.02" x2="563.88" y2="-642.62" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-642.62" x2="563.88" y2="-617.22" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-617.22" x2="563.88" y2="-591.82" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-591.82" x2="563.88" y2="-566.42" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-566.42" x2="563.88" y2="-541.02" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-541.02" x2="563.88" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-515.62" x2="546.1" y2="-515.62" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-541.02" x2="563.88" y2="-541.02" width="0.1524" layer="91"/>
<junction x="563.88" y="-541.02"/>
<wire x1="546.1" y1="-566.42" x2="563.88" y2="-566.42" width="0.1524" layer="91"/>
<junction x="563.88" y="-566.42"/>
<wire x1="546.1" y1="-591.82" x2="563.88" y2="-591.82" width="0.1524" layer="91"/>
<junction x="563.88" y="-591.82"/>
<wire x1="546.1" y1="-617.22" x2="563.88" y2="-617.22" width="0.1524" layer="91"/>
<junction x="563.88" y="-617.22"/>
<wire x1="546.1" y1="-642.62" x2="563.88" y2="-642.62" width="0.1524" layer="91"/>
<junction x="563.88" y="-642.62"/>
<wire x1="546.1" y1="-668.02" x2="563.88" y2="-668.02" width="0.1524" layer="91"/>
<junction x="563.88" y="-668.02"/>
<wire x1="546.1" y1="-693.42" x2="563.88" y2="-693.42" width="0.1524" layer="91"/>
<junction x="563.88" y="-693.42"/>
<pinref part="LED89" gate="G$1" pin="F"/>
<pinref part="LED96" gate="G$1" pin="F"/>
<pinref part="LED90" gate="G$1" pin="F"/>
<pinref part="LED91" gate="G$1" pin="F"/>
<pinref part="LED92" gate="G$1" pin="F"/>
<pinref part="LED93" gate="G$1" pin="F"/>
<pinref part="LED94" gate="G$1" pin="F"/>
<pinref part="LED95" gate="G$1" pin="F"/>
</segment>
</net>
<net name="N$261" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="DOUT"/>
<wire x1="444.5" y1="-579.12" x2="426.72" y2="-579.12" width="0.1524" layer="91"/>
<wire x1="426.72" y1="-579.12" x2="426.72" y2="-495.3" width="0.1524" layer="91"/>
<wire x1="426.72" y1="-495.3" x2="589.28" y2="-495.3" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="4"/>
</segment>
</net>
<net name="LOAD" class="0">
<segment>
<wire x1="411.48" y1="15.24" x2="411.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="254" y1="15.24" x2="254" y2="88.9" width="0.1524" layer="91"/>
<junction x="254" y="88.9"/>
<wire x1="254" y1="88.9" x2="411.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="96.52" y1="88.9" x2="254" y2="88.9" width="0.1524" layer="91"/>
<wire x1="96.52" y1="15.24" x2="96.52" y2="88.9" width="0.1524" layer="91"/>
<junction x="96.52" y="88.9"/>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="-12.7" x2="-88.9" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="-12.7" x2="-88.9" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-86.36" y1="-10.16" x2="-88.9" y2="-10.16" width="0.1524" layer="91"/>
<junction x="-88.9" y="-10.16"/>
<wire x1="-88.9" y1="-10.16" x2="-88.9" y2="15.24" width="0.1524" layer="91"/>
<junction x="-88.9" y="15.24"/>
<wire x1="-88.9" y1="88.9" x2="-88.9" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="88.9" x2="96.52" y2="88.9" width="0.1524" layer="91"/>
<wire x1="411.48" y1="88.9" x2="561.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="561.34" y1="88.9" x2="561.34" y2="-172.72" width="0.1524" layer="91"/>
<junction x="411.48" y="88.9"/>
<wire x1="-53.34" y1="-200.66" x2="104.14" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-200.66" x2="261.62" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-200.66" x2="419.1" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-492.76" x2="114.3" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-568.96" x2="114.3" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-571.5" x2="271.78" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-492.76" x2="271.78" y2="-492.76" width="0.1524" layer="91"/>
<junction x="114.3" y="-492.76"/>
<wire x1="429.26" y1="-571.5" x2="429.26" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-492.76" x2="429.26" y2="-492.76" width="0.1524" layer="91"/>
<junction x="271.78" y="-492.76"/>
<wire x1="429.26" y1="-492.76" x2="546.1" y2="-492.76" width="0.1524" layer="91"/>
<junction x="429.26" y="-492.76"/>
<wire x1="546.1" y1="-492.76" x2="546.1" y2="-500.38" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="546.1" y1="-500.38" x2="589.28" y2="-500.38" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-274.32" x2="-53.34" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-274.32" x2="104.14" y2="-200.66" width="0.1524" layer="91"/>
<junction x="104.14" y="-200.66"/>
<wire x1="261.62" y1="-274.32" x2="261.62" y2="-200.66" width="0.1524" layer="91"/>
<junction x="261.62" y="-200.66"/>
<wire x1="419.1" y1="-274.32" x2="419.1" y2="-200.66" width="0.1524" layer="91"/>
<junction x="419.1" y="-200.66"/>
<wire x1="-43.18" y1="-566.42" x2="-43.18" y2="-492.76" width="0.1524" layer="91"/>
<junction x="-43.18" y="-492.76"/>
<wire x1="561.34" y1="-172.72" x2="-53.34" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-172.72" x2="-53.34" y2="-200.66" width="0.1524" layer="91"/>
<junction x="-53.34" y="-200.66"/>
<wire x1="419.1" y1="-200.66" x2="607.06" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="607.06" y1="-200.66" x2="607.06" y2="-462.28" width="0.1524" layer="91"/>
<wire x1="607.06" y1="-462.28" x2="-43.18" y2="-462.28" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-462.28" x2="-43.18" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="15.24" x2="-66.04" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="99.06" y1="15.24" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="256.54" y1="15.24" x2="254" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="414.02" y1="15.24" x2="411.48" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="-50.8" y1="-274.32" x2="-53.34" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="106.68" y1="-274.32" x2="104.14" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="264.16" y1="-274.32" x2="261.62" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="421.64" y1="-274.32" x2="419.1" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="-40.64" y1="-566.42" x2="-43.18" y2="-566.42" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="2"/>
<wire x1="116.84" y1="-568.96" x2="114.3" y2="-568.96" width="0.1524" layer="91"/>
<pinref part="R33" gate="G$1" pin="2"/>
<wire x1="274.32" y1="-571.5" x2="271.78" y2="-571.5" width="0.1524" layer="91"/>
<pinref part="R35" gate="G$1" pin="2"/>
<wire x1="431.8" y1="-571.5" x2="429.26" y2="-571.5" width="0.1524" layer="91"/>
<pinref part="R37" gate="G$1" pin="2"/>
<label x="-76.2" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="DIG4"/>
<wire x1="157.48" y1="-574.04" x2="195.58" y2="-574.04" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-574.04" x2="195.58" y2="-624.84" width="0.1524" layer="91"/>
<pinref part="LED77" gate="G$1" pin="COM@2"/>
<wire x1="195.58" y1="-624.84" x2="210.82" y2="-624.84" width="0.1524" layer="91"/>
<pinref part="LED77" gate="G$1" pin="COM@1"/>
<wire x1="195.58" y1="-624.84" x2="195.58" y2="-627.38" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-627.38" x2="210.82" y2="-627.38" width="0.1524" layer="91"/>
<junction x="195.58" y="-624.84"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="GND@1"/>
<pinref part="IC9" gate="G$1" pin="GND@2"/>
<wire x1="-33.02" y1="-599.44" x2="-27.94" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-596.9" x2="-27.94" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-596.9" x2="-43.18" y2="-596.9" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="-594.36" x2="-48.26" y2="-596.9" width="0.1524" layer="91"/>
<junction x="-48.26" y="-596.9"/>
<wire x1="-53.34" y1="-596.9" x2="-48.26" y2="-596.9" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="2"/>
<junction x="-43.18" y="-596.9"/>
<pinref part="IC8" gate="G$1" pin="GND@2"/>
<wire x1="429.26" y1="-307.34" x2="434.34" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="IC8" gate="G$1" pin="GND@1"/>
<wire x1="429.26" y1="-304.8" x2="429.26" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="414.02" y1="-304.8" x2="419.1" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="419.1" y1="-304.8" x2="429.26" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="414.02" y1="-302.26" x2="414.02" y2="-304.8" width="0.1524" layer="91"/>
<junction x="414.02" y="-304.8"/>
<wire x1="408.94" y1="-304.8" x2="414.02" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="2"/>
<junction x="419.1" y="-304.8"/>
<pinref part="IC7" gate="G$1" pin="GND@1"/>
<pinref part="IC7" gate="G$1" pin="GND@2"/>
<wire x1="271.78" y1="-307.34" x2="276.86" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-304.8" x2="276.86" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-304.8" x2="261.62" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="261.62" y1="-304.8" x2="271.78" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-302.26" x2="256.54" y2="-304.8" width="0.1524" layer="91"/>
<junction x="256.54" y="-304.8"/>
<wire x1="251.46" y1="-304.8" x2="256.54" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<junction x="261.62" y="-304.8"/>
<pinref part="IC6" gate="G$1" pin="GND@1"/>
<pinref part="IC6" gate="G$1" pin="GND@2"/>
<wire x1="114.3" y1="-307.34" x2="119.38" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-304.8" x2="119.38" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-304.8" x2="104.14" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="104.14" y1="-304.8" x2="114.3" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-302.26" x2="99.06" y2="-304.8" width="0.1524" layer="91"/>
<junction x="99.06" y="-304.8"/>
<wire x1="93.98" y1="-304.8" x2="99.06" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="2"/>
<junction x="104.14" y="-304.8"/>
<pinref part="IC4" gate="G$1" pin="GND@2"/>
<wire x1="421.64" y1="-17.78" x2="426.72" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="GND@1"/>
<wire x1="421.64" y1="-15.24" x2="426.72" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-15.24" x2="411.48" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="411.48" y1="-15.24" x2="421.64" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-12.7" x2="406.4" y2="-15.24" width="0.1524" layer="91"/>
<junction x="406.4" y="-15.24"/>
<wire x1="401.32" y1="-15.24" x2="406.4" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="2"/>
<junction x="411.48" y="-15.24"/>
<pinref part="IC12" gate="G$1" pin="GND@1"/>
<pinref part="IC12" gate="G$1" pin="GND@2"/>
<wire x1="439.42" y1="-604.52" x2="444.5" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="439.42" y1="-601.98" x2="439.42" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="424.18" y1="-601.98" x2="429.26" y2="-601.98" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="2"/>
<wire x1="429.26" y1="-601.98" x2="439.42" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="424.18" y1="-599.44" x2="424.18" y2="-601.98" width="0.1524" layer="91"/>
<junction x="424.18" y="-601.98"/>
<wire x1="419.1" y1="-601.98" x2="424.18" y2="-601.98" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="2"/>
<junction x="429.26" y="-601.98"/>
<pinref part="IC11" gate="G$1" pin="GND@1"/>
<pinref part="IC11" gate="G$1" pin="GND@2"/>
<wire x1="281.94" y1="-604.52" x2="287.02" y2="-604.52" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-601.98" x2="287.02" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-601.98" x2="271.78" y2="-601.98" width="0.1524" layer="91"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="271.78" y1="-601.98" x2="281.94" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-599.44" x2="266.7" y2="-601.98" width="0.1524" layer="91"/>
<junction x="266.7" y="-601.98"/>
<wire x1="261.62" y1="-601.98" x2="266.7" y2="-601.98" width="0.1524" layer="91"/>
<pinref part="C22" gate="G$1" pin="2"/>
<junction x="271.78" y="-601.98"/>
<pinref part="IC10" gate="G$1" pin="GND@1"/>
<pinref part="IC10" gate="G$1" pin="GND@2"/>
<wire x1="124.46" y1="-601.98" x2="129.54" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-599.44" x2="129.54" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-599.44" x2="114.3" y2="-599.44" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="114.3" y1="-599.44" x2="124.46" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-596.9" x2="109.22" y2="-599.44" width="0.1524" layer="91"/>
<junction x="109.22" y="-599.44"/>
<wire x1="104.14" y1="-599.44" x2="109.22" y2="-599.44" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="2"/>
<junction x="114.3" y="-599.44"/>
<pinref part="IC3" gate="G$1" pin="GND@1"/>
<pinref part="IC3" gate="G$1" pin="GND@2"/>
<wire x1="264.16" y1="-17.78" x2="269.24" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-15.24" x2="269.24" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-15.24" x2="254" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="254" y1="-15.24" x2="264.16" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-12.7" x2="248.92" y2="-15.24" width="0.1524" layer="91"/>
<junction x="248.92" y="-15.24"/>
<wire x1="243.84" y1="-15.24" x2="248.92" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<junction x="254" y="-15.24"/>
<pinref part="IC1" gate="G$1" pin="GND@2"/>
<wire x1="-50.8" y1="-17.78" x2="-45.72" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<wire x1="-50.8" y1="-15.24" x2="-45.72" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-15.24" x2="-50.8" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-50.8" y="-15.24"/>
<wire x1="-66.04" y1="-15.24" x2="-60.96" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-60.96" y1="-15.24" x2="-50.8" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-12.7" x2="-66.04" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-66.04" y="-15.24"/>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="-99.06" y1="-15.24" x2="-73.66" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-76.2" y1="-10.16" x2="-73.66" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-10.16" x2="-73.66" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-73.66" y="-15.24"/>
<wire x1="-73.66" y1="-15.24" x2="-71.12" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="-15.24" x2="-66.04" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-71.12" y="-15.24"/>
<wire x1="-71.12" y1="81.28" x2="-71.12" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="81.28" x2="86.36" y2="81.28" width="0.1524" layer="91"/>
<wire x1="86.36" y1="81.28" x2="243.84" y2="81.28" width="0.1524" layer="91"/>
<wire x1="86.36" y1="81.28" x2="86.36" y2="-15.24" width="0.1524" layer="91"/>
<junction x="86.36" y="81.28"/>
<wire x1="243.84" y1="81.28" x2="243.84" y2="-15.24" width="0.1524" layer="91"/>
<junction x="243.84" y="81.28"/>
<wire x1="243.84" y1="81.28" x2="401.32" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-208.28" x2="93.98" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-208.28" x2="251.46" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="251.46" y1="-208.28" x2="408.94" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-500.38" x2="104.14" y2="-500.38" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-500.38" x2="104.14" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-500.38" x2="261.62" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-500.38" x2="261.62" y2="-500.38" width="0.1524" layer="91"/>
<junction x="104.14" y="-500.38"/>
<wire x1="419.1" y1="-500.38" x2="419.1" y2="-601.98" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-500.38" x2="419.1" y2="-500.38" width="0.1524" layer="91"/>
<junction x="261.62" y="-500.38"/>
<wire x1="419.1" y1="-500.38" x2="543.56" y2="-500.38" width="0.1524" layer="91"/>
<junction x="419.1" y="-500.38"/>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="543.56" y1="-500.38" x2="543.56" y2="-502.92" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-502.92" x2="589.28" y2="-502.92" width="0.1524" layer="91"/>
<wire x1="401.32" y1="81.28" x2="401.32" y2="-15.24" width="0.1524" layer="91"/>
<junction x="401.32" y="81.28"/>
<wire x1="-63.5" y1="-208.28" x2="-63.5" y2="-304.8" width="0.1524" layer="91"/>
<junction x="-63.5" y="-208.28"/>
<wire x1="93.98" y1="-208.28" x2="93.98" y2="-304.8" width="0.1524" layer="91"/>
<junction x="93.98" y="-208.28"/>
<wire x1="251.46" y1="-208.28" x2="251.46" y2="-304.8" width="0.1524" layer="91"/>
<junction x="251.46" y="-208.28"/>
<wire x1="408.94" y1="-208.28" x2="408.94" y2="-304.8" width="0.1524" layer="91"/>
<junction x="408.94" y="-208.28"/>
<wire x1="-53.34" y1="-500.38" x2="-53.34" y2="-596.9" width="0.1524" layer="91"/>
<junction x="-53.34" y="-500.38"/>
<wire x1="401.32" y1="81.28" x2="553.72" y2="81.28" width="0.1524" layer="91"/>
<wire x1="553.72" y1="81.28" x2="553.72" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-180.34" x2="-63.5" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-180.34" x2="-63.5" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-208.28" x2="599.44" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="599.44" y1="-208.28" x2="599.44" y2="-469.9" width="0.1524" layer="91"/>
<wire x1="599.44" y1="-469.9" x2="-53.34" y2="-469.9" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-469.9" x2="-53.34" y2="-500.38" width="0.1524" layer="91"/>
<label x="-68.58" y="-17.78" size="1.778" layer="95"/>
<pinref part="C2" gate="G$1" pin="2"/>
<junction x="-60.96" y="-15.24"/>
<wire x1="-58.42" y1="-304.8" x2="-53.34" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="-43.18" y1="-304.8" x2="-38.1" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-302.26" x2="-58.42" y2="-304.8" width="0.1524" layer="91"/>
<junction x="-58.42" y="-304.8"/>
<wire x1="-63.5" y1="-304.8" x2="-58.42" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="2"/>
<junction x="-53.34" y="-304.8"/>
<pinref part="IC5" gate="G$1" pin="GND@1"/>
<wire x1="-53.34" y1="-304.8" x2="-43.18" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="IC5" gate="G$1" pin="GND@2"/>
<wire x1="-43.18" y1="-307.34" x2="-38.1" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-15.24" x2="91.44" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="91.44" y1="-15.24" x2="91.44" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="91.44" y1="-15.24" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<junction x="91.44" y="-15.24"/>
<pinref part="IC2" gate="G$1" pin="GND@1"/>
<wire x1="96.52" y1="-15.24" x2="106.68" y2="-15.24" width="0.1524" layer="91"/>
<junction x="96.52" y="-15.24"/>
<wire x1="106.68" y1="-15.24" x2="111.76" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-15.24" x2="106.68" y2="-17.78" width="0.1524" layer="91"/>
<junction x="106.68" y="-15.24"/>
<pinref part="IC2" gate="G$1" pin="GND@2"/>
<wire x1="106.68" y1="-17.78" x2="111.76" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="434.34" y1="-304.8" x2="429.26" y2="-304.8" width="0.1524" layer="91"/>
<junction x="429.26" y="-304.8"/>
<wire x1="-43.18" y1="-596.9" x2="-33.02" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="439.42" y1="-601.98" x2="444.5" y2="-601.98" width="0.1524" layer="91"/>
<junction x="439.42" y="-601.98"/>
<wire x1="281.94" y1="-601.98" x2="281.94" y2="-604.52" width="0.1524" layer="91"/>
<junction x="281.94" y="-601.98"/>
<wire x1="124.46" y1="-599.44" x2="124.46" y2="-601.98" width="0.1524" layer="91"/>
<junction x="124.46" y="-599.44"/>
<wire x1="-33.02" y1="-596.9" x2="-33.02" y2="-599.44" width="0.1524" layer="91"/>
<junction x="-33.02" y="-596.9"/>
<wire x1="-43.18" y1="-304.8" x2="-43.18" y2="-307.34" width="0.1524" layer="91"/>
<junction x="-43.18" y="-304.8"/>
<wire x1="114.3" y1="-304.8" x2="114.3" y2="-307.34" width="0.1524" layer="91"/>
<junction x="114.3" y="-304.8"/>
<wire x1="271.78" y1="-304.8" x2="271.78" y2="-307.34" width="0.1524" layer="91"/>
<junction x="271.78" y="-304.8"/>
<wire x1="421.64" y1="-15.24" x2="421.64" y2="-17.78" width="0.1524" layer="91"/>
<junction x="421.64" y="-15.24"/>
<wire x1="264.16" y1="-15.24" x2="264.16" y2="-17.78" width="0.1524" layer="91"/>
<junction x="264.16" y="-15.24"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<wire x1="101.6" y1="-5.08" x2="101.6" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-5.08" x2="96.52" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-5.08" x2="101.6" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-7.62" x2="96.52" y2="-5.08" width="0.1524" layer="91"/>
<junction x="96.52" y="-5.08"/>
<wire x1="88.9" y1="-5.08" x2="91.44" y2="-5.08" width="0.1524" layer="91"/>
<junction x="91.44" y="-5.08"/>
<pinref part="IC1" gate="G$1" pin="VCC"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-50.8" y1="-10.16" x2="-50.8" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-12.7" x2="-45.72" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-50.8" y="-12.7"/>
<wire x1="-50.8" y1="-12.7" x2="-55.88" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-5.08" x2="-55.88" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-5.08" x2="-60.96" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="-66.04" y="-5.08"/>
<pinref part="SV1" gate="G$1" pin="5"/>
<wire x1="-60.96" y1="-5.08" x2="-55.88" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-5.08" x2="-83.82" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-5.08" x2="-66.04" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-83.82" y="-5.08"/>
<wire x1="-83.82" y1="83.82" x2="-83.82" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="83.82" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<wire x1="88.9" y1="83.82" x2="246.38" y2="83.82" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-5.08" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<junction x="88.9" y="83.82"/>
<wire x1="246.38" y1="-5.08" x2="246.38" y2="83.82" width="0.1524" layer="91"/>
<junction x="246.38" y="83.82"/>
<wire x1="246.38" y1="83.82" x2="403.86" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-205.74" x2="96.52" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-205.74" x2="254" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="254" y1="-205.74" x2="411.48" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-497.84" x2="106.68" y2="-497.84" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-589.28" x2="106.68" y2="-497.84" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-591.82" x2="264.16" y2="-497.84" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-497.84" x2="264.16" y2="-497.84" width="0.1524" layer="91"/>
<junction x="106.68" y="-497.84"/>
<wire x1="421.64" y1="-591.82" x2="421.64" y2="-497.84" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-497.84" x2="421.64" y2="-497.84" width="0.1524" layer="91"/>
<junction x="264.16" y="-497.84"/>
<wire x1="421.64" y1="-497.84" x2="543.56" y2="-497.84" width="0.1524" layer="91"/>
<junction x="421.64" y="-497.84"/>
<wire x1="543.56" y1="-497.84" x2="543.56" y2="-487.68" width="0.1524" layer="91"/>
<wire x1="543.56" y1="-487.68" x2="551.18" y2="-487.68" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="551.18" y1="-487.68" x2="551.18" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-492.76" x2="589.28" y2="-492.76" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-5.08" x2="403.86" y2="83.82" width="0.1524" layer="91"/>
<junction x="403.86" y="83.82"/>
<wire x1="-60.96" y1="-294.64" x2="-60.96" y2="-205.74" width="0.1524" layer="91"/>
<junction x="-60.96" y="-205.74"/>
<wire x1="96.52" y1="-294.64" x2="96.52" y2="-205.74" width="0.1524" layer="91"/>
<junction x="96.52" y="-205.74"/>
<junction x="254" y="-205.74"/>
<wire x1="254" y1="-294.64" x2="254" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="411.48" y1="-294.64" x2="411.48" y2="-205.74" width="0.1524" layer="91"/>
<junction x="411.48" y="-205.74"/>
<wire x1="-50.8" y1="-586.74" x2="-50.8" y2="-497.84" width="0.1524" layer="91"/>
<junction x="-50.8" y="-497.84"/>
<wire x1="403.86" y1="83.82" x2="556.26" y2="83.82" width="0.1524" layer="91"/>
<wire x1="556.26" y1="83.82" x2="556.26" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-177.8" x2="-60.96" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="-177.8" x2="-60.96" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="411.48" y1="-205.74" x2="601.98" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="601.98" y1="-205.74" x2="601.98" y2="-467.36" width="0.1524" layer="91"/>
<wire x1="601.98" y1="-467.36" x2="-50.8" y2="-467.36" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-467.36" x2="-50.8" y2="-497.84" width="0.1524" layer="91"/>
<label x="-68.58" y="-5.08" size="1.778" layer="95"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-60.96" y1="-7.62" x2="-60.96" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-60.96" y="-5.08"/>
<pinref part="IC2" gate="G$1" pin="VCC"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="IC7" gate="G$1" pin="VCC"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="271.78" y1="-302.26" x2="266.7" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-294.64" x2="266.7" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-294.64" x2="261.62" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="261.62" y1="-294.64" x2="266.7" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="261.62" y1="-297.18" x2="261.62" y2="-294.64" width="0.1524" layer="91"/>
<junction x="261.62" y="-294.64"/>
<junction x="256.54" y="-294.64"/>
<wire x1="254" y1="-294.64" x2="256.54" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-294.64" x2="109.22" y2="-302.26" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="104.14" y1="-294.64" x2="109.22" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="104.14" y1="-297.18" x2="104.14" y2="-294.64" width="0.1524" layer="91"/>
<junction x="104.14" y="-294.64"/>
<wire x1="96.52" y1="-294.64" x2="99.06" y2="-294.64" width="0.1524" layer="91"/>
<junction x="99.06" y="-294.64"/>
<wire x1="99.06" y1="-294.64" x2="104.14" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="IC6" gate="G$1" pin="VCC"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="109.22" y1="-302.26" x2="114.3" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-302.26" x2="114.3" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-302.26" x2="-48.26" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-294.64" x2="-48.26" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-294.64" x2="-53.34" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="-53.34" y1="-294.64" x2="-48.26" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="-53.34" y1="-297.18" x2="-53.34" y2="-294.64" width="0.1524" layer="91"/>
<junction x="-53.34" y="-294.64"/>
<wire x1="-60.96" y1="-294.64" x2="-58.42" y2="-294.64" width="0.1524" layer="91"/>
<junction x="-58.42" y="-294.64"/>
<pinref part="IC5" gate="G$1" pin="VCC"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="-299.72" x2="-43.18" y2="-302.26" width="0.1524" layer="91"/>
<junction x="-43.18" y="-302.26"/>
<wire x1="271.78" y1="-299.72" x2="271.78" y2="-302.26" width="0.1524" layer="91"/>
<junction x="271.78" y="-302.26"/>
<junction x="114.3" y="-302.26"/>
<wire x1="424.18" y1="-294.64" x2="424.18" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="414.02" y1="-294.64" x2="419.1" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="419.1" y1="-294.64" x2="424.18" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="1"/>
<wire x1="419.1" y1="-297.18" x2="419.1" y2="-294.64" width="0.1524" layer="91"/>
<junction x="419.1" y="-294.64"/>
<wire x1="411.48" y1="-294.64" x2="414.02" y2="-294.64" width="0.1524" layer="91"/>
<junction x="414.02" y="-294.64"/>
<pinref part="IC8" gate="G$1" pin="VCC"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="429.26" y1="-299.72" x2="429.26" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="434.34" y1="-302.26" x2="429.26" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-594.36" x2="-38.1" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-586.74" x2="-38.1" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-586.74" x2="-43.18" y2="-586.74" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="-586.74" x2="-38.1" y2="-586.74" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="-589.28" x2="-43.18" y2="-586.74" width="0.1524" layer="91"/>
<junction x="-43.18" y="-586.74"/>
<wire x1="-50.8" y1="-586.74" x2="-48.26" y2="-586.74" width="0.1524" layer="91"/>
<junction x="-48.26" y="-586.74"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="-33.02" y1="-591.82" x2="-33.02" y2="-594.36" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-596.9" x2="119.38" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-589.28" x2="119.38" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-589.28" x2="114.3" y2="-589.28" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="1"/>
<wire x1="114.3" y1="-589.28" x2="119.38" y2="-589.28" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="1"/>
<wire x1="114.3" y1="-591.82" x2="114.3" y2="-589.28" width="0.1524" layer="91"/>
<junction x="114.3" y="-589.28"/>
<wire x1="106.68" y1="-589.28" x2="109.22" y2="-589.28" width="0.1524" layer="91"/>
<junction x="109.22" y="-589.28"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="124.46" y1="-594.36" x2="124.46" y2="-596.9" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-599.44" x2="276.86" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-591.82" x2="276.86" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="266.7" y1="-591.82" x2="271.78" y2="-591.82" width="0.1524" layer="91"/>
<pinref part="C21" gate="G$1" pin="1"/>
<wire x1="271.78" y1="-591.82" x2="276.86" y2="-591.82" width="0.1524" layer="91"/>
<pinref part="C22" gate="G$1" pin="1"/>
<wire x1="271.78" y1="-594.36" x2="271.78" y2="-591.82" width="0.1524" layer="91"/>
<junction x="271.78" y="-591.82"/>
<wire x1="264.16" y1="-591.82" x2="266.7" y2="-591.82" width="0.1524" layer="91"/>
<junction x="266.7" y="-591.82"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="281.94" y1="-596.9" x2="281.94" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="439.42" y1="-599.44" x2="434.34" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="434.34" y1="-591.82" x2="434.34" y2="-599.44" width="0.1524" layer="91"/>
<wire x1="424.18" y1="-591.82" x2="429.26" y2="-591.82" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="1"/>
<wire x1="429.26" y1="-591.82" x2="434.34" y2="-591.82" width="0.1524" layer="91"/>
<pinref part="C24" gate="G$1" pin="1"/>
<wire x1="429.26" y1="-594.36" x2="429.26" y2="-591.82" width="0.1524" layer="91"/>
<junction x="429.26" y="-591.82"/>
<wire x1="421.64" y1="-591.82" x2="424.18" y2="-591.82" width="0.1524" layer="91"/>
<junction x="424.18" y="-591.82"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="439.42" y1="-596.9" x2="439.42" y2="-599.44" width="0.1524" layer="91"/>
<pinref part="IC11" gate="G$1" pin="VCC"/>
<wire x1="281.94" y1="-599.44" x2="287.02" y2="-599.44" width="0.1524" layer="91"/>
<junction x="281.94" y="-599.44"/>
<pinref part="IC10" gate="G$1" pin="VCC"/>
<wire x1="124.46" y1="-596.9" x2="129.54" y2="-596.9" width="0.1524" layer="91"/>
<junction x="124.46" y="-596.9"/>
<pinref part="IC9" gate="G$1" pin="VCC"/>
<wire x1="-33.02" y1="-594.36" x2="-27.94" y2="-594.36" width="0.1524" layer="91"/>
<junction x="-33.02" y="-594.36"/>
<pinref part="IC12" gate="G$1" pin="VCC"/>
<wire x1="439.42" y1="-599.44" x2="444.5" y2="-599.44" width="0.1524" layer="91"/>
<junction x="439.42" y="-599.44"/>
<wire x1="-38.1" y1="-302.26" x2="-43.18" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-302.26" x2="114.3" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-302.26" x2="271.78" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="416.56" y1="-5.08" x2="416.56" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-5.08" x2="411.48" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="411.48" y1="-5.08" x2="416.56" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="411.48" y1="-7.62" x2="411.48" y2="-5.08" width="0.1524" layer="91"/>
<junction x="411.48" y="-5.08"/>
<wire x1="403.86" y1="-5.08" x2="406.4" y2="-5.08" width="0.1524" layer="91"/>
<junction x="406.4" y="-5.08"/>
<pinref part="IC4" gate="G$1" pin="VCC"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="421.64" y1="-10.16" x2="421.64" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="421.64" y1="-12.7" x2="426.72" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="421.64" y1="-12.7" x2="416.56" y2="-12.7" width="0.1524" layer="91"/>
<junction x="421.64" y="-12.7"/>
<wire x1="259.08" y1="-5.08" x2="259.08" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="248.92" y1="-5.08" x2="254" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="254" y1="-5.08" x2="259.08" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="254" y1="-7.62" x2="254" y2="-5.08" width="0.1524" layer="91"/>
<junction x="254" y="-5.08"/>
<wire x1="246.38" y1="-5.08" x2="248.92" y2="-5.08" width="0.1524" layer="91"/>
<junction x="248.92" y="-5.08"/>
<pinref part="IC3" gate="G$1" pin="VCC"/>
<wire x1="264.16" y1="-12.7" x2="269.24" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="264.16" y1="-10.16" x2="264.16" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-12.7" x2="259.08" y2="-12.7" width="0.1524" layer="91"/>
<junction x="264.16" y="-12.7"/>
<wire x1="106.68" y1="-12.7" x2="101.6" y2="-12.7" width="0.1524" layer="91"/>
<junction x="106.68" y="-12.7"/>
<wire x1="106.68" y1="-12.7" x2="111.76" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-12.7" x2="106.68" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="429.26" y1="-302.26" x2="424.18" y2="-302.26" width="0.1524" layer="91"/>
<junction x="429.26" y="-302.26"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="CLK"/>
<wire x1="-48.26" y1="20.32" x2="-45.72" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="LOAD"/>
<wire x1="-55.88" y1="15.24" x2="-45.72" y2="15.24" width="0.1524" layer="91"/>
<label x="-58.42" y="15.24" size="1.778" layer="95"/>
<pinref part="R15" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="CLK"/>
<wire x1="111.76" y1="20.32" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="LOAD"/>
<wire x1="111.76" y1="15.24" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="CLK"/>
<wire x1="269.24" y1="20.32" x2="266.7" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="LOAD"/>
<wire x1="269.24" y1="15.24" x2="266.7" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="CLK"/>
<wire x1="426.72" y1="20.32" x2="424.18" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="LOAD"/>
<wire x1="426.72" y1="15.24" x2="424.18" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="CLK"/>
<wire x1="-38.1" y1="-269.24" x2="-40.64" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="IC5" gate="G$1" pin="LOAD"/>
<wire x1="-38.1" y1="-274.32" x2="-40.64" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="CLK"/>
<wire x1="119.38" y1="-269.24" x2="116.84" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="R24" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="IC6" gate="G$1" pin="LOAD"/>
<wire x1="119.38" y1="-274.32" x2="116.84" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="CLK"/>
<wire x1="276.86" y1="-269.24" x2="274.32" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="R26" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="IC7" gate="G$1" pin="LOAD"/>
<wire x1="276.86" y1="-274.32" x2="274.32" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="CLK"/>
<wire x1="434.34" y1="-269.24" x2="431.8" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="R28" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="IC8" gate="G$1" pin="LOAD"/>
<wire x1="434.34" y1="-274.32" x2="431.8" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="R29" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="CLK"/>
<wire x1="-27.94" y1="-561.34" x2="-30.48" y2="-561.34" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$108" class="0">
<segment>
<pinref part="IC9" gate="G$1" pin="LOAD"/>
<wire x1="-27.94" y1="-566.42" x2="-30.48" y2="-566.42" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$110" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="CLK"/>
<wire x1="129.54" y1="-563.88" x2="127" y2="-563.88" width="0.1524" layer="91"/>
<pinref part="R32" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$111" class="0">
<segment>
<pinref part="IC10" gate="G$1" pin="LOAD"/>
<wire x1="129.54" y1="-568.96" x2="127" y2="-568.96" width="0.1524" layer="91"/>
<pinref part="R33" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$112" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="CLK"/>
<wire x1="287.02" y1="-566.42" x2="284.48" y2="-566.42" width="0.1524" layer="91"/>
<pinref part="R34" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$113" class="0">
<segment>
<pinref part="IC11" gate="G$1" pin="LOAD"/>
<wire x1="287.02" y1="-571.5" x2="284.48" y2="-571.5" width="0.1524" layer="91"/>
<pinref part="R35" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$114" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="CLK"/>
<wire x1="444.5" y1="-566.42" x2="441.96" y2="-566.42" width="0.1524" layer="91"/>
<pinref part="R36" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$132" class="0">
<segment>
<pinref part="IC12" gate="G$1" pin="LOAD"/>
<wire x1="444.5" y1="-571.5" x2="441.96" y2="-571.5" width="0.1524" layer="91"/>
<pinref part="R37" gate="G$1" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,-101.642,-8.60044,SV1,,,,,"/>
<approved hash="113,1,591.862,-496.28,SV2,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
