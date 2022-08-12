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
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-jack" urn="urn:adsk.eagle:library:154">
<description>&lt;b&gt;Jacks&lt;/b&gt;&lt;p&gt;
Power Connectors&lt;br&gt;
Phone Connectors&lt;br&gt;
Cinch Connectors&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SPC4078" urn="urn:adsk.eagle:footprint:7489/1" library_version="2">
<description>&lt;b&gt;DC POWER JACK 2.5mm&lt;/b&gt; Right Angle, Through Hole, Rated 5A at 16VDC, PC Terminals&lt;p&gt;
Source: www.spctechnology.com .. 84N1162.pdf&lt;br&gt;
Distributor: &lt;b&gt;Farnell (www.Farnell.de)&lt;/b&gt;&lt;br&gt;
Created by Robert Siegler</description>
<wire x1="-10.75" y1="-4.5" x2="-10.75" y2="-3.2" width="0.1" layer="21"/>
<wire x1="-10.75" y1="-3.2" x2="-10.75" y2="3.2" width="0.1" layer="21"/>
<wire x1="-10.75" y1="3.2" x2="-10.75" y2="4.5" width="0.1" layer="21"/>
<wire x1="-7.25" y1="-4.5" x2="-7.25" y2="4" width="0.1" layer="21"/>
<wire x1="-7.25" y1="4" x2="-7.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-7.25" y1="-4" x2="1.25" y2="-4" width="0.1" layer="51"/>
<wire x1="-7.25" y1="4" x2="1.25" y2="4" width="0.1" layer="21"/>
<wire x1="1.25" y1="-4" x2="1.25" y2="4" width="0.1" layer="51"/>
<wire x1="1.25" y1="-4.5" x2="1.25" y2="-4" width="0.1" layer="51"/>
<wire x1="1.25" y1="4" x2="1.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-10.75" y1="4.5" x2="1.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-10.75" y1="-4.5" x2="1.25" y2="-4.5" width="0.1" layer="51"/>
<wire x1="1.25" y1="-4" x2="2.75" y2="-4" width="0.1" layer="51"/>
<wire x1="2.75" y1="-4" x2="3.25" y2="-4" width="0.1" layer="51"/>
<wire x1="1.25" y1="4" x2="2.75" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="4" x2="3.25" y2="4" width="0.1" layer="21"/>
<wire x1="3.25" y1="-4" x2="3.25" y2="4" width="0.1" layer="51"/>
<wire x1="2.75" y1="-4" x2="2.75" y2="4" width="0.1" layer="51"/>
<wire x1="-10.75" y1="3.2" x2="-1.75" y2="3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-10.75" y1="-3.2" x2="-1.75" y2="-3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="-3.2" x2="-1.75" y2="-1.25" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="-1.25" x2="-1.75" y2="1.25" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="1.25" x2="-1.75" y2="3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-8.75" y1="1.25" x2="-1.75" y2="1.25" width="0.1" layer="51" style="shortdash"/>
<wire x1="-8.75" y1="-1.25" x2="-1.75" y2="-1.25" width="0.1" layer="51" style="shortdash"/>
<wire x1="-8.75" y1="1.25" x2="-8.75" y2="-1.25" width="0.1" layer="21" curve="180"/>
<wire x1="2.5" y1="1.75" x2="3.5" y2="1.75" width="0" layer="46"/>
<wire x1="3.5" y1="1.75" x2="3.5" y2="-1.75" width="0" layer="46"/>
<wire x1="3.5" y1="-1.75" x2="2.5" y2="-1.75" width="0" layer="46"/>
<wire x1="2.5" y1="-1.75" x2="2.5" y2="1.75" width="0" layer="46"/>
<wire x1="-3.4" y1="1.5" x2="-2.6" y2="1.5" width="0" layer="46"/>
<wire x1="-2.6" y1="1.5" x2="-2.6" y2="-1.5" width="0" layer="46"/>
<wire x1="-2.6" y1="-1.5" x2="-3.4" y2="-1.5" width="0" layer="46"/>
<wire x1="-3.4" y1="-1.5" x2="-3.4" y2="1.5" width="0" layer="46"/>
<wire x1="-1.5" y1="-4.4" x2="1.5" y2="-4.4" width="0" layer="46"/>
<wire x1="1.5" y1="-4.4" x2="1.5" y2="-5.2" width="0" layer="46"/>
<wire x1="1.5" y1="-5.2" x2="-1.5" y2="-5.2" width="0" layer="46"/>
<wire x1="-1.5" y1="-5.2" x2="-1.5" y2="-4.4" width="0" layer="46"/>
<wire x1="2.75" y1="2.35" x2="2.75" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="-4" x2="2.75" y2="-2.35" width="0.1" layer="21"/>
<wire x1="3.25" y1="-4" x2="3.25" y2="-2.35" width="0.1" layer="21"/>
<wire x1="3.25" y1="2.35" x2="3.25" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="-4" x2="3.25" y2="-4" width="0.1" layer="21"/>
<wire x1="-10.75" y1="-4.5" x2="-2.56" y2="-4.5" width="0.1" layer="21"/>
<wire x1="1.25" y1="-2.73" x2="1.25" y2="4" width="0.1" layer="21"/>
<pad name="2" x="0" y="-4.8" drill="0.8" diameter="2.1844" shape="long"/>
<pad name="1" x="-3" y="0" drill="0.8" diameter="2.1844" shape="long" rot="R90"/>
<pad name="3" x="3" y="0" drill="1" diameter="2.1844" shape="long" rot="R90"/>
<text x="-10.16" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<text x="-10.16" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<rectangle x1="-1.25" y1="-5.05" x2="1.25" y2="-4.55" layer="51"/>
<rectangle x1="2.75" y1="-1.5" x2="3.25" y2="1.5" layer="51"/>
<rectangle x1="-3.1" y1="-1.25" x2="-2.9" y2="1.25" layer="51"/>
</package>
<package name="SPC4077" urn="urn:adsk.eagle:footprint:7488/1" library_version="2">
<description>&lt;b&gt;DC POWER JACK 2mm&lt;/b&gt;&lt;br&gt; Right Angle, Through Hole, Rated 5A at 16VDC, PC Terminals&lt;p&gt;
Source: www.spctechnology.com .. 84N1161.pdf&lt;br&gt;
Distributor: &lt;b&gt;Farnell (www.Farnell.de)&lt;/b&gt;&lt;br&gt;
Created by Robert Siegler</description>
<wire x1="-10.75" y1="-4.5" x2="-10.75" y2="-3.2" width="0.1" layer="21"/>
<wire x1="-10.75" y1="-3.2" x2="-10.75" y2="3.2" width="0.1" layer="21"/>
<wire x1="-10.75" y1="3.2" x2="-10.75" y2="4.5" width="0.1" layer="21"/>
<wire x1="-7.25" y1="-4.5" x2="-7.25" y2="4" width="0.1" layer="21"/>
<wire x1="-7.25" y1="4" x2="-7.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-7.25" y1="-4" x2="1.25" y2="-4" width="0.1" layer="51"/>
<wire x1="-7.25" y1="4" x2="1.25" y2="4" width="0.1" layer="21"/>
<wire x1="1.25" y1="-4" x2="1.25" y2="4" width="0.1" layer="51"/>
<wire x1="1.25" y1="-4.5" x2="1.25" y2="-4" width="0.1" layer="51"/>
<wire x1="1.25" y1="4" x2="1.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-10.75" y1="4.5" x2="1.25" y2="4.5" width="0.1" layer="21"/>
<wire x1="-10.75" y1="-4.5" x2="1.25" y2="-4.5" width="0.1" layer="51"/>
<wire x1="1.25" y1="-4" x2="2.75" y2="-4" width="0.1" layer="51"/>
<wire x1="2.75" y1="-4" x2="3.25" y2="-4" width="0.1" layer="51"/>
<wire x1="1.25" y1="4" x2="2.75" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="4" x2="3.25" y2="4" width="0.1" layer="21"/>
<wire x1="3.25" y1="-4" x2="3.25" y2="4" width="0.1" layer="51"/>
<wire x1="2.75" y1="-4" x2="2.75" y2="4" width="0.1" layer="51"/>
<wire x1="-10.75" y1="3.2" x2="-1.75" y2="3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-10.75" y1="-3.2" x2="-1.75" y2="-3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="-3.2" x2="-1.75" y2="-1" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="-1" x2="-1.75" y2="1" width="0.1" layer="21" style="shortdash"/>
<wire x1="-1.75" y1="1" x2="-1.75" y2="3.2" width="0.1" layer="21" style="shortdash"/>
<wire x1="-8.75" y1="-1" x2="-1.75" y2="-1" width="0.1" layer="51" style="shortdash"/>
<wire x1="-8.75" y1="1" x2="-1.75" y2="1" width="0.1" layer="51" style="shortdash"/>
<wire x1="-8.75" y1="-1" x2="-8.75" y2="1" width="0.1" layer="21" curve="-180"/>
<wire x1="2.5" y1="1.75" x2="3.5" y2="1.75" width="0" layer="46"/>
<wire x1="3.5" y1="1.75" x2="3.5" y2="-1.75" width="0" layer="46"/>
<wire x1="3.5" y1="-1.75" x2="2.5" y2="-1.75" width="0" layer="46"/>
<wire x1="2.5" y1="-1.75" x2="2.5" y2="1.75" width="0" layer="46"/>
<wire x1="-3.4" y1="1.5" x2="-2.6" y2="1.5" width="0" layer="46"/>
<wire x1="-2.6" y1="1.5" x2="-2.6" y2="-1.5" width="0" layer="46"/>
<wire x1="-2.6" y1="-1.5" x2="-3.4" y2="-1.5" width="0" layer="46"/>
<wire x1="-3.4" y1="-1.5" x2="-3.4" y2="1.5" width="0" layer="46"/>
<wire x1="-1.5" y1="-4.4" x2="1.5" y2="-4.4" width="0" layer="46"/>
<wire x1="1.5" y1="-4.4" x2="1.5" y2="-5.2" width="0" layer="46"/>
<wire x1="1.5" y1="-5.2" x2="-1.5" y2="-5.2" width="0" layer="46"/>
<wire x1="-1.5" y1="-5.2" x2="-1.5" y2="-4.4" width="0" layer="46"/>
<wire x1="-10.75" y1="-4.5" x2="-2.56" y2="-4.5" width="0.1" layer="21"/>
<wire x1="2.75" y1="-4" x2="3.25" y2="-4" width="0.1" layer="21"/>
<wire x1="3.25" y1="-4" x2="3.25" y2="-2.35" width="0.1" layer="21"/>
<wire x1="3.25" y1="2.35" x2="3.25" y2="4" width="0.1" layer="21"/>
<wire x1="1.25" y1="-2.73" x2="1.25" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="2.35" x2="2.75" y2="4" width="0.1" layer="21"/>
<wire x1="2.75" y1="-4" x2="2.75" y2="-2.35" width="0.1" layer="21"/>
<pad name="2" x="0" y="-4.8" drill="0.8" diameter="2.1844" shape="long"/>
<pad name="1" x="-3" y="0" drill="0.8" diameter="2.1844" shape="long" rot="R90"/>
<pad name="3" x="3" y="0" drill="1" diameter="2.1844" shape="long" rot="R90"/>
<text x="-10.16" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-10.16" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.25" y1="-5.05" x2="1.25" y2="-4.55" layer="51"/>
<rectangle x1="2.75" y1="-1.5" x2="3.25" y2="1.5" layer="51"/>
<rectangle x1="-3.1" y1="-1.25" x2="-2.9" y2="1.25" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="SPC4078" urn="urn:adsk.eagle:package:7494/1" type="box" library_version="2">
<description>DC POWER JACK 2.5mm Right Angle, Through Hole, Rated 5A at 16VDC, PC Terminals
Source: www.spctechnology.com .. 84N1162.pdf
Distributor: Farnell (www.Farnell.de)
Created by Robert Siegler</description>
<packageinstances>
<packageinstance name="SPC4078"/>
</packageinstances>
</package3d>
<package3d name="SPC4077" urn="urn:adsk.eagle:package:7492/1" type="box" library_version="2">
<description>DC POWER JACK 2mm Right Angle, Through Hole, Rated 5A at 16VDC, PC Terminals
Source: www.spctechnology.com .. 84N1161.pdf
Distributor: Farnell (www.Farnell.de)
Created by Robert Siegler</description>
<packageinstances>
<packageinstance name="SPC4077"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="JACK-PLUG" urn="urn:adsk.eagle:symbol:7487/1" library_version="2">
<wire x1="-5.715" y1="1.27" x2="-5.715" y2="3.81" width="0.1524" layer="94" curve="-180"/>
<wire x1="-5.715" y1="3.81" x2="-1.27" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="4.445" width="0.1524" layer="94"/>
<wire x1="0" y1="4.445" x2="-1.27" y2="4.445" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="-2.54" x2="-6.35" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-6.35" y1="-1.27" x2="-6.985" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<text x="-7.62" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="1" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="0" y="-2.54"/>
<vertex x="-0.508" y="-1.27"/>
<vertex x="0.508" y="-1.27"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="JACK-PLUG" urn="urn:adsk.eagle:component:7496/2" prefix="J" uservalue="yes" library_version="2">
<description>&lt;b&gt;DC POWER JACK&lt;/b&gt;&lt;br&gt;
Power Jack, DC, Right Angle, Through Hole, Rated 5A at 16VDC, PC Terminals&lt;p&gt;
Distributor: &lt;b&gt;Farnell (www.Farnell.de)&lt;/b&gt;&lt;br&gt;
Drawing: &lt;b&gt;84N1161.pdf / 84N1162.pdf&lt;/b&gt;&lt;br&gt;
Manufacturer: &lt;b&gt;SPC Technology (www.spctechnology.com)&lt;/b&gt;&lt;br&gt;
Type: &lt;b&gt;SPC4077 / SPC 4078&lt;/b&gt;&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="JACK-PLUG" x="0" y="0"/>
</gates>
<devices>
<device name="1" package="SPC4078">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7494/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
<device name="0" package="SPC4077">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
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
<package name="FE08-2" urn="urn:adsk.eagle:footprint:8101/1" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-10.16" y1="-2.413" x2="-10.16" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.413" x2="-9.525" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-10.16" y1="-2.413" x2="-9.525" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.525" y1="3.048" x2="9.525" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-2.413" x2="10.16" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-3.048" x2="9.525" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.048" x2="10.16" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.525" y1="-3.048" x2="10.16" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<circle x="-8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="13" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="14" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="15" x="8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="16" x="8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.271" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="8.001" y="-4.699" size="1.27" layer="21" ratio="10">16</text>
<text x="-10.16" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="FE08-2" urn="urn:adsk.eagle:package:8174/1" type="box" library_version="2">
<description>FEMALE HEADER</description>
<packageinstances>
<packageinstance name="FE08-2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="FE08-2" urn="urn:adsk.eagle:symbol:8100/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-8.255" x2="-1.905" y2="-6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="9.525" x2="-1.905" y2="10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-3.81" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE08-2" urn="urn:adsk.eagle:component:8214/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE08-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE08-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8174/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X05" urn="urn:adsk.eagle:footprint:22354/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-6.4262" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.35" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
</package>
<package name="1X05/90" urn="urn:adsk.eagle:footprint:22355/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-6.985" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="8.255" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
</package>
<package name="1_05X2MM" urn="urn:adsk.eagle:footprint:22356/1" library_version="4">
<description>CON-M-1X5-200</description>
<text x="-4.5" y="1.5" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.75" y="-2.75" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5" y1="0.5" x2="-4.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="1" x2="-3.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-3.5" y1="1" x2="-3" y2="0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="-0.5" x2="-3.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-3.5" y1="-1" x2="-4.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-1" x2="-5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-5" y1="0.5" x2="-5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="0.5" x2="-2.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="1" x2="-1.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="1" x2="-1" y2="0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="-0.5" x2="-1.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-1" x2="-2.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-2.5" y1="-1" x2="-3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-3" y1="0.5" x2="-3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.5" x2="-0.5" y2="1" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="1" x2="0.5" y2="1" width="0.1524" layer="21"/>
<wire x1="0.5" y1="1" x2="1" y2="0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="-0.5" x2="0.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="0.5" y1="-1" x2="-0.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="-1" x2="-1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="0.5" x2="1.5" y2="1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="1" x2="2.5" y2="1" width="0.1524" layer="21"/>
<wire x1="2.5" y1="1" x2="3" y2="0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="-0.5" x2="2.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="2.5" y1="-1" x2="1.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="1.5" y1="-1" x2="1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="1" y1="0.5" x2="1" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="0.5" x2="3.5" y2="1" width="0.1524" layer="21"/>
<wire x1="3.5" y1="1" x2="4.5" y2="1" width="0.1524" layer="21"/>
<wire x1="4.5" y1="1" x2="5" y2="0.5" width="0.1524" layer="21"/>
<wire x1="5" y1="0.5" x2="5" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="5" y1="-0.5" x2="4.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-1" x2="3.5" y2="-1" width="0.1524" layer="21"/>
<wire x1="3.5" y1="-1" x2="3" y2="-0.5" width="0.1524" layer="21"/>
<wire x1="3" y1="0.5" x2="3" y2="-0.5" width="0.1524" layer="21"/>
<pad name="1" x="-4" y="0" drill="1.016" diameter="1.3" shape="square" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="2" x="-2" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="4" x="2" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<pad name="5" x="4" y="0" drill="1.016" diameter="1.3" rot="R90"/>
<rectangle x1="-4.254" y1="-0.254" x2="-3.746" y2="0.254" layer="51"/>
<rectangle x1="-2.254" y1="-0.254" x2="-1.746" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="1.746" y1="-0.254" x2="2.254" y2="0.254" layer="51"/>
<rectangle x1="3.746" y1="-0.254" x2="4.254" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="1X05" urn="urn:adsk.eagle:package:22469/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X05"/>
</packageinstances>
</package3d>
<package3d name="1X05/90" urn="urn:adsk.eagle:package:22467/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X05/90"/>
</packageinstances>
</package3d>
<package3d name="1_05X2MM" urn="urn:adsk.eagle:package:22466/2" type="model" library_version="4">
<description>CON-M-1X5-200</description>
<packageinstances>
<packageinstance name="1_05X2MM"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD5" urn="urn:adsk.eagle:symbol:22353/1" library_version="4">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X5" urn="urn:adsk.eagle:component:22529/5" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X05">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22469/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="69" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X05/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22467/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="9" constant="no"/>
</technology>
</technologies>
</device>
<device name="5X2MM" package="1_05X2MM">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22466/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
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
<class number="0" name="default" width="0.4064" drill="0">
<clearance class="0" value="0.254"/>
</class>
<class number="1" name="signals" width="0.4064" drill="0">
<clearance class="1" value="0.254"/>
</class>
<class number="2" name="VCC" width="2.54" drill="0">
<clearance class="2" value="0.254"/>
</class>
</classes>
<parts>
<part name="J1" library="con-jack" library_urn="urn:adsk.eagle:library:154" deviceset="JACK-PLUG" device="1" package3d_urn="urn:adsk.eagle:package:7494/1"/>
<part name="RASPI_INPUT" library="con-lsta" library_urn="urn:adsk.eagle:library:161" deviceset="FE08-2" device="" package3d_urn="urn:adsk.eagle:package:8174/1"/>
<part name="BOARD_0" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_3" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_4" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_5" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_6" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_7" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_8" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_11" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_9" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
<part name="BOARD_10" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X5" device="" package3d_urn="urn:adsk.eagle:package:22469/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J1" gate="G$1" x="12.7" y="78.74" smashed="yes">
<attribute name="VALUE" x="5.08" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="RASPI_INPUT" gate="G$1" x="71.12" y="66.04" smashed="yes">
<attribute name="VALUE" x="67.31" y="53.34" size="1.778" layer="96"/>
<attribute name="NAME" x="67.31" y="79.502" size="1.778" layer="95"/>
</instance>
<instance part="BOARD_0" gate="A" x="15.24" y="30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="22.225" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_1" gate="A" x="15.24" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="1.905" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="20.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_2" gate="A" x="15.24" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="-18.415" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="0" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_3" gate="A" x="15.24" y="-30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="-38.735" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="-20.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_4" gate="A" x="15.24" y="-50.8" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="-59.055" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="-40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_5" gate="A" x="15.24" y="-71.12" smashed="yes" rot="R180">
<attribute name="NAME" x="21.59" y="-79.375" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="21.59" y="-60.96" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="BOARD_6" gate="A" x="60.96" y="30.48" smashed="yes">
<attribute name="NAME" x="54.61" y="38.735" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="BOARD_7" gate="A" x="60.96" y="10.16" smashed="yes">
<attribute name="NAME" x="54.61" y="18.415" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="0" size="1.778" layer="96"/>
</instance>
<instance part="BOARD_8" gate="A" x="60.96" y="-10.16" smashed="yes">
<attribute name="NAME" x="54.61" y="-1.905" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="BOARD_11" gate="A" x="60.96" y="-71.12" smashed="yes">
<attribute name="NAME" x="54.61" y="-62.865" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="-81.28" size="1.778" layer="96"/>
</instance>
<instance part="BOARD_9" gate="A" x="60.96" y="-30.48" smashed="yes">
<attribute name="NAME" x="54.61" y="-22.225" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="-40.64" size="1.778" layer="96"/>
</instance>
<instance part="BOARD_10" gate="A" x="60.96" y="-50.8" smashed="yes">
<attribute name="NAME" x="54.61" y="-42.545" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="-60.96" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="CS_0" class="1">
<segment>
<pinref part="BOARD_0" gate="A" pin="5"/>
<wire x1="17.78" y1="35.56" x2="12.7" y2="35.56" width="0.1524" layer="91"/>
<wire x1="12.7" y1="35.56" x2="12.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="12.7" y1="55.88" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="111.76" y1="55.88" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="8"/>
<wire x1="111.76" y1="66.04" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<label x="12.7" y="38.1" size="1.778" layer="95" rot="R90"/>
<label x="81.28" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="CS_1" class="1">
<segment>
<wire x1="10.16" y1="66.04" x2="10.16" y2="15.24" width="0.1524" layer="91"/>
<pinref part="BOARD_1" gate="A" pin="5"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="12.7" width="0.1524" layer="91"/>
<wire x1="17.78" y1="15.24" x2="10.16" y2="15.24" width="0.1524" layer="91"/>
<junction x="10.16" y="15.24"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="7"/>
<wire x1="63.5" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<label x="55.88" y="66.04" size="1.778" layer="95"/>
<wire x1="50.8" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
<wire x1="10.16" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_2" class="1">
<segment>
<wire x1="7.62" y1="58.42" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
<pinref part="BOARD_2" gate="A" pin="5"/>
<wire x1="7.62" y1="53.34" x2="7.62" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="91"/>
<junction x="7.62" y="-5.08"/>
<wire x1="7.62" y1="53.34" x2="106.68" y2="53.34" width="0.1524" layer="91"/>
<junction x="7.62" y="53.34"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="10"/>
<label x="86.36" y="68.58" size="1.778" layer="95" align="bottom-right"/>
<wire x1="106.68" y1="53.34" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="78.74" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_8" class="1">
<segment>
<wire x1="96.52" y1="60.96" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="BOARD_8" gate="A" pin="5"/>
<wire x1="58.42" y1="-15.24" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="4"/>
<wire x1="96.52" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_4" class="1">
<segment>
<pinref part="BOARD_4" gate="A" pin="5"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-45.72" x2="2.54" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-45.72" x2="2.54" y2="-45.72" width="0.1524" layer="91"/>
<junction x="2.54" y="-45.72"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="12"/>
<wire x1="78.74" y1="71.12" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="101.6" y2="45.72" width="0.1524" layer="91"/>
<wire x1="101.6" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<label x="2.54" y="30.48" size="1.778" layer="95" rot="R90"/>
<label x="81.28" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="13"/>
<label x="55.88" y="73.66" size="1.778" layer="95"/>
<pinref part="J1" gate="G$1" pin="1"/>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="17.78" y1="78.74" x2="17.78" y2="76.2" width="0.1524" layer="91"/>
<junction x="17.78" y="78.74"/>
<wire x1="33.02" y1="78.74" x2="17.78" y2="78.74" width="0.1524" layer="91"/>
<wire x1="48.26" y1="50.8" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<wire x1="48.26" y1="35.56" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
<wire x1="48.26" y1="33.02" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="48.26" y1="12.7" x2="48.26" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-7.62" x2="48.26" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-27.94" x2="48.26" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-48.26" x2="48.26" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="48.26" y1="35.56" x2="25.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="25.4" y1="35.56" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<wire x1="25.4" y1="27.94" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<wire x1="25.4" y1="7.62" x2="25.4" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-33.02" x2="25.4" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-53.34" x2="25.4" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="91.44" y1="50.8" x2="48.26" y2="50.8" width="0.1524" layer="91"/>
<wire x1="48.26" y1="50.8" x2="33.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="33.02" y1="50.8" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<junction x="48.26" y="50.8"/>
<junction x="48.26" y="35.56"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="14"/>
<wire x1="33.02" y1="73.66" x2="33.02" y2="78.74" width="0.1524" layer="91"/>
<wire x1="78.74" y1="73.66" x2="91.44" y2="73.66" width="0.1524" layer="91"/>
<label x="86.36" y="73.66" size="1.778" layer="95" align="bottom-right"/>
<wire x1="91.44" y1="50.8" x2="91.44" y2="73.66" width="0.1524" layer="91"/>
<wire x1="63.5" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<junction x="33.02" y="73.66"/>
<pinref part="BOARD_0" gate="A" pin="2"/>
<wire x1="17.78" y1="27.94" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<junction x="25.4" y="27.94"/>
<pinref part="BOARD_1" gate="A" pin="2"/>
<wire x1="17.78" y1="7.62" x2="25.4" y2="7.62" width="0.1524" layer="91"/>
<junction x="25.4" y="7.62"/>
<pinref part="BOARD_2" gate="A" pin="2"/>
<wire x1="17.78" y1="-12.7" x2="25.4" y2="-12.7" width="0.1524" layer="91"/>
<junction x="25.4" y="-12.7"/>
<pinref part="BOARD_3" gate="A" pin="2"/>
<wire x1="17.78" y1="-33.02" x2="25.4" y2="-33.02" width="0.1524" layer="91"/>
<junction x="25.4" y="-33.02"/>
<pinref part="BOARD_4" gate="A" pin="2"/>
<wire x1="17.78" y1="-53.34" x2="25.4" y2="-53.34" width="0.1524" layer="91"/>
<junction x="25.4" y="-53.34"/>
<pinref part="BOARD_5" gate="A" pin="2"/>
<wire x1="17.78" y1="-73.66" x2="25.4" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="BOARD_11" gate="A" pin="2"/>
<wire x1="58.42" y1="-68.58" x2="48.26" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="BOARD_10" gate="A" pin="2"/>
<wire x1="58.42" y1="-48.26" x2="48.26" y2="-48.26" width="0.1524" layer="91"/>
<junction x="48.26" y="-48.26"/>
<pinref part="BOARD_9" gate="A" pin="2"/>
<wire x1="58.42" y1="-27.94" x2="48.26" y2="-27.94" width="0.1524" layer="91"/>
<junction x="48.26" y="-27.94"/>
<pinref part="BOARD_8" gate="A" pin="2"/>
<wire x1="58.42" y1="-7.62" x2="48.26" y2="-7.62" width="0.1524" layer="91"/>
<junction x="48.26" y="-7.62"/>
<pinref part="BOARD_7" gate="A" pin="2"/>
<wire x1="58.42" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<junction x="48.26" y="12.7"/>
<pinref part="BOARD_6" gate="A" pin="2"/>
<wire x1="58.42" y1="33.02" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
<junction x="48.26" y="33.02"/>
</segment>
</net>
<net name="CS_5" class="1">
<segment>
<wire x1="0" y1="71.12" x2="0" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="BOARD_5" gate="A" pin="5"/>
<wire x1="0" y1="-66.04" x2="0" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-66.04" x2="0" y2="-66.04" width="0.1524" layer="91"/>
<junction x="0" y="-66.04"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="11"/>
<label x="55.88" y="71.12" size="1.778" layer="95"/>
<wire x1="63.5" y1="71.12" x2="0" y2="71.12" width="0.1524" layer="91"/>
<label x="0" y="22.86" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="CS_6" class="1">
<segment>
<pinref part="BOARD_6" gate="A" pin="5"/>
<wire x1="58.42" y1="25.4" x2="88.9" y2="25.4" width="0.1524" layer="91"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="6"/>
<wire x1="88.9" y1="25.4" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
<label x="81.28" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="CS_7" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="5"/>
<wire x1="63.5" y1="63.5" x2="45.72" y2="63.5" width="0.1524" layer="91"/>
<label x="55.88" y="63.5" size="1.778" layer="95"/>
<wire x1="45.72" y1="63.5" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
<wire x1="45.72" y1="43.18" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<pinref part="BOARD_7" gate="A" pin="5"/>
<wire x1="86.36" y1="43.18" x2="86.36" y2="5.08" width="0.1524" layer="91"/>
<wire x1="86.36" y1="5.08" x2="58.42" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="1">
<segment>
<wire x1="93.98" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<wire x1="43.18" y1="48.26" x2="43.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="45.72" y2="33.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<junction x="43.18" y="33.02"/>
<wire x1="30.48" y1="33.02" x2="30.48" y2="12.7" width="0.1524" layer="91"/>
<wire x1="30.48" y1="12.7" x2="30.48" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-7.62" x2="30.48" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-27.94" x2="30.48" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-48.26" x2="30.48" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="45.72" y1="33.02" x2="45.72" y2="27.94" width="0.1524" layer="91"/>
<pinref part="BOARD_5" gate="A" pin="4"/>
<wire x1="45.72" y1="27.94" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<wire x1="45.72" y1="7.62" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-12.7" x2="45.72" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-33.02" x2="45.72" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-53.34" x2="45.72" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-68.58" x2="30.48" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="BOARD_4" gate="A" pin="4"/>
<wire x1="17.78" y1="-48.26" x2="30.48" y2="-48.26" width="0.1524" layer="91"/>
<junction x="30.48" y="-48.26"/>
<pinref part="BOARD_3" gate="A" pin="4"/>
<wire x1="17.78" y1="-27.94" x2="30.48" y2="-27.94" width="0.1524" layer="91"/>
<junction x="30.48" y="-27.94"/>
<pinref part="BOARD_2" gate="A" pin="4"/>
<wire x1="17.78" y1="-7.62" x2="30.48" y2="-7.62" width="0.1524" layer="91"/>
<junction x="30.48" y="-7.62"/>
<pinref part="BOARD_1" gate="A" pin="4"/>
<wire x1="17.78" y1="12.7" x2="30.48" y2="12.7" width="0.1524" layer="91"/>
<junction x="30.48" y="12.7"/>
<pinref part="BOARD_0" gate="A" pin="4"/>
<wire x1="17.78" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<junction x="30.48" y="33.02"/>
<pinref part="BOARD_6" gate="A" pin="4"/>
<wire x1="58.42" y1="27.94" x2="45.72" y2="27.94" width="0.1524" layer="91"/>
<junction x="45.72" y="27.94"/>
<pinref part="BOARD_7" gate="A" pin="4"/>
<wire x1="58.42" y1="7.62" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<junction x="45.72" y="7.62"/>
<pinref part="BOARD_8" gate="A" pin="4"/>
<wire x1="58.42" y1="-12.7" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<junction x="45.72" y="-12.7"/>
<pinref part="BOARD_9" gate="A" pin="4"/>
<wire x1="58.42" y1="-33.02" x2="45.72" y2="-33.02" width="0.1524" layer="91"/>
<junction x="45.72" y="-33.02"/>
<pinref part="BOARD_10" gate="A" pin="4"/>
<wire x1="58.42" y1="-53.34" x2="45.72" y2="-53.34" width="0.1524" layer="91"/>
<junction x="45.72" y="-53.34"/>
<pinref part="BOARD_11" gate="A" pin="4"/>
<wire x1="58.42" y1="-73.66" x2="45.72" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="RASPI_INPUT" gate="G$1" pin="16"/>
<wire x1="93.98" y1="48.26" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="76.2" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<label x="86.36" y="78.74" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="VCC" class="2">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="17.78" y1="81.28" x2="25.4" y2="81.28" width="0.1524" layer="91"/>
<wire x1="25.4" y1="81.28" x2="25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<pinref part="BOARD_0" gate="A" pin="1"/>
<wire x1="27.94" y1="25.4" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<pinref part="BOARD_1" gate="A" pin="1"/>
<wire x1="27.94" y1="25.4" x2="27.94" y2="5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="5.08" x2="17.78" y2="5.08" width="0.1524" layer="91"/>
<junction x="27.94" y="25.4"/>
<pinref part="BOARD_2" gate="A" pin="1"/>
<wire x1="27.94" y1="5.08" x2="27.94" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-15.24" x2="17.78" y2="-15.24" width="0.1524" layer="91"/>
<junction x="27.94" y="5.08"/>
<pinref part="BOARD_3" gate="A" pin="1"/>
<wire x1="27.94" y1="-15.24" x2="27.94" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-35.56" x2="17.78" y2="-35.56" width="0.1524" layer="91"/>
<junction x="27.94" y="-15.24"/>
<pinref part="BOARD_4" gate="A" pin="1"/>
<wire x1="27.94" y1="-35.56" x2="27.94" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-55.88" x2="17.78" y2="-55.88" width="0.1524" layer="91"/>
<junction x="27.94" y="-35.56"/>
<pinref part="BOARD_5" gate="A" pin="1"/>
<wire x1="27.94" y1="-55.88" x2="27.94" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-76.2" x2="17.78" y2="-76.2" width="0.1524" layer="91"/>
<junction x="27.94" y="-55.88"/>
<wire x1="27.94" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="40.64" x2="50.8" y2="35.56" width="0.1524" layer="91"/>
<pinref part="BOARD_6" gate="A" pin="1"/>
<wire x1="50.8" y1="35.56" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<pinref part="BOARD_7" gate="A" pin="1"/>
<wire x1="50.8" y1="35.56" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="15.24" x2="58.42" y2="15.24" width="0.1524" layer="91"/>
<junction x="50.8" y="35.56"/>
<pinref part="BOARD_8" gate="A" pin="1"/>
<wire x1="50.8" y1="15.24" x2="50.8" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-5.08" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
<junction x="50.8" y="15.24"/>
<pinref part="BOARD_9" gate="A" pin="1"/>
<wire x1="50.8" y1="-5.08" x2="50.8" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-25.4" x2="58.42" y2="-25.4" width="0.1524" layer="91"/>
<junction x="50.8" y="-5.08"/>
<pinref part="BOARD_10" gate="A" pin="1"/>
<wire x1="50.8" y1="-25.4" x2="50.8" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-45.72" x2="58.42" y2="-45.72" width="0.1524" layer="91"/>
<junction x="50.8" y="-25.4"/>
<pinref part="BOARD_11" gate="A" pin="1"/>
<wire x1="50.8" y1="-45.72" x2="50.8" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-66.04" x2="58.42" y2="-66.04" width="0.1524" layer="91"/>
<junction x="50.8" y="-45.72"/>
<wire x1="27.94" y1="40.64" x2="25.4" y2="40.64" width="0.1524" layer="91"/>
<junction x="27.94" y="40.64"/>
</segment>
</net>
<net name="CS_3" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="9"/>
<wire x1="63.5" y1="68.58" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<label x="55.88" y="68.58" size="1.778" layer="95"/>
<wire x1="5.08" y1="68.58" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="BOARD_3" gate="A" pin="5"/>
<wire x1="5.08" y1="-25.4" x2="5.08" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-25.4" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
<junction x="5.08" y="-25.4"/>
<wire x1="45.72" y1="68.58" x2="5.08" y2="68.58" width="0.1524" layer="91"/>
<label x="5.08" y="22.86" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="CS_9" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="3"/>
<wire x1="63.5" y1="60.96" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<label x="55.88" y="60.96" size="1.778" layer="95"/>
<wire x1="53.34" y1="60.96" x2="53.34" y2="40.64" width="0.1524" layer="91"/>
<wire x1="53.34" y1="40.64" x2="83.82" y2="40.64" width="0.1524" layer="91"/>
<pinref part="BOARD_9" gate="A" pin="5"/>
<wire x1="83.82" y1="40.64" x2="83.82" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-35.56" x2="58.42" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_11" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="1"/>
<wire x1="63.5" y1="58.42" x2="55.88" y2="58.42" width="0.1524" layer="91"/>
<label x="55.88" y="58.42" size="1.778" layer="95"/>
<pinref part="BOARD_11" gate="A" pin="5"/>
<wire x1="58.42" y1="-76.2" x2="78.74" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-76.2" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
<wire x1="78.74" y1="38.1" x2="55.88" y2="38.1" width="0.1524" layer="91"/>
<wire x1="55.88" y1="38.1" x2="55.88" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLK" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="15"/>
<wire x1="63.5" y1="76.2" x2="40.64" y2="76.2" width="0.1524" layer="91"/>
<label x="55.88" y="76.2" size="1.778" layer="95"/>
<pinref part="BOARD_6" gate="A" pin="3"/>
<wire x1="40.64" y1="30.48" x2="43.18" y2="30.48" width="0.1524" layer="91"/>
<pinref part="BOARD_0" gate="A" pin="3"/>
<wire x1="43.18" y1="30.48" x2="58.42" y2="30.48" width="0.1524" layer="91"/>
<wire x1="40.64" y1="30.48" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
<junction x="40.64" y="30.48"/>
<pinref part="BOARD_1" gate="A" pin="3"/>
<wire x1="33.02" y1="30.48" x2="17.78" y2="30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="30.48" x2="33.02" y2="10.16" width="0.1524" layer="91"/>
<wire x1="33.02" y1="10.16" x2="17.78" y2="10.16" width="0.1524" layer="91"/>
<junction x="33.02" y="30.48"/>
<pinref part="BOARD_2" gate="A" pin="3"/>
<wire x1="33.02" y1="10.16" x2="33.02" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-10.16" x2="17.78" y2="-10.16" width="0.1524" layer="91"/>
<junction x="33.02" y="10.16"/>
<pinref part="BOARD_3" gate="A" pin="3"/>
<wire x1="33.02" y1="-10.16" x2="33.02" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-30.48" x2="17.78" y2="-30.48" width="0.1524" layer="91"/>
<junction x="33.02" y="-10.16"/>
<pinref part="BOARD_4" gate="A" pin="3"/>
<wire x1="33.02" y1="-30.48" x2="33.02" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-50.8" x2="17.78" y2="-50.8" width="0.1524" layer="91"/>
<junction x="33.02" y="-30.48"/>
<pinref part="BOARD_5" gate="A" pin="3"/>
<wire x1="33.02" y1="-50.8" x2="33.02" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-71.12" x2="17.78" y2="-71.12" width="0.1524" layer="91"/>
<junction x="33.02" y="-50.8"/>
<pinref part="BOARD_7" gate="A" pin="3"/>
<wire x1="43.18" y1="30.48" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="10.16" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
<junction x="43.18" y="30.48"/>
<pinref part="BOARD_8" gate="A" pin="3"/>
<wire x1="43.18" y1="10.16" x2="43.18" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-10.16" x2="58.42" y2="-10.16" width="0.1524" layer="91"/>
<junction x="43.18" y="10.16"/>
<pinref part="BOARD_9" gate="A" pin="3"/>
<wire x1="43.18" y1="-10.16" x2="43.18" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-30.48" x2="58.42" y2="-30.48" width="0.1524" layer="91"/>
<junction x="43.18" y="-10.16"/>
<pinref part="BOARD_10" gate="A" pin="3"/>
<wire x1="43.18" y1="-30.48" x2="43.18" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-50.8" x2="58.42" y2="-50.8" width="0.1524" layer="91"/>
<junction x="43.18" y="-30.48"/>
<pinref part="BOARD_11" gate="A" pin="3"/>
<wire x1="43.18" y1="-50.8" x2="43.18" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-71.12" x2="58.42" y2="-71.12" width="0.1524" layer="91"/>
<junction x="43.18" y="-50.8"/>
<wire x1="40.64" y1="76.2" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CS_10" class="1">
<segment>
<pinref part="RASPI_INPUT" gate="G$1" pin="2"/>
<wire x1="78.74" y1="58.42" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
<pinref part="BOARD_10" gate="A" pin="5"/>
<wire x1="81.28" y1="58.42" x2="81.28" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-55.88" x2="58.42" y2="-55.88" width="0.1524" layer="91"/>
<label x="68.58" y="-55.88" size="1.778" layer="95"/>
<label x="81.28" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,13.8684,78.7908,J1,,,,,"/>
<approved hash="113,1,71.8836,68.8391,RASPI_INPUT,,,,,"/>
<approved hash="113,1,15.6543,29.0144,BOARD_0,,,,,"/>
<approved hash="113,1,15.6543,8.69442,BOARD_1,,,,,"/>
<approved hash="113,1,15.6543,-11.6256,BOARD_2,,,,,"/>
<approved hash="113,1,15.6543,-31.9456,BOARD_3,,,,,"/>
<approved hash="113,1,15.6543,-52.2656,BOARD_4,,,,,"/>
<approved hash="113,1,15.6543,-72.5856,BOARD_5,,,,,"/>
<approved hash="113,1,60.5457,31.9456,BOARD_6,,,,,"/>
<approved hash="113,1,60.5457,11.6256,BOARD_7,,,,,"/>
<approved hash="113,1,60.5457,-8.69442,BOARD_8,,,,,"/>
<approved hash="113,1,61.1616,-69.6544,BOARD_11,,,,,"/>
<approved hash="113,1,60.5457,-29.0144,BOARD_9,,,,,"/>
<approved hash="113,1,61.2553,-49.3344,BOARD_10,,,,,"/>
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
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
