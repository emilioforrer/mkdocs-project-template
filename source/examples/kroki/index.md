title: Kroki - mkdocs-kroki-plugin

## Block Diagram - BlockDiag

```kroki-blockdiag no-transparency=false
blockdiag {
  blockdiag -> generates -> "block-diagrams";
  blockdiag -> is -> "very easy!";

  blockdiag [color = "greenyellow"];
  "block-diagrams" [color = "pink"];
  "very easy!" [color = "orange"];
}
```

## Sequence diagram - SeqDiag

```kroki-seqdiag
seqdiag {
  browser  -> webserver [label = "GET /index.html"];
  browser <-- webserver;
  browser  -> webserver [label = "POST /blog/comment"];
  webserver  -> database [label = "INSERT comment"];
  webserver <-- database;
  browser <-- webserver;
}
```

## Activity diagram - ActDiag

```kroki-actdiag
actdiag {
  write -> convert -> image

  lane user {
    label = "User"
    write [label = "Writing reST"];
    image [label = "Get diagram IMAGE"];
  }
  lane actdiag {
    convert [label = "Convert reST to Image"];
  }
}
```


## Network diagram - NwDiag

```kroki-nwdiag
nwdiag {
  network dmz {
    address = "210.x.x.x/24"

    web01 [address = "210.x.x.1"];
    web02 [address = "210.x.x.2"];
  }
  network internal {
    address = "172.x.x.x/24";

    web01 [address = "172.x.x.1"];
    web02 [address = "172.x.x.2"];
    db01;
    db02;
  }
}
```

## Packet diagram - PacketDiag

```kroki-packetdiag
packetdiag {
  colwidth = 32;
  node_height = 72;

  0-15: Source Port;
  16-31: Destination Port;
  32-63: Sequence Number;
  64-95: Acknowledgment Number;
  96-99: Data Offset;
  100-105: Reserved;
  106: URG [rotate = 270];
  107: ACK [rotate = 270];
  108: PSH [rotate = 270];
  109: RST [rotate = 270];
  110: SYN [rotate = 270];
  111: FIN [rotate = 270];
  112-127: Window;
  128-143: Checksum;
  144-159: Urgent Pointer;
  160-191: (Options and Padding);
  192-223: data [colheight = 3];
}
```

## Rack diagram - RackDiag

```kroki-rackdiag
rackdiag {
  16U;
  1: UPS [2U];
  3: DB Server;
  4: Web Server;
  5: Web Server;
  6: Web Server;
  7: Load Balancer;
  8: L3 Switch;
}
```

## Object Oriented Graph - GraphViz

