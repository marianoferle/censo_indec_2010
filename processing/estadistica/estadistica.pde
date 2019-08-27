PFont myFont;
int[][] vv;
PImage mapa,ba,cf,cat,ch,chb,cor,corr,ent,fm,im,jj,an,lar,lp,md,ms,neq,rn,sane,sf,sj,sl,snc,st,tf,tuc;
PImage compu,hist;
int[][] vv2;
int[][] vv3;
int[][] f1;
String[] fontList;
String islas = "Las Islas Malvinas, Georgias del Sur, Sandwich del Sur y los espacios marítimos circundantes forman parte integrante del territorio nacional argentino. Debido a que dichos territorios se encuentran sometidos a la ocupación ilegal del  REINO UNIDO DE GRAN BRETAÑA e IRLANDA DEL NORTE, la REPÚBLICA ARGENTINA se  vio impedida de llevar a cabo el Censo2010 en esa área. Por consiguiente, no se consideró la superficie correspondiente a esas islas.";
String[] histo ={"A lo largo de la historia de la humanidad, los hombres tuvieron la necesidad de saber cuántos eran y con qué bienes contaban. Así nacieron los primeros censos","En épocas remotas las comunidades primitivas contaban las personas y los productos de la caza y de la agricultura, haciendo marcas en las piedras. Ya entonces tenían la necesidad de conocer las cosas fundamentales para la comunidad: cuántos eran y con cuántos alimentos contaban.","Las grandes civilizaciones hicieron censos porque necesitaban conocer la cantidad de hombres disponibles para la construcción de grandes obras públicas (por ejemplo, la construcción de las pirámides de Egipto) y para la guerra. Además necesitaban conocer los bienes existentes para realizar las guerras.","Los romanos, desde fines del Siglo VI a.C., censaban a todos sus ciudadanos y a sus respectivos bienes. De acuerdo con los bienes que poseían se les asignaba una determinada clase social y un determinado cargo en la organización política y militar de la ciudad. Estos censos se realizaban cada 10 años.","En la Época Moderna Inglaterra, Suecia, Francia e Italia fueron los estados que iniciaron la realización de censos de población. Estos se difundieron rápidamente al resto de Europa y han constituido una de las fuentes de información estadística más importante."};
int[] orr;
int[][] xy = {{0,0},{124,355},{147,324},{245,480},{150,490},{225,210},{195,410},{110,450},{130,400},{120,505},{210,535},{210,320},{240,440},{260,370},{50,480},{265,290},{240,265},{190,520},{260,415},{225,380},{265,80},{150,430},{185,470},{215,485},{240,50}};

String[] coor;
String[] coords;
String[] pobla;

void setup() {
  fontList = PFont.list();
  myFont = createFont("Georgia", 10);
  textFont(myFont);
  size(1000,600);
  background(360);
  smooth();
  colorMode(HSB, 360, 100, 100); 
  frameRate(10);
 mapa = loadImage("processing/data/mapa_argentina.png");
  ba = loadImage("processing/data/ba.png");
  cf = loadImage("processing/data/cf.png");
  an = loadImage("processing/data/an.png");
  cat = loadImage("processing/data/cat.png");
  ch = loadImage("processing/data/ch.png");
  chb = loadImage("processing/data/chb.png");
  cor = loadImage("processing/data/cor.png");
  corr = loadImage("processing/data/corr.png");
  ent = loadImage("processing/data/ent.png");
  fm = loadImage("processing/data/fm.png");
  im = loadImage("processing/data/im.png");
  jj = loadImage("processing/data/jj.png");
  lar = loadImage("processing/data/lar.png");
  lp = loadImage("processing/data/lp.png");
  md = loadImage("processing/data/md.png");
  ms = loadImage("processing/data/ms.png");
  neq = loadImage("processing/data/neq.png");
  rn = loadImage("processing/data/rn.png");
  sane = loadImage("processing/data/sane.png");
  sf = loadImage("processing/data/sf.png");
  sj = loadImage("processing/data/sj.png");
  sl = loadImage("processing/data/sl.png");
  snc = loadImage("processing/data/snc.png");
  st = loadImage("processing/data/st.png");
  tf = loadImage("processing/data/tf.png");
  tuc = loadImage("processing/data/tuc.png");  
  compu = loadImage("processing/data/compu.png");
  hist = loadImage("processing/data/hist.png");  
  coor = loadStrings("query.php?tipo=load3");
  coords = loadStrings("query.php?tipo=load");
  pobla = loadStrings("query.php?tipo=load2");

cargarDatos();
}