```kroki-graphviz
digraph "unix" {
  graph [ fontname = "Helvetica-Oblique",
          fontsize = 36,
          label = "\n\n\n\nObject Oriented Graphs\nStephen North, 3/19/93",
          size = "6,6" ];
  node [ shape = polygon,
         sides = 4,
         distortion = "0.0",
         orientation = "0.0",
         skew = "0.0",
         color = white,
         style = filled,
         fontname = "Helvetica-Outline" ];
  "5th Edition" [sides=9, distortion="0.936354", orientation=28, skew="-0.126818", color=salmon2];
  "6th Edition" [sides=5, distortion="0.238792", orientation=11, skew="0.995935", color=deepskyblue];
  "PWB 1.0" [sides=8, distortion="0.019636", orientation=79, skew="-0.440424", color=goldenrod2];
  LSX [sides=9, distortion="-0.698271", orientation=22, skew="-0.195492", color=burlywood2];
  "1 BSD" [sides=7, distortion="0.265084", orientation=26, skew="0.403659", color=gold1];
  "Mini Unix" [distortion="0.039386", orientation=2, skew="-0.461120", color=greenyellow];
  Wollongong [sides=5, distortion="0.228564", orientation=63, skew="-0.062846", color=darkseagreen];
  Interdata [distortion="0.624013", orientation=56, skew="0.101396", color=dodgerblue1];
  "Unix/TS 3.0" [sides=8, distortion="0.731383", orientation=43, skew="-0.824612", color=thistle2];
  "PWB 2.0" [sides=6, distortion="0.592100", orientation=34, skew="-0.719269", color=darkolivegreen3];
  "7th Edition" [sides=10, distortion="0.298417", orientation=65, skew="0.310367", color=chocolate];
  "8th Edition" [distortion="-0.997093", orientation=50, skew="-0.061117", color=turquoise3];
  "32V" [sides=7, distortion="0.878516", orientation=19, skew="0.592905", color=steelblue3];
  V7M [sides=10, distortion="-0.960249", orientation=32, skew="0.460424", color=navy];
  "Ultrix-11" [sides=10, distortion="-0.633186", orientation=10, skew="0.333125", color=darkseagreen4];
  Xenix [sides=8, distortion="-0.337997", orientation=52, skew="-0.760726", color=coral];
  "UniPlus+" [sides=7, distortion="0.788483", orientation=39, skew="-0.526284", color=darkolivegreen3];
  "9th Edition" [sides=7, distortion="0.138690", orientation=55, skew="0.554049", color=coral3];
  "2 BSD" [sides=7, distortion="-0.010661", orientation=84, skew="0.179249", color=blanchedalmond];
  "2.8 BSD" [distortion="-0.239422", orientation=44, skew="0.053841", color=lightskyblue1];
  "2.9 BSD" [distortion="-0.843381", orientation=70, skew="-0.601395", color=aquamarine2];
  "3 BSD" [sides=10, distortion="0.251820", orientation=18, skew="-0.530618", color=lemonchiffon];
  "4 BSD" [sides=5, distortion="-0.772300", orientation=24, skew="-0.028475", color=darkorange1];
  "4.1 BSD" [distortion="-0.226170", orientation=38, skew="0.504053", color=lightyellow1];
  "4.2 BSD" [sides=10, distortion="-0.807349", orientation=50, skew="-0.908842", color=darkorchid4];
  "4.3 BSD" [sides=10, distortion="-0.030619", orientation=76, skew="0.985021", color=lemonchiffon2];
  "Ultrix-32" [distortion="-0.644209", orientation=21, skew="0.307836", color=goldenrod3];
  "PWB 1.2" [sides=7, distortion="0.640971", orientation=84, skew="-0.768455", color=cyan];
  "USG 1.0" [distortion="0.758942", orientation=42, skew="0.039886", color=blue];
  "CB Unix 1" [sides=9, distortion="-0.348692", orientation=42, skew="0.767058", color=firebrick];
  "USG 2.0" [distortion="0.748625", orientation=74, skew="-0.647656", color=chartreuse4];
  "CB Unix 2" [sides=10, distortion="0.851818", orientation=32, skew="-0.020120", color=greenyellow];
  "CB Unix 3" [sides=10, distortion="0.992237", orientation=29, skew="0.256102", color=bisque4];
  "Unix/TS++" [sides=6, distortion="0.545461", orientation=16, skew="0.313589", color=mistyrose2];
  "PDP-11 Sys V" [sides=9, distortion="-0.267769", orientation=40, skew="0.271226", color=cadetblue1];
  "USG 3.0" [distortion="-0.848455", orientation=44, skew="0.267152", color=bisque2];
  "Unix/TS 1.0" [distortion="0.305594", orientation=75, skew="0.070516", color=orangered];
  "TS 4.0" [sides=10, distortion="-0.641701", orientation=50, skew="-0.952502", color=crimson];
  "System V.0" [sides=9, distortion="0.021556", orientation=26, skew="-0.729938", color=darkorange1];
  "System V.2" [sides=6, distortion="0.985153", orientation=33, skew="-0.399752", color=darkolivegreen4];
  "System V.3" [sides=7, distortion="-0.687574", orientation=58, skew="-0.180116", color=lightsteelblue1];
  "5th Edition" -> "6th Edition";
  "5th Edition" -> "PWB 1.0";
  "6th Edition" -> LSX;
  "6th Edition" -> "1 BSD";
  "6th Edition" -> "Mini Unix";
  "6th Edition" -> Wollongong;
  "6th Edition" -> Interdata;
  Interdata -> "Unix/TS 3.0";
  Interdata -> "PWB 2.0";
  Interdata -> "7th Edition";
  "7th Edition" -> "8th Edition";
  "7th Edition" -> "32V";
  "7th Edition" -> V7M;
  "7th Edition" -> "Ultrix-11";
  "7th Edition" -> Xenix;
  "7th Edition" -> "UniPlus+";
  V7M -> "Ultrix-11";
  "8th Edition" -> "9th Edition";
  "1 BSD" -> "2 BSD";
  "2 BSD" -> "2.8 BSD";
  "2.8 BSD" -> "Ultrix-11";
  "2.8 BSD" -> "2.9 BSD";
  "32V" -> "3 BSD";
  "3 BSD" -> "4 BSD";
  "4 BSD" -> "4.1 BSD";
  "4.1 BSD" -> "4.2 BSD";
  "4.1 BSD" -> "2.8 BSD";
  "4.1 BSD" -> "8th Edition";
  "4.2 BSD" -> "4.3 BSD";
  "4.2 BSD" -> "Ultrix-32";
  "PWB 1.0" -> "PWB 1.2";
  "PWB 1.0" -> "USG 1.0";
  "PWB 1.2" -> "PWB 2.0";
  "USG 1.0" -> "CB Unix 1";
  "USG 1.0" -> "USG 2.0";
  "CB Unix 1" -> "CB Unix 2";
  "CB Unix 2" -> "CB Unix 3";
  "CB Unix 3" -> "Unix/TS++";
  "CB Unix 3" -> "PDP-11 Sys V";
  "USG 2.0" -> "USG 3.0";
  "USG 3.0" -> "Unix/TS 3.0";
  "PWB 2.0" -> "Unix/TS 3.0";
  "Unix/TS 1.0" -> "Unix/TS 3.0";
  "Unix/TS 3.0" -> "TS 4.0";
  "Unix/TS++" -> "TS 4.0";
  "CB Unix 3" -> "TS 4.0";
  "TS 4.0" -> "System V.0";
  "System V.0" -> "System V.2";
  "System V.2" -> "System V.3";
}
```


## Commit Graph - Pikchr

```kroki-pikchr
scale = 0.8
fill = white
linewid *= 0.5
circle "C0" fit
circlerad = previous.radius
arrow
circle "C1"
arrow
circle "C2"
arrow
circle "C4"
arrow
circle "C6"
circle "C3" at dist(C2,C4) heading 30 from C2
arrow
circle "C5"
arrow from C2 to C3 chop
C3P: circle "C3'" at dist(C4,C6) heading 30 from C6
arrow right from C3P.e
C5P: circle "C5'"
arrow from C6 to C3P chop

box height C3.y-C2.y \
    width (C5P.e.x-C0.w.x)+linewid \
    with .w at 0.5*linewid west of C0.w \
    behind C0 \
    fill 0xc6e2ff thin color gray
box same width previous.e.x - C2.w.x \
    with .se at previous.ne \
    fill 0x9accfc
"trunk" below at 2nd last box.s
"feature branch" above at last box.n

circle "C0" at 3.7cm south of C0
arrow
circle "C1"
arrow
circle "C2"
arrow
circle "C4"
arrow
circle "C6"
circle "C3" at dist(C2,C4) heading 30 from C2
arrow
circle "C5"
arrow
circle "C7"
arrow from C2 to C3 chop
arrow from C6 to C7 chop

box height C3.y-C2.y \
    width (C7.e.x-C0.w.x)+1.5*C1.radius \
    with .w at 0.5*linewid west of C0.w \
    behind C0 \
    fill 0xc6e2ff thin color gray
box same width previous.e.x - C2.w.x \
    with .se at previous.ne \
    fill 0x9accfc
"trunk" below at 2nd last box.s
"feature branch" above at last box.n
```

## Entity Relationship Diagram - Erd

```kroki-erd
[Person]
*name
height
weight
+birth_location_id

[Location]
*id
city
state
country

Person *--1 Location
```

## Hand-drawn like diagrams - Excalidraw

```kroki-excalidraw
@from_file:examples/kroki/example.excalidraw
```

## Word Cloud - Vega

```kroki-vega
@from_file:examples/kroki/example.vega
```

## Diverging Stacked Bar Chart - Vega-Lite

```kroki-vegalite
@from_file:examples/kroki/example.vegalite
```

## Conjugate prior relationships - Ditaa

```kroki-ditaa
@from_file:examples/kroki/example.ditaa
```

## Sequence diagram - Mermaid

```kroki-mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->John: Hello John, how are you?
    loop Healthcheck
        John->John: Fight against hypochondria
    end
    Note right of John: Rational thoughts prevail...
    John-->Alice: Great!
    John->Bob: How about you?
    Bob-->John: Jolly good!
```

## UML diagram - Nomnoml

```kroki-nomnoml
[Pirate|eyeCount: Int|raid();pillage()|
  [beard]--[parrot]
  [beard]-:>[foul mouth]
]

[<abstract>Marauder]<:--[Pirate]
[Pirate]- 0..7[mischief]
[jollyness]->[Pirate]
[jollyness]->[rum]
[jollyness]->[singing]
[Pirate]-> *[rum|tastiness: Int|swig()]
[Pirate]->[singing]
[singing]<->[rum]

[<start>st]->[<state>plunder]
[plunder]->[<choice>more loot]
[more loot]->[st]
[more loot] no ->[<end>e]

[<actor>Sailor] - [<usecase>shiver me;timbers]
``` 

## Use case diagram - PlantUML

```kroki-plantuml
@startuml
left to right direction
skinparam packageStyle rectangle
skinparam monochrome true
actor customer
actor clerk
rectangle checkout {
  customer -- (checkout)
  (checkout) .> (payment) : include
  (help) .> (checkout) : extends
  (checkout) -- clerk
}
@enduml
```

## Work Breakdown Structure - PlantUML