void draw() { 
noLoop();
}

void mouseMoved(){
   cargarDatos();
}

void cargarDatos() {
background(360);
  
int bb=6;
image(mapa, width-400,height-600);
image(compu, width/2+150,height-30); 
image(hist, width-40,height-30); 

stroke(0);
strokeWeight(1);
fill(0,200);
ellipse(width-210,height-535,bb,bb);      
ellipse(width-190,height-520,bb,bb);     
ellipse(width-120,height-505,bb,bb);      
ellipse(width-150,height-490,bb,bb);      
ellipse(width-50,height-480,bb,bb);      
ellipse(width-110,height-450,bb,bb);     
ellipse(width-150,height-430,bb,bb);  
ellipse(width-130,height-400,bb,bb);  
ellipse(width-185,height-470,bb,bb);  
ellipse(width-215,height-485,bb,bb); 
ellipse(width-245,height-480,bb,bb);   
ellipse(width-240,height-440,bb,bb);  
ellipse(width-195,height-410,bb,bb);  
ellipse(width-225,height-380,bb,bb);  
ellipse(width-260,height-415,bb,bb); 
ellipse(width-260,height-370,bb,bb);  
ellipse(width-210,height-320,bb,bb); 
ellipse(width-265,height-290,bb,bb);  
ellipse(width-240,height-265,bb,bb);   
ellipse(width-124,height-355,bb,bb);   
ellipse(width-147,height-324,bb,bb);
ellipse(width-151,height-87,bb,bb);  
ellipse(width-225,height-210,bb,bb);  
ellipse(width-265,height-80,bb,bb);   
ellipse(width-240,height-50,bb,bb);   
ellipse(width-67,height-27,bb,bb);   

 if(mouseX > width-124-10 && mouseX <  width-124+10 && mouseY > height-355-10 && mouseY < height-355+10){
 image(cf, width-132,height-363);
 }
 if(mouseX > width-147-10 && mouseX <  width-147+10 && mouseY > height-324-10 && mouseY < height-324+10){
 image(ba, width-189,height-380);
 }
 if(mouseX > width-245-10 && mouseX <  width-245+10 && mouseY > height-480-10 && mouseY < height-480+10){
 image(cat, width-272,height-516);
 }
 if(mouseX > width-215-10 && mouseX <  width-215+10 && mouseY > height-485-10 && mouseY < height-485+10){
 image(tuc, width-231,height-502);
 }
 if(mouseX > width-150-10 && mouseX <  width-150+10 && mouseY > height-490-10 && mouseY < height-490+10){
 image(ch, width-185,height-532);
 }
 if(mouseX > width-225-10 && mouseX <  width-225+10 && mouseY > height-210-10 && mouseY < height-210+10){
 image(chb, width-301,height-238);
 }
 if(mouseX > width-195-10 && mouseX <  width-195+10 && mouseY > height-410-10 && mouseY < height-410+10){
 image(cor, width-222,height-444);
 }
 if(mouseX > width-110-10 && mouseX <  width-110+10 && mouseY > height-450-10 && mouseY < height-450+10){
 image(corr, width-135,height-479);
 }
 if(mouseX > width-130-10 && mouseX <  width-130+10 && mouseY > height-400-10 && mouseY < height-400+10){
 image(ent, width-152,height-431);
 }
 if(mouseX > width-120-10 && mouseX <  width-120+10 && mouseY > height-505-10 && mouseY < height-505+10){
 image(fm, width-170,height-557);
 }
 if(mouseX > width-151-10 && mouseX <  width-151+10 && mouseY > height-87-10 && mouseY < height-87+10){
 image(im, width-178,height-95);
 }
 if(mouseX > width-210-10 && mouseX <  width-210+10 && mouseY > height-535-10 && mouseY < height-535+10){
 image(jj, width-245,height-570);
 }
 if(mouseX > width-240-10 && mouseX <  width-240+10 && mouseY > height-440-10 && mouseY < height-440+10){
 image(lar, width-278,height-474);
 }
 if(mouseX > width-210-10 && mouseX <  width-210+10 && mouseY > height-320-10 && mouseY < height-320+10){
 image(lp, width-255,height-354);
 }
  if(mouseX > width-260-10 && mouseX <  width-260+10 && mouseY > height-370-10 && mouseY < height-370+10){
 image(md, width-287,height-402);
 }
 if(mouseX > width-50-10 && mouseX <  width-50+10 && mouseY > height-480-10 && mouseY < height-480+10){
 image(ms, width-79,height-501);
 }
 if(mouseX > width-265-10 && mouseX <  width-265+10 && mouseY > height-290-10 && mouseY < height-290+10){
 image(neq, width-300,height-332);
 }
  if(mouseX > width-240-10 && mouseX <  width-240+10 && mouseY > height-265-10 && mouseY < height-265+10){
 image(rn, width-299,height-313);
 }
 if(mouseX > width-185-10 && mouseX <  width-185+10 && mouseY > height-470-10 && mouseY < height-470+10){
 image(sane, width-215,height-508);
 }
 if(mouseX > width-150-10 && mouseX <  width-150+10 && mouseY > height-430-10 && mouseY < height-430+10){
 image(sf, width-181,height-468);
 }
 if(mouseX > width-260-10 && mouseX <  width-260+10 && mouseY > height-415-10 && mouseY < height-415+10){
 image(sj, width-291,height-461);
 }
 if(mouseX > width-225-10 && mouseX <  width-225+10 && mouseY > height-380-10 && mouseY < height-380+10){
 image(sl, width-246,height-407);
 }
 if(mouseX > width-265-10 && mouseX <  width-265+10 && mouseY > height-80-10 && mouseY < height-80+10){
 image(snc, width-304,height-171);
 }
 if(mouseX > width-190-10 && mouseX <  width-190+10 && mouseY > height-520-10 && mouseY < height-520+10){
 image(st, width-265,height-568);
 }
  if(mouseX > width-240-10 && mouseX <  width-240+10 && mouseY > height-50-10 && mouseY < height-50+10){
 image(tf, width-248,height-67);
 }

 if(mouseX > width-67-10 && mouseX <  width-67+10 && mouseY > height-27-10 && mouseY < height-27+10){
 image(an, width-107,height-103);
 }
 
   textFont("Georgia",10);
   textMode(CENTER);

   fill(0);
   text("Republica Argentina",width-180,height-200);
   text("40.117.096 - Habitantes",width-180,height-180);
   text("3.745.997 - Km2 de Superficie",width-180,height-160);
   
 //-------------------------------------------------------------------------  

if(mouseX > width-151-10 && mouseX <  width-151+10 && mouseY > height-87-10 && mouseY < height-87+10){       //islas malvinas
   textSize(11);   
   fill(0);
   text(islas, 40,20,400,200);
}

 if(mouseX > width-40 && mouseX <  width-40+30 && mouseY > height-30 && mouseY < height-30+30){
   textSize(12); 
   textLeading (15);  
   fill(0);
   text(histo[0],40,20,500,50);
   
  for(int i =1; i<histo.length; i++){
     text(histo[i],40,-10+70*i,500,500);
   }  
} 


 for (int i=0; i < coor.length-6; i++) {
          
      int[] valor =split(coor[i], ",");
       
                for (int u = 0; u < valor.length; u++) {
              
                     vv3 = new int[coor.length][valor.length]; 
                         
                               vv3[i][u]=valor[u];  
  
int raid=4000;   
int rtodosi=vv3[i][1]/raid;
int rtodono=vv3[i][2]/raid;
int rtodovasi=vv3[i][3]/raid;
int rtodovano=vv3[i][4]/raid;
int rtodomusi=vv3[i][5]/raid;
int rtodomuno=vv3[i][6]/raid;
String edadd=vv3[i][0];

int xcomp=90;
int ycomp=365;

if(mouseX > width/2+150 && mouseX <  width/2+150+30 && mouseY > height-30 && mouseY < height-30+30){

if(edadd!=0){
fill(0);
textMode(CENTER);
textSize(9);
text(edadd,50+30*i,40);
}

if(i==0){
stroke(0,100);
strokeWeight(0.5);
line(50,50,700,50);
}
if(vv3[i][u]==vv3[i][0]){
textSize(10);
stroke(0,100);
strokeWeight(0.5);
line(50,50+20*i,700,50+20*i);
fill(0);
text(80000*i,20,50+20*i);
}



noStroke(0);
fill(250,100,100,250);
rect(50+30*i,50,5,rtodovasi);
fill(200,100,100,250);
rect(60+30*i,50,5,rtodovano);

fill(350,100,100,250);
rect(55+30*i,50,5,rtodomusi);
fill(320,100,100,250);
rect(65+30*i,50,5,rtodomuno);


if(vv3[i][u]==vv3[0][0]){
fill(0);
textSize(12);
text("Utilización de Computadoras en Viviendas Particulares - Edad/Sexo",90,20);
textSize(9);
fill(0);
text("Varones si",xcomp,ycomp);
text("Mujeres si",xcomp,ycomp+20);
text("Varones No",xcomp,ycomp+40);
text("Mujeres No",xcomp,ycomp+60);
}


noStroke();
fill(250,100,100,100);
ellipse(xcomp-7,ycomp-2,8,8);
fill(350,100,100,100);
ellipse(xcomp-7,ycomp+18,8,8);
fill(200,100,100,250);
ellipse(xcomp-7,ycomp+38,5,5);
fill(320,100,100,250);
ellipse(xcomp-7,ycomp+58,5,5);

} 
  
}  
}

       for (int i=1; i < coords.length-1; i++) {
          
      int[] valor = int(split(coords[i], ","));
       
                for (int u = 0; u < valor.length; u++) {
              
                     vv = new int[coords.length][valor.length]; 
                         
                               vv[i][u]=valor[u];  
  
  int xx=6; 
  int xper=width/2;
  int yper=height/2-50;
  int xtodo=xx*i;
  int ytodo=height-vv[i][1]/2500-5;
  int rvper=vv[i][2]/1000;
  int rmper=vv[i][3]/1000;

  if(vv[i][1]==vv[i][u]){
    noStroke();
    fill(40,100,100,80);
    rect(xx*i,height-5,5,-vv[i][1]/2500);  
    stroke(40,100,100,200);
    strokeWeight(5);    
    point(2+xx*i,height-5-vv[i][1]/2500);
   } 
 
 if(vv[i][2]==vv[i][u]){ 
    stroke(250,100,100,200);
    strokeWeight(5);    
    point(3+xx*i,height-5-vv[i][2]/2500);    
   }
   
 if(vv[i][3]==vv[i][u]){ 
    stroke(350,100,100,200);
    strokeWeight(5);    
    point(3+xx*i,height-5-vv[i][3]/2500);     
  }

 textSize(10);
 if(mouseX > xx*i && mouseX < xx*i+5 && mouseY > -vv[i][1]/2500-10  && mouseY < height-5){
    noStroke();
    fill(0,80);
    rect(xx*i,height-5,5,-vv[i][1]/2500);
    
    fill(0);   
    if(vv[i][u]==vv[i][0]){
    text("Edad: "+vv[i][0], 25, height-50);
    noStroke();
    fill(0,80);
    rect(16,height-60, 5,10);  
    }
    if(vv[i][u]==vv[i][1]){
    text("Poblacion Total: "+vv[i][1], 25, height-40);
    stroke(40,100,100,200);
    strokeWeight(5);    
    point(18,height-45);  
    }
    if(vv[i][u]==vv[i][2]){
    text("Varones: "+vv[i][2], 25, height-30);
    stroke(250,100,100,200);
    strokeWeight(5);    
    point(18,height-35);    
    }
    if(vv[i][u]==vv[i][3]){
    text("Mujeres: "+vv[i][3], 25, height-20);
    stroke(350,100,100,200);
    strokeWeight(5);    
    point(18,height-25);  
    }

  } 
  
} 
} 
 
     for (int i=1; i < pobla.length-1; i++) {
          
       int[] prob = split(pobla[i], ",");

            for (int u = 0; u < prob.length; u++) {              
                    
               vv2 = new int[pobla.length][prob.length];                          
                   
                    vv2[i][u]=prob[u]; 
      

  int raid=15000;
  int raid2=1000;
  int raid3=10000; 
  
  
int rhab=vv2[i][1]/raid;
int rsup=vv2[i][2]/raid;
int ralf=vv2[i][4]/raid;
int ranal=vv2[i][5]/raid;
int rviv=vv2[i][6]/raid;
int rcob=vv2[i][7]/raid;
int rncob=vv2[i][8]/raid;
int rhmas=vv2[i][9]/raid;


int xsup=width/2+160;     
int ysup=20+20*i;  

int xprob=40;       
int yprob=50; 

int xhab=width/2;       
int yhab=height/2;

int xalf=100;       
int yalf=190;

int xviv=250;    
int yviv=70;

int xcob=370;
int ycob=95;  
  
int xhmas=width/2-210;      
int yhmas=height/2-40;

int alph=20;

  smooth();
   fill(rhab,rhab,rhab,alph);
   strokeWeight(1);
   stroke(0,alph);
   ellipse(xhab,yhab,rhab,rhab);  
   
   smooth();
   fill(rhmas,rhmas,rhmas,alph);
   strokeWeight(1);
   stroke(0,alph);
   ellipse(xhmas,yhmas,rhmas,rhmas);  

   
   fill(rsup,rsup,rsup,alph+20);       
   stroke(0,alph);
   ellipse(xsup,ysup,rsup,rsup);  
   
   stroke(0,alph);
   fill(ralf,ralf,ralf,alph);
   ellipse(xalf,yalf,ralf,ralf);     
   fill(ranal,ranal,ranal,alph);
   ellipse(xalf-40,yalf-40,ranal,ranal);    
   
   fill(rviv,rviv,rviv,alph);
   stroke(0,alph);
   ellipse(xviv,yviv,rviv,rviv);       
   
   stroke(0,10);
   fill(rcob,rcob,rcob,10);
   ellipse(xcob,ycob,rcob,rcob);   
   fill(rncob,rncob,rncob,10);
   ellipse(xcob+150,ycob,rncob,rncob);    


   textSize(12);
   if(mouseX > width-xy[i][0]-10 && mouseX <  width-xy[i][0]+10 && mouseY > height-xy[i][1]-10 && mouseY < height-xy[i][1]+10){  //Todos menos antartida
   if(vv2[i][u]!=0){

   fill(rhab,rhab,rhab,150);
   strokeWeight(1);
   stroke(0,300);
   ellipse(xhab,yhab,rhab,rhab);   
   
   smooth();
   fill(rhmas,rhmas,rhmas,150);
   strokeWeight(1);
   stroke(0,300);
   ellipse(xhmas,yhmas,rhmas,rhmas);   
  
   fill(rsup,rsup,rsup,100);
   stroke(0,200);
   ellipse(xsup,ysup,2,2);
   ellipse(xsup,ysup,rsup,rsup);     
   
   stroke(0,300);
   fill(ralf,ralf,ralf,100);
   ellipse(xalf,yalf,ralf,ralf);     
   fill(ranal,ranal,ranal,100);
   ellipse(xalf-40,yalf-40,ranal,ranal);   
   
   fill(rviv,rviv,rviv,100);
   stroke(0,200);
   ellipse(xviv,yviv,rviv,rviv);        
   
   stroke(0,200);
   fill(rcob,rcob,rcob,100);
   ellipse(xcob,ycob,rcob,rcob);    
   fill(rncob,rncob,rncob,100);
   ellipse(xcob+150,ycob,rncob,rncob);  
 
   fill(0);
   textSize(11);  
  
   if(vv2[i][0]!=0){                       
   text(vv2[i][0],xprob+70,yprob-30);
   }
   if(vv2[i][3]!=0){
   text(vv2[i][3],xprob+70,yprob-10);
   }
   
   if(vv2[i][9]!=0){
   text(vv2[i][9],xhmas+20,yhmas+30); 
   }
   
   if(vv2[i][4]==vv2[i][u]){                                
   text(vv2[i][4],xalf+80,yalf-5); 
   }
   
   if(vv2[i][5]==vv2[i][u]){                                  
   text(vv2[i][5],xalf+40,yalf-40); 
   }
   
   if(vv2[i][6]==vv2[i][u]){                                  
   text(vv2[i][6],xviv+10,yviv+20); 
   }
   
   if(vv2[i][7]==vv2[i][u]){                                   
   text(vv2[i][7],xcob+40,ycob+30); 
   }
      if(vv2[i][8]==vv2[i][u]){                                 
   text(vv2[i][8],xcob+150,ycob-30); 
   }
   
   if(vv2[i][u]==vv2[i][0]){
   strokeWeight(0.4);   
   line(xsup,ysup,width-xy[i][0],height-xy[i][1]);                     
   line(xprob,yprob,xhab,yhab);                     
   line(xhab,yhab,xsup,ysup);                  
   line(xhab,yhab,xhmas,yhmas);               
   line(xhmas,yhmas,xalf,yalf);                
   line(xalf-40,yalf-40,xalf,yalf);         
   line(xprob,yprob,xviv,yviv);                 
   line(xhab,yhab,xcob,ycob);                 
   line(xcob,ycob,xcob+150,ycob);                  
   strokeWeight(5);   
   point(xhab,yhab);
   point(width-xy[i][0],height-xy[i][1]);
   point(xhmas,yhmas);
  
   noStroke();
   fill(0);
   ellipse(xprob,yprob,5,5);
   ellipse(xcob,ycob,5,5);
   ellipse(xcob+150,ycob,5,5);  
   ellipse(xviv,yviv,5,5);
   ellipse(xalf,yalf,5,5);
   } 
   
   if(vv2[i][9]!=0){
   textSize(11); 
   text("Habitantes de 10 años y mas: ",xhmas-130,yhmas+30);  
   }
   
   if(vv2[i][4]!=0){
   textSize(10);
   fill(0);
   text("Alfabetos:",xalf+25,yalf-5);
   text("Analfabetos:",xalf-30,yalf-40);
   text("Viviendas:",xviv-50,yviv+20);
   text("Provincia:",xprob+10,yprob-30);
   text("Hab / Km2:",xprob+10,yprob-10);
   text("Percibe Jubilaciòn:",xcob-60,ycob+30);           
   text("No Percibe Jubilaciòn:",xcob+40,ycob-30);
   }
   if(vv2[i][1]!=0){
        textSize(10);
   text("Habitantes: "+vv2[i][1],xhab,yhab+30);  
   }
   if(vv2[i][2]!=0){
        textSize(10);
   text("Superficie: "+vv2[i][2]+" km2",xsup-60,ysup+30);
   }


   }
   } 
  

 if(mouseX > width-67-10 && mouseX <  width-67+10 && mouseY > height-27-10 && mouseY < height-27+10){                           //antartida
  if(vv2[24][u]!=0){
   
   fill(rhab,rhab,rhab,150);
   strokeWeight(1);
   stroke(0,300);
   ellipse(xhab,yhab,rhab,rhab);         
   
   smooth();
   fill(rhmas,rhmas,rhmas,150);
   strokeWeight(1);
   stroke(0,300);
   ellipse(xhmas,yhmas,rhmas,rhmas);   
  
   fill(rsup,rsup,rsup,100);
   stroke(0,200);
   ellipse(xsup,ysup,2,2);
   ellipse(xsup,ysup,rsup,rsup);      
   
   stroke(0,300);
   fill(ralf,ralf,ralf,100);
   ellipse(xalf,yalf,ralf,ralf);     
   fill(ranal,ranal,ranal,100);
   ellipse(xalf-40,yalf-40,ranal,ranal);    
   
   fill(rviv,rviv,rviv,100);
   stroke(0,200);
   ellipse(xviv,yviv,rviv,rviv);         
   
   stroke(0,200);
   fill(rcob,rcob,rcob,100);
   ellipse(xcob,ycob,rcob,rcob);    
   fill(rncob,rncob,rncob,100);
   ellipse(xcob+150,ycob,rncob,rncob);
 
   fill(0);
   textSize(11);  
  
   if(vv2[i][0]!=0){                       
   text(vv2[i][0],xprob+70,yprob-30);
   }
   if(vv2[i][3]!=0){
   text(vv2[i][3],xprob+70,yprob-10);
   }
   
   if(vv2[i][9]!=0){
   text(vv2[i][9],xhmas+20,yhmas+30);  
   }
   
   if(vv2[i][4]==vv2[i][u]){                                  
   text(vv2[i][4],xalf+80,yalf-5); 
   }
   
   if(vv2[i][5]==vv2[i][u]){                                   
   text(vv2[i][5],xalf+40,yalf-40); 
   }
   
   if(vv2[i][6]==vv2[i][u]){                                 
   text(vv2[i][6],xviv+10,yviv+20); 
   }
   
   if(vv2[i][7]==vv2[i][u]){                                  
   text(vv2[i][7],xcob+40,ycob+30); 
   }
   if(vv2[i][8]==vv2[i][u]){                                 
   text(vv2[i][8],xcob+150,ycob-30); 
   }


   
   if(vv2[i][u]==vv2[i][0]){
   strokeWeight(0.4);   
   line(xsup,ysup,width-67,height-27);                       
   line(xprob,yprob,xhab,yhab);                      
   line(xhab,yhab,xsup,ysup);                   
   line(xhab,yhab,xhmas,yhmas);                 
   line(xhmas,yhmas,xalf,yalf);                
   line(xalf-40,yalf-40,xalf,yalf);          
   line(xprob,yprob,xviv,yviv);               
   line(xhab,yhab,xcob,ycob);                 
   line(xcob,ycob,xcob+150,ycob);                
   strokeWeight(5);   
   point(xhab,yhab);
   point(width-67,height-27);
   point(xhmas,yhmas);
  
   noStroke();
   fill(0);
   ellipse(xprob,yprob,5,5);
   ellipse(xcob,ycob,5,5);
   ellipse(xcob+150,ycob,5,5);  
   ellipse(xviv,yviv,5,5);
   ellipse(xalf,yalf,5,5);
   } 
   
   if(vv2[i][9]!=0){
   textSize(11); 
   text("Habitantes de 10 años y mas: ",xhmas-130,yhmas+30);  
   }
   
   if(vv2[i][4]!=0){
   textSize(10);
   fill(0);
   text("Alfabetos:",xalf+25,yalf-5);
   text("Analfabetos:",xalf-30,yalf-40);
   text("Viviendas:",xviv-50,yviv+20);
   text("Provincia:",xprob+10,yprob-30);
   text("Hab / Km2:",xprob+10,yprob-10);
   text("Percibe Jubilaciòn:",xcob-60,ycob+30);           
   text("No Percibe Jubilaciòn:",xcob+40,ycob-30);
   }
   if(vv2[i][1]!=0){text("Habitantes: "+vv2[i][1],xhab,yhab+30);}
   if(vv2[i][2]!=0){text("Superficie: "+vv2[i][2]+" km2",xsup-60,ysup+30);}
 }} 
  

 }}} 
 