```kroki-plantuml
@startwbs
skinparam monochrome true
* Business Process Modelling WBS
** Launch the project
*** Complete Stakeholder Research
*** Initial Implementation Plan
** Design phase
*** Model of AsIs Processes Completed
**** Model of AsIs Processes Completed1
**** Model of AsIs Processes Completed2
*** Measure AsIs performance metrics
*** Identify Quick Wins
** Complete innovate phase
@endwbs
```

## Gantt - Mermaid

```kroki-mermaid
gantt
    title A Gantt Diagram
    dateFormat  YYYY-MM-DD
    section Section
    A task           :a1, 2014-01-01, 30d
    Another task     :after a1, 20d
    section Another
    Task in sec      :2014-01-12, 12d
    another task     :24d
```

## Syntax diagram - Pikchr

```kroki-pikchr
$r = 0.2in
linerad = 0.75*$r
linewid = 0.25

# Start and end blocks
#
box "element" bold fit
line down 50% from last box.sw
dot rad 250% color black
X0: last.e + (0.3,0)
arrow from last dot to X0
move right 3.9in
box wid 5% ht 25% fill black
X9: last.w - (0.3,0)
arrow from X9 to last box.w


# The main rule that goes straight through from start to finish
#
box "object-definition" italic fit at 11/16 way between X0 and X9
arrow to X9
arrow from X0 to last box.w

# The LABEL: rule
#
arrow right $r from X0 then down 1.25*$r then right $r
oval " LABEL " fit
arrow 50%
oval "\":\"" fit
arrow 200%
box "position" italic fit
arrow
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9
arrow from last oval.e right $r*0.5 then up $r*0.8 right $r*0.8
line up $r*0.45 right $r*0.45 then right

# The VARIABLE = rule
#
arrow right $r from X0 then down 2.5*$r then right $r
oval " VARIABLE " fit
arrow 70%
box "assignment-operator" italic fit
arrow 70%
box "expr" italic fit
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9

# The PRINT rule
#
arrow right $r from X0 then down 3.75*$r then right $r
oval "\"print\"" fit
arrow
box "print-args" italic fit
line right until even with X9 - ($r,0) \
  then up until even with X9 then to X9
```

## Mind Map - PlantUML

```kroki-plantuml
@startmindmap
skinparam monochrome true
+ OS
++ Ubuntu
+++ Linux Mint
+++ Kubuntu
+++ Lubuntu
+++ KDE Neon
++ LMDE
++ SolydXK
++ SteamOS
++ Raspbian
-- Windows 95
-- Windows 98
-- Windows NT
--- Windows 8
--- Windows 10
@endmindmap

```

## BPMN - BPMN

```kroki-bpmn
@from_file:examples/kroki/example.bpmn
```


## Bytefield - Bytefield

```kroki-bytefield
(defattrs :bg-green {:fill "#a0ffa0"})
(defattrs :bg-yellow {:fill "#ffffa0"})
(defattrs :bg-pink {:fill "#ffb0a0"})
(defattrs :bg-cyan {:fill "#a0fafa"})
(defattrs :bg-purple {:fill "#e4b5f7"})

(defn draw-group-label-header
  "Creates a small borderless box used to draw the textual label headers
  used below the byte labels for remotedb message diagrams.
  Arguments are the number of colums to span and the text of the
  label."
  [span label]
  (draw-box (text label [:math {:font-size 12}]) {:span    span
                                                  :borders #{}
                                                  :height  14}))

(defn draw-remotedb-header
  "Generates the byte and field labels and standard header fields of a
  request or response message for the remotedb database server with
  the specified kind and args values."
  [kind args]
  (draw-column-headers)
  (draw-group-label-header 5 "start")
  (draw-group-label-header 5 "TxID")
  (draw-group-label-header 3 "type")
  (draw-group-label-header 2 "args")
  (draw-group-label-header 1 "tags")
  (next-row 18)

  (draw-box 0x11 :bg-green)
  (draw-box 0x872349ae [{:span 4} :bg-green])
  (draw-box 0x11 :bg-yellow)
  (draw-box (text "TxID" :math) [{:span 4} :bg-yellow])
  (draw-box 0x10 :bg-pink)
  (draw-box (hex-text kind 4 :bold) [{:span 2} :bg-pink])
  (draw-box 0x0f :bg-cyan)
  (draw-box (hex-text args 2 :bold) :bg-cyan)
  (draw-box 0x14 :bg-purple)

  (draw-box (text "0000000c" :hex [[:plain {:font-weight "light" :font-size 16}] " (12)"])
            [{:span 4} :bg-purple])
  (draw-box (hex-text 6 2 :bold) [:box-first :bg-purple])
  (doseq [val [6 6 3 6 6 6 6 3]]
    (draw-box (hex-text val 2 :bold) [:box-related :bg-purple]))
  (doseq [val [0 0]]
    (draw-box val [:box-related :bg-purple]))
  (draw-box 0 [:box-last :bg-purple]))

(draw-remotedb-header 0x4702 9)

(draw-box 0x11)
(draw-box 0x2104 {:span 4})
(draw-box 0x11)
(draw-box 0 {:span 4})
(draw-box 0x11)
(draw-box (text "length" [:math] [:sub 1]) {:span 4})
(draw-box 0x14)

(draw-box (text "length" [:math] [:sub 1]) {:span 4})
(draw-gap "Cue and loop point bytes")

(draw-box nil :box-below)
(draw-box 0x11)
(draw-box 0x36 {:span 4})
(draw-box 0x11)
(draw-box (text "num" [:math] [:sub "hot"]) {:span 4})
(draw-box 0x11)
(draw-box (text "num" [:math] [:sub "cue"]) {:span 4})

(draw-box 0x11)
(draw-box (text "length" [:math] [:sub 2]) {:span 4})
(draw-box 0x14)
(draw-box (text "length" [:math] [:sub 2]) {:span 4})
(draw-gap "Unknown bytes" {:min-label-columns 6})
(draw-bottom)

```

## Connected Servers - Svgbob

```kroki-svgbob
                  .-,(  ),-.
   ___  _      .-(          )-.
  [___]|=| -->(                )      __________
  /::/ |_|     '-(          ).-' --->[_...__...°]
                  '-.( ).-'
                          \      ____   __
                           '--->|    | |==|
                                |____| |  |
                                /::::/ |__|
```

## Ascii Art - Svgbob

```kroki-svgbob
  _____
 /  O__]
/  ___]
\   \
 |   |
 |   |
 /   /
 \   \
 /   /

```

## Impossible trident - Pikchr

```kroki-pikchr
# Impossible trident pikchr script
# https://en.wikipedia.org/wiki/Impossible_trident
# pikchr script by Kees Nuyt, license Creative Commons BY-NC-SA
# https://creativecommons.org/licenses/by-nc-sa/4.0/

scale = 1.0
eh = 0.5cm
ew = 0.2cm
ed = 2 * eh
er = 0.4cm
lws = 4.0cm
lwm = lws + er
lwl = lwm + er

ellipse height eh width ew
L1: line width lwl from last ellipse.n
line width lwm from last ellipse.s
LV: line height eh down

move right er down ed from last ellipse.n
ellipse height eh width ew
L3: line width lws right from last ellipse.n to LV.end then down eh right ew
line width lwm right from last ellipse.s then to LV.start

move right er down ed from last ellipse.n
ellipse height eh width ew
line width lwl right from last ellipse.n then to L1.end
line width lwl right from last ellipse.s then up eh
```

## Context diagram - C4 PlantUML

```kroki-c4plantuml
@startuml
!include C4_Context.puml

LAYOUT_WITH_LEGEND()

title System Context diagram for Internet Banking System

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System(banking_system, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, banking_system, "Uses")
Rel_Back(customer, mail_system, "Sends e-mails to")
Rel_Neighbor(banking_system, mail_system, "Sends e-mails", "SMTP")
Rel(banking_system, mainframe, "Uses")
@enduml
```


## Container diagram - C4 PlantUML

```kroki-c4plantuml
@startuml
!include C4_Container.puml

LAYOUT_TOP_DOWN()
LAYOUT_WITH_LEGEND()

title Container diagram for Internet Banking System

Person(customer, Customer, "A customer of the bank, with personal bank accounts")

System_Boundary(c1, "Internet Banking") {
    Container(web_app, "Web Application", "Java, Spring MVC", "Delivers the static content and the Internet banking SPA")
    Container(spa, "Single-Page App", "JavaScript, Angular", "Provides all the Internet banking functionality to cutomers via their web browser")
    Container(mobile_app, "Mobile App", "C#, Xamarin", "Provides a limited subset of the Internet banking functionality to customers via their mobile device")
    ContainerDb(database, "Database", "SQL Database", "Stores user registraion information, hased auth credentials, access logs, etc.")
    Container(backend_api, "API Application", "Java, Docker Container", "Provides Internet banking functionality via API")
}

System_Ext(email_system, "E-Mail System", "The internal Microsoft Exchange system")
System_Ext(banking_system, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, web_app, "Uses", "HTTPS")
Rel(customer, spa, "Uses", "HTTPS")
Rel(customer, mobile_app, "Uses")

Rel_Neighbor(web_app, spa, "Delivers")
Rel(spa, backend_api, "Uses", "async, JSON/HTTPS")
Rel(mobile_app, backend_api, "Uses", "async, JSON/HTTPS")
Rel_Back_Neighbor(database, backend_api, "Reads from and writes to", "sync, JDBC")

Rel_Back(customer, email_system, "Sends e-mails to")
Rel_Back(email_system, backend_api, "Sends e-mails using", "sync, SMTP")
Rel_Neighbor(backend_api, banking_system, "Uses", "sync/async, XML/HTTPS")
@enduml

```

## Container diagram - Structurizr

```kroki-structurizr
workspace "Big Bank plc" "This is an example workspace to illustrate the key features of Structurizr, via the DSL, based around a fictional online banking system." {

    model {
        customer = person "Personal Banking Customer" "A customer of the bank, with personal bank accounts." "Customer"

        enterprise "Big Bank plc" {
            supportStaff = person "Customer Service Staff" "Customer service staff within the bank." "Bank Staff"
            backoffice = person "Back Office Staff" "Administration and support staff within the bank." "Bank Staff"

            mainframe = softwaresystem "Mainframe Banking System" "Stores all of the core banking information about customers, accounts, transactions, etc." "Existing System"
            email = softwaresystem "E-mail System" "The internal Microsoft Exchange e-mail system." "Existing System"
            atm = softwaresystem "ATM" "Allows customers to withdraw cash." "Existing System"

            internetBankingSystem = softwaresystem "Internet Banking System" "Allows customers to view information about their bank accounts, and make payments." {
                singlePageApplication = container "Single-Page Application" "Provides all of the Internet banking functionality to customers via their web browser." "JavaScript and Angular" "Web Browser"
                mobileApp = container "Mobile App" "Provides a limited subset of the Internet banking functionality to customers via their mobile device." "Xamarin" "Mobile App"
                webApplication = container "Web Application" "Delivers the static content and the Internet banking single page application." "Java and Spring MVC"
                apiApplication = container "API Application" "Provides Internet banking functionality via a JSON/HTTPS API." "Java and Spring MVC" {
                    signinController = component "Sign In Controller" "Allows users to sign in to the Internet Banking System." "Spring MVC Rest Controller"
                    accountsSummaryController = component "Accounts Summary Controller" "Provides customers with a summary of their bank accounts." "Spring MVC Rest Controller"
                    resetPasswordController = component "Reset Password Controller" "Allows users to reset their passwords with a single use URL." "Spring MVC Rest Controller"
                    securityComponent = component "Security Component" "Provides functionality related to signing in, changing passwords, etc." "Spring Bean"
                    mainframeBankingSystemFacade = component "Mainframe Banking System Facade" "A facade onto the mainframe banking system." "Spring Bean"
                    emailComponent = component "E-mail Component" "Sends e-mails to users." "Spring Bean"
                }
                database = container "Database" "Stores user registration information, hashed authentication credentials, access logs, etc." "Oracle Database Schema" "Database"
            }
        }

        # relationships between people and software systems
        customer -> internetBankingSystem "Views account balances, and makes payments using"
        internetBankingSystem -> mainframe "Gets account information from, and makes payments using"
        internetBankingSystem -> email "Sends e-mail using"
        email -> customer "Sends e-mails to"
        customer -> supportStaff "Asks questions to" "Telephone"
        supportStaff -> mainframe "Uses"
        customer -> atm "Withdraws cash using"
        atm -> mainframe "Uses"
        backoffice -> mainframe "Uses"

        # relationships to/from containers
        customer -> webApplication "Visits bigbank.com/ib using" "HTTPS"
        customer -> singlePageApplication "Views account balances, and makes payments using"
        customer -> mobileApp "Views account balances, and makes payments using"
        webApplication -> singlePageApplication "Delivers to the customer's web browser"

        # relationships to/from components
        singlePageApplication -> signinController "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> accountsSummaryController "Makes API calls to" "JSON/HTTPS"
        singlePageApplication -> resetPasswordController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> signinController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> accountsSummaryController "Makes API calls to" "JSON/HTTPS"
        mobileApp -> resetPasswordController "Makes API calls to" "JSON/HTTPS"
        signinController -> securityComponent "Uses"
        accountsSummaryController -> mainframeBankingSystemFacade "Uses"
        resetPasswordController -> securityComponent "Uses"
        resetPasswordController -> emailComponent "Uses"
        securityComponent -> database "Reads from and writes to" "JDBC"
        mainframeBankingSystemFacade -> mainframe "Makes API calls to" "XML/HTTPS"
        emailComponent -> email "Sends e-mail using"

        deploymentEnvironment "Development" {
            deploymentNode "Developer Laptop" "" "Microsoft Windows 10 or Apple macOS" {
                deploymentNode "Web Browser" "" "Chrome, Firefox, Safari, or Edge" {
                    developerSinglePageApplicationInstance = containerInstance singlePageApplication
                }
                deploymentNode "Docker Container - Web Server" "" "Docker" {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        developerWebApplicationInstance = containerInstance webApplication
                        developerApiApplicationInstance = containerInstance apiApplication
                    }
                }
                deploymentNode "Docker Container - Database Server" "" "Docker" {
                    deploymentNode "Database Server" "" "Oracle 12c" {
                        developerDatabaseInstance = containerInstance database
                    }
                }
            }
            deploymentNode "Big Bank plc" "" "Big Bank plc data center" "" {
                deploymentNode "bigbank-dev001" "" "" "" {
                    softwareSystemInstance mainframe
                }
            }

        }

        deploymentEnvironment "Live" {
            deploymentNode "Customer's mobile device" "" "Apple iOS or Android" {
                liveMobileAppInstance = containerInstance mobileApp
            }
            deploymentNode "Customer's computer" "" "Microsoft Windows or Apple macOS" {
                deploymentNode "Web Browser" "" "Chrome, Firefox, Safari, or Edge" {
                    liveSinglePageApplicationInstance = containerInstance singlePageApplication
                }
            }

            deploymentNode "Big Bank plc" "" "Big Bank plc data center" {
                deploymentNode "bigbank-web***" "" "Ubuntu 16.04 LTS" "" 4 {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        liveWebApplicationInstance = containerInstance webApplication
                    }
                }
                deploymentNode "bigbank-api***" "" "Ubuntu 16.04 LTS" "" 8 {
                    deploymentNode "Apache Tomcat" "" "Apache Tomcat 8.x" {
                        liveApiApplicationInstance = containerInstance apiApplication
                    }
                }

                deploymentNode "bigbank-db01" "" "Ubuntu 16.04 LTS" {
                    primaryDatabaseServer = deploymentNode "Oracle - Primary" "" "Oracle 12c" {
                        livePrimaryDatabaseInstance = containerInstance database
                    }
                }
                deploymentNode "bigbank-db02" "" "Ubuntu 16.04 LTS" "Failover" {
                    secondaryDatabaseServer = deploymentNode "Oracle - Secondary" "" "Oracle 12c" "Failover" {
                        liveSecondaryDatabaseInstance = containerInstance database "Failover"
                    }
                }
                deploymentNode "bigbank-prod001" "" "" "" {
                    softwareSystemInstance mainframe
                }
            }

            primaryDatabaseServer -> secondaryDatabaseServer "Replicates data to"
        }
    }

    views {
        systemlandscape "SystemLandscape" {
            include *
            autoLayout
        }

        systemcontext internetBankingSystem "SystemContext" {
            include *
            animation {
                internetBankingSystem
                customer
                mainframe
                email
            }
            autoLayout
        }

        container internetBankingSystem "Containers" {
            include *
            animation {
                customer mainframe email
                webApplication
                singlePageApplication
                mobileApp
                apiApplication
                database
            }
            autoLayout
        }

        component apiApplication "Components" {
            include *
            animation {
                singlePageApplication mobileApp database email mainframe
                signinController securityComponent
                accountsSummaryController mainframeBankingSystemFacade
                resetPasswordController emailComponent
            }
            autoLayout
        }

        dynamic apiApplication "SignIn" "Summarises how the sign in feature works in the single-page application." {
            singlePageApplication -> signinController "Submits credentials to"
            signinController -> securityComponent "Validates credentials using"
            securityComponent -> database "select * from users where username = ?"
            database -> securityComponent "Returns user data to"
            securityComponent -> signinController "Returns true if the hashed password matches"
            signinController -> singlePageApplication "Sends back an authentication token to"
            autoLayout
        }

        deployment internetBankingSystem "Development" "DevelopmentDeployment" {
            include *
            animation {
                developerSinglePageApplicationInstance
                developerWebApplicationInstance developerApiApplicationInstance
                developerDatabaseInstance
            }
            autoLayout
        }

        deployment internetBankingSystem "Live" "LiveDeployment" {
            include *
            animation {
                liveSinglePageApplicationInstance
                liveMobileAppInstance
                liveWebApplicationInstance liveApiApplicationInstance
                livePrimaryDatabaseInstance
                liveSecondaryDatabaseInstance
            }
            autoLayout
        }

        styles {
            element "Person" {
                color #ffffff
                fontSize 22
                shape Person
            }
            element "Customer" {
                background #08427b
            }
            element "Bank Staff" {
                background #999999
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Existing System" {
                background #999999
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Mobile App" {
                shape MobileDeviceLandscape
            }
            element "Database" {
                shape Cylinder
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "Failover" {
                opacity 25
            }
        }
    }
}
```

## Component diagram - C4 PlantUML

```kroki-c4plantuml
@startuml
!include C4_Component.puml

LAYOUT_WITH_LEGEND()

title Component diagram for Internet Banking System - API Application

Container(spa, "Single Page Application", "javascript and angular", "Provides all the internet banking functionality to customers via their web browser.")
Container(ma, "Mobile App", "Xamarin", "Provides a limited subset ot the internet banking functionality to customers via their mobile mobile device.")
ContainerDb(db, "Database", "Relational Database Schema", "Stores user registration information, hashed authentication credentials, access logs, etc.")
System_Ext(mbs, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Container_Boundary(api, "API Application") {
    Component(sign, "Sign In Controller", "MVC Rest Controlle", "Allows users to sign in to the internet banking system")
    Component(accounts, "Accounts Summary Controller", "MVC Rest Controlle", "Provides customers with a summory of their bank accounts")
    Component(security, "Security Component", "Spring Bean", "Provides functionality related to singing in, changing passwords, etc.")
    Component(mbsfacade, "Mainframe Banking System Facade", "Spring Bean", "A facade onto the mainframe banking system.")

    Rel(sign, security, "Uses")
    Rel(accounts, mbsfacade, "Uses")
    Rel(security, db, "Read & write to", "JDBC")
    Rel(mbsfacade, mbs, "Uses", "XML/HTTPS")
}

Rel(spa, sign, "Uses", "JSON/HTTPS")
Rel(spa, accounts, "Uses", "JSON/HTTPS")

Rel(ma, sign, "Uses", "JSON/HTTPS")
Rel(ma, accounts, "Uses", "JSON/HTTPS")
@enduml

```


## State machine - UMlet

```kroki-umlet
@from_file:examples/kroki/example.umlet
```

## C4 Deployment diagram - Mermaid

```kroki-mermaid
    C4Deployment
    title Deployment Diagram for Internet Banking System - Live

    Deployment_Node(mob, "Customer's mobile device", "Apple IOS or Android"){
        Container(mobile, "Mobile App", "Xamarin", "Provides a limited subset of the Internet Banking functionality to customers via their mobile device.")
    }

    Deployment_Node(comp, "Customer's computer", "Microsoft Windows or Apple macOS"){
        Deployment_Node(browser, "Web Browser", "Google Chrome, Mozilla Firefox,<br/> Apple Safari or Microsoft Edge"){
            Container(spa, "Single Page Application", "JavaScript and Angular", "Provides all of the Internet Banking functionality to customers via their web browser.")
        }
    }

    Deployment_Node(plc, "Big Bank plc", "Big Bank plc data center"){
        Deployment_Node(dn, "bigbank-api*** x8", "Ubuntu 16.04 LTS"){
            Deployment_Node(apache, "Apache Tomcat", "Apache Tomcat 8.x"){
                Container(api, "API Application", "Java and Spring MVC", "Provides Internet Banking functionality via a JSON/HTTPS API.")
            }
        }
        Deployment_Node(bb2, "bigbank-web*** x4", "Ubuntu 16.04 LTS"){
            Deployment_Node(apache2, "Apache Tomcat", "Apache Tomcat 8.x"){
                Container(web, "Web Application", "Java and Spring MVC", "Delivers the static content and the Internet Banking single page application.")
            }
        }
        Deployment_Node(bigbankdb01, "bigbank-db01", "Ubuntu 16.04 LTS"){
            Deployment_Node(oracle, "Oracle - Primary", "Oracle 12c"){
                ContainerDb(db, "Database", "Relational Database Schema", "Stores user registration information, hashed authentication credentials, access logs, etc.")
            }
        }
        Deployment_Node(bigbankdb02, "bigbank-db02", "Ubuntu 16.04 LTS") {
            Deployment_Node(oracle2, "Oracle - Secondary", "Oracle 12c") {
                ContainerDb(db2, "Database", "Relational Database Schema", "Stores user registration information, hashed authentication credentials, access logs, etc.")
            }
        }
    }

    Rel(mobile, api, "Makes API calls to", "json/HTTPS")
    Rel(spa, api, "Makes API calls to", "json/HTTPS")
    Rel_U(web, spa, "Delivers to the customer's web browser")
    Rel(api, db, "Reads from and writes to", "JDBC")
    Rel(api, db2, "Reads from and writes to", "JDBC")
    Rel_R(db, db2, "Replicates data to")

    UpdateRelStyle(spa, api, $offsetY="-40")
    UpdateRelStyle(web, spa, $offsetY="-40")
    UpdateRelStyle(api, db, $offsetY="-20", $offsetX="5")
    UpdateRelStyle(api, db2, $offsetX="-40", $offsetY="-20")
    UpdateRelStyle(db, db2, $offsetY="-10")
```


## Business Model - Drawio

```kroki-diagramsnet
@from_file:examples/kroki/example.drawio.svg

```