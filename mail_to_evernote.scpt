FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	��
http://veritrope.com
Apple Mail to Evernote
Version 2.06
March 10, 2013

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here: 
http://veritrope.com/support

// IMPORTANT LINKS:
-- Project Page: http://veritrope.com/code/apple-mail-to-evernote
-- GROWL (Required): http://bit.ly/GrowlApp
-- FastScripts (Optional): http://bit.ly/FastScripts

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

THE APP STORE VERSION OF GROWL IS REQUIRED FOR THIS SCRIPT TO WORK! 
(If you do not have it installed, you'll get an error when you try to save this script.)
	-- GROWL IS AVAILABLE FOR DOWNLOAD HERE:
	-- http://bit.ly/GrowlApp

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application). 
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

	(Optional but recommended)
	Easier Keyboard Shortcut with FastScripts
	-- Download and Install FastScripts here: 
	-- http://bit.ly/FastScripts

// CHANGELOG:

    * 2.06
    SWITCH FOR PLAINTEXT OPERATION (FOR NON-ENGLISH ENCODING), FIX FOR MISSING RECIPIENT NAME

    * 2.05
    FIX FOR LEADING SPACES IN TAG LIST
	
    * 2.04
    CHANGE TO DISPLAY MULTIPLE TO: RECIPIENTS, GROWL TWEAKS
    
    * 2.03
    FIXES AND ADJUSTMENTS FOR TAGS, ATTACHMENT OPERATIONS
    
    * 2.02
    CHANGED SOME VARIABLES TO WORK BETTER WITH "OPEN IN SCRIPT EDITOR" BUTTON
	
    * 2.01
    CONSOLIDATED SOME BASE64 CODE INTO A HANDLER, FIXED BUGS WITH ENCODING

    * 2.00 FINAL
    ELIMINATED MAILTAGS SUPPORT, GROWL REQUIREMENT, REWORKED HTML EMAIL TRANSFER FOR 10.7+ SYSTEMS

    * 2.00 b2
    BUG FIXES (USER SWITCH FOR NOTEBOOK, BETTER BASE 64 DETECTION, ATTACHMENT FIX)

    * 2.00 b1
    HTML MESSAGES, APPEND ATTACHMENTS, MAILTAGS, QUIET TEMP FILE REMOVAL

    * 1.30 (June 5, 2010)  
    ATTACHMENT CREATION. LAYING TRACK FOR HTML NOTES.
    
    * 1.20 (July 25, 2009) 
    STREAMLINED MENU FOR NOTE EXPORT
    
    * 1.10 (May 6, 2009)  
    ACTIVATED MESSAGE LINKING/ADDED EVERNOTE ICON TO DIALOG BOX/MISC. CLEAN-UP!
    
    * 1.01 (April 23, 2009) 
    FIXED TYPOGRAPHICAL ERROR
    
    * 1.00 (April 20, 2009) 
    INITIAL RELEASE OF SCRIPT
    
 �    
 h t t p : / / v e r i t r o p e . c o m  
 A p p l e   M a i l   t o   E v e r n o t e  
 V e r s i o n   2 . 0 6  
 M a r c h   1 0 ,   2 0 1 3  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   L I K E   T H I S   S C R I P T ?  
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e :    
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t  
  
 / /   I M P O R T A N T   L I N K S :  
 - -   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e  
 - -   G R O W L   ( R e q u i r e d ) :   h t t p : / / b i t . l y / G r o w l A p p  
 - -   F a s t S c r i p t s   ( O p t i o n a l ) :   h t t p : / / b i t . l y / F a s t S c r i p t s  
  
 / /   R E Q U I R E M E N T S :  
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N  
  
 T H E   A P P   S T O R E   V E R S I O N   O F   G R O W L   I S   R E Q U I R E D   F O R   T H I S   S C R I P T   T O   W O R K !    
 ( I f   y o u   d o   n o t   h a v e   i t   i n s t a l l e d ,   y o u ' l l   g e t   a n   e r r o r   w h e n   y o u   t r y   t o   s a v e   t h i s   s c r i p t . )  
 	 - -   G R O W L   I S   A V A I L A B L E   F O R   D O W N L O A D   H E R E :  
 	 - -   h t t p : / / b i t . l y / G r o w l A p p  
  
 / /   I N S T A L L A T I O N :      
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) .    
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ;  
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s .  
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t .  
  
 	 ( O p t i o n a l   b u t   r e c o m m e n d e d )  
 	 E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s  
 	 - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e :    
 	 - -   h t t p : / / b i t . l y / F a s t S c r i p t s  
  
 / /   C H A N G E L O G :  
  
         *   2 . 0 6  
         S W I T C H   F O R   P L A I N T E X T   O P E R A T I O N   ( F O R   N O N - E N G L I S H   E N C O D I N G ) ,   F I X   F O R   M I S S I N G   R E C I P I E N T   N A M E  
  
         *   2 . 0 5  
         F I X   F O R   L E A D I N G   S P A C E S   I N   T A G   L I S T  
 	  
         *   2 . 0 4  
         C H A N G E   T O   D I S P L A Y   M U L T I P L E   T O :   R E C I P I E N T S ,   G R O W L   T W E A K S  
          
         *   2 . 0 3  
         F I X E S   A N D   A D J U S T M E N T S   F O R   T A G S ,   A T T A C H M E N T   O P E R A T I O N S  
          
         *   2 . 0 2  
         C H A N G E D   S O M E   V A R I A B L E S   T O   W O R K   B E T T E R   W I T H   " O P E N   I N   S C R I P T   E D I T O R "   B U T T O N  
 	  
         *   2 . 0 1  
         C O N S O L I D A T E D   S O M E   B A S E 6 4   C O D E   I N T O   A   H A N D L E R ,   F I X E D   B U G S   W I T H   E N C O D I N G  
  
         *   2 . 0 0   F I N A L  
         E L I M I N A T E D   M A I L T A G S   S U P P O R T ,   G R O W L   R E Q U I R E M E N T ,   R E W O R K E D   H T M L   E M A I L   T R A N S F E R   F O R   1 0 . 7 +   S Y S T E M S  
  
         *   2 . 0 0   b 2  
         B U G   F I X E S   ( U S E R   S W I T C H   F O R   N O T E B O O K ,   B E T T E R   B A S E   6 4   D E T E C T I O N ,   A T T A C H M E N T   F I X )  
  
         *   2 . 0 0   b 1  
         H T M L   M E S S A G E S ,   A P P E N D   A T T A C H M E N T S ,   M A I L T A G S ,   Q U I E T   T E M P   F I L E   R E M O V A L  
  
         *   1 . 3 0   ( J u n e   5 ,   2 0 1 0 )      
         A T T A C H M E N T   C R E A T I O N .   L A Y I N G   T R A C K   F O R   H T M L   N O T E S .  
          
         *   1 . 2 0   ( J u l y   2 5 ,   2 0 0 9 )    
         S T R E A M L I N E D   M E N U   F O R   N O T E   E X P O R T  
          
         *   1 . 1 0   ( M a y   6 ,   2 0 0 9 )      
         A C T I V A T E D   M E S S A G E   L I N K I N G / A D D E D   E V E R N O T E   I C O N   T O   D I A L O G   B O X / M I S C .   C L E A N - U P !  
          
         *   1 . 0 1   ( A p r i l   2 3 ,   2 0 0 9 )    
         F I X E D   T Y P O G R A P H I C A L   E R R O R  
          
         *   1 . 0 0   ( A p r i l   2 0 ,   2 0 0 9 )    
         I N I T I A L   R E L E A S E   O F   S C R I P T  
      l     ��������  ��  ��        l      ��  ��    l f 
======================================
// USER SWITCHES 
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U S E R   S W I T C H E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K       j     �� !��  0 tagging_switch tagging_Switch ! m      " " � # #  O N    $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ) � * * `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , '  + , + l     �� - .��   - = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    . � / / n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O ,  0 1 0 l     �� 2 3��   2 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    3 � 4 4 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . 1  5 6 5 l     �� 7 8��   7   (EMPTY SENDS TO DEFAULT)    8 � 9 9 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 6  : ; : j    �� <�� 0 
evnotebook 
EVnotebook < m     = = � > >   ;  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    D � E E v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , B  F G F l     �� H I��   H > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    I � J J p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) G  K L K j    �� M�� 0 
defaulttag 
defaultTag M m     N N � O O  E m a i l   M e s s a g e L  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T 6 0 SET THIS TO "OFF" IF YOU WANT TO PROCESS EMAILS    U � V V `   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   P R O C E S S   E M A I L S S  W X W l     �� Y Z��   Y ; 5 AS PLAINTEXT (USEFUL FOR NON-ENGLISH ENCODED EMAILS)    Z � [ [ j   A S   P L A I N T E X T   ( U S E F U L   F O R   N O N - E N G L I S H   E N C O D E D   E M A I L S ) X  \ ] \ j   	 �� ^�� 0 html_switch HTML_Switch ^ m   	 
 _ _ � ` `  O N ]  a b a l     ��������  ��  ��   b  c d c l      �� e f��   e o i 
======================================
// OTHER PROPERTIES 
======================================
    f � g g �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   O T H E R   P R O P E R T I E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 d  h i h j    �� j�� 0 successcount successCount j m    ����   i  k l k j    �� m�� 0 growl_running growl_Running m m     n n � o o 
 f a l s e l  p q p j    �� r�� 0 mytitle myTitle r m     s s � t t  M a i l   I t e m q  u v u j    �� w�� 0 themessages theMessages w J    ����   v  x y x j    �� z�� 0 thismessage thisMessage z m     { { � | |   y  } ~ } j     �� �� 0 itemnum itemNum  m     � � � � �  0 ~  � � � j   ! %�� ��� 0 attnum attNum � m   ! $ � � � � �  0 �  � � � j   & *�� ��� 0 errnum errNum � m   & ) � � � � �  0 �  � � � j   + /�� ��� 0 usertag userTag � m   + . � � � � �   �  � � � j   0 3�� ��� 0 evtag EVTag � J   0 2����   �  � � � j   4 8�� ��� 0 	multihtml 	multiHTML � m   4 7 � � � � �   �  � � � j   9 <�� ���  0 thesourceitems theSourceItems � J   9 ;����   �  � � � j   = C�� ��� 0 mysource mySource � m   = @ � � � � �   �  � � � j   D J�� ���  0 decode_success decode_Success � m   D G � � � � �   �  � � � j   K Q�� ��� 0 	finalhtml 	finalHTML � m   K N � � � � �   �  � � � j   R X�� ��� 0 	myheaders 	myHeaders � m   R U � � � � �   �  � � � j   Y ^�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   Y [����   �  � � � j   _ e�� ��� 0 
base64_raw 
base64_Raw � m   _ b � � � � �   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � k e 
======================================
// MAIN PROGRAM 
======================================
    � � � � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  RESET ITEMS    � � � �  R E S E T   I T E M S �  � � � l     ����� � r      � � � m      � � � � �  0 � o      ���� 0 successcount successCount��  ��   �  � � � l    ����� � r     � � � m    	 � � � � �  0 � o      ���� 0 errnum errNum��  ��   �  � � � l    ����� � r     � � � m     � � � � �   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr��  ��   �  � � � l     ��������  ��  ��   �  � � � l  ! ����� � Q   ! � � � � k    x � �  � � � l   �� � ���   �  CHECK FOR GROWL    � � � �  C H E C K   F O R   G R O W L �  � � � n    � � � I    �������� 0 growl_check Growl_Check��  ��   �  f     �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   �  SET UP ACTIVITIES    � � � � " S E T   U P   A C T I V I T I E S �  � � � n   $ � � � I     $�������� 0 
item_check 
item_Check��  ��   �  f      �  � � � l  % %��������  ��  ��   �  � � � l  % %�� � ���   �  MESSAGES SELECTED?    � �   $ M E S S A G E S   S E L E C T E D ? �  Z   % a�� >  % - o   % *���� 0 themessages theMessages J   * ,����   k   0 W 	
	 l  0 0��������  ��  ��  
  l  0 0����    GET FILE COUNT    �  G E T   F I L E   C O U N T  n  0 : I   1 :������ 0 
item_count 
item_Count �� o   1 6���� 0 themessages theMessages��  ��    f   0 1  l  ; ;��������  ��  ��    l  ; ;����   # ANNOUNCE THE EXPORT OF ITEMS	    � : A N N O U N C E   T H E   E X P O R T   O F   I T E M S 	  n  ; J  I   < J��!���� 0 process_items process_Items! "#" o   < A���� 0 itemnum itemNum# $��$ o   A F���� 0 attnum attNum��  ��     f   ; < %&% l  K K��������  ��  ��  & '(' l  K K��)*��  ) # PROCESS MAIL ITEMS FOR EXPORT   * �++ : P R O C E S S   M A I L   I T E M S   F O R   E X P O R T( ,-, n  K U./. I   L U��0���� 0 mail_process mail_Process0 1��1 o   L Q���� 0 themessages theMessages��  ��  /  f   K L- 2�2 l  V V�~�}�|�~  �}  �|  �  ��   k   Z a33 454 l  Z Z�{67�{  6  NO MESSAGES SELECTED   7 �88 ( N O   M E S S A G E S   S E L E C T E D5 9�z9 r   Z a:;: m   Z [�y�y��; o      �x�x 0 successcount successCount�z   <=< l  b b�w�v�u�w  �v  �u  = >?> l  b b�t@A�t  @  GROWL RESULTS   A �BB  G R O W L   R E S U L T S? CDC n  b vEFE I   c v�sG�r�s 0 growl_growler growl_GrowlerG HIH o   c h�q�q 0 growl_running growl_RunningI JKJ o   h m�p�p 0 successcount successCountK L�oL o   m r�n�n 0 errnum errNum�o  �r  F  f   b cD MNM l  w w�m�l�k�m  �l  �k  N O�jO l  w w�iPQ�i  P  ERROR HANDLING    Q �RR  E R R O R   H A N D L I N G  �j   � R      �hST
�h .ascrerr ****      � ****S o      �g�g 0 errtext errTextT �fU�e
�f 
errnU o      �d�d 0 errnum errNum�e   � Z   �!VWX�cV =  � �YZY o   � ��b�b 0 growl_running growl_RunningZ m   � ��a
�a boovtrueW k   � �[[ \]\ l  � ��`�_�^�`  �_  �^  ] ^_^ l  � ��]`a�]  `  GROWL FAILURE FOR CANCEL   a �bb 0 G R O W L   F A I L U R E   F O R   C A N C E L_ cdc Z   � �ef�\ge =  � �hih o   � ��[�[ 0 errnum errNumi m   � ��Z�Z��f O   � �jkj k   � �ll mnm I  � ��Y�Xo
�Y .notifygrnull��� ��� null�X  o �Wpq
�W 
namep l 	 � �r�V�Ur m   � �ss �tt ( F a i l u r e   N o t i f i c a t i o n�V  �U  q �Tuv
�T 
titlu l 	 � �w�S�Rw m   � �xx �yy  U s e r   C a n c e l l e d�S  �R  v �Qz{
�Q 
descz l 	 � �|�P�O| m   � �}} �~~ " F a i l e d   t o   e x p o r t !�P  �O  { �N�
�N 
appl m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �M��L
�M 
iapp� m   � ��� ���  M a i l�L  n ��K� l  � ��J�I�H�J  �I  �H  �K  k m   � ����                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �\  g k   � ��� ��� l  � ��G�F�E�G  �F  �E  � ��� l  � ��D���D  �  GROWL FAILURE FOR ERROR   � ��� . G R O W L   F A I L U R E   F O R   E R R O R� ��C� O   � ���� k   � ��� ��� I  � ��B�A�
�B .notifygrnull��� ��� null�A  � �@��
�@ 
name� l 	 � ���?�>� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n�?  �>  � �=��
�= 
titl� l 	 � ���<�;� m   � ��� ���  I m p o r t   F a i l u r e�<  �;  � �:��
�: 
desc� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��9
�9 
ret � o   � ��8�8 0 mytitle myTitle� l 	 � ���7�6� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  �7  �6  � o   � ��5
�5 
ret � l 
 � ���4�3� o   � ��2�2 0 errtext errText�4  �3  � �1��
�1 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �0��/
�0 
iapp� m   � ��� ���  M a i l�/  � ��.� l  � ��-�,�+�-  �,  �+  �.  � m   � ����                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �C  d ��� l  � ��*�)�(�*  �)  �(  � ��'� l  � ��&���&  � $ NON-GROWL ERROR MSG. FOR ERROR   � ��� < N O N - G R O W L   E R R O R   M S G .   F O R   E R R O R�'  X ��� =  ��� o   �%�% 0 growl_running growl_Running� m  �$
�$ boovfals� ��#� I 
�"��
�" .sysodlogaskr        TEXT� b  
��� b  
��� b  
��� m  
�� ��� . I t e m   F a i l e d   t o   I m p o r t :  � o  �!�! 0 errnum errNum� o  � 
�  
ret � o  �� 0 errtext errText� ���
� 
disp� m  ��  �  �#  �c  ��  ��   � ��� l     ����  �  �  � ��� l      ����  � w q 
======================================
// PREPARATORY SUBROUTINES 
=======================================
   � ��� �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   P R E P A R A T O R Y   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
� ��� l     ����  �  �  � ��� l     ����  �  
APP DETECT   � ���  A P P   D E T E C T� ��� i   f i��� I      ���� 0 appisrunning appIsRunning� ��� o      �� 0 appname appName�  �  � O    ��� E    ��� l   	���� n    	��� 1    	�
� 
pnam� 2   �
� 
prcs�  �  � o   	 
�� 0 appname appName� m     ���                                                                                  sevs  alis    �  Macintosh HD               Β�:H+     4System Events.app                                               ��A�Y        ����  	                CoreServices    Β�*      �A�9       4   1   0  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     �
�	��
  �	  �  � ��� l     ����  �  SET UP ACTIVITIES   � ��� " S E T   U P   A C T I V I T I E S� ��� i   j m��� I      ���� 0 
item_check 
item_Check�  �  � k     "�� ��� r     ��� l    ���� I    ��� 
� .earsffdralis        afdr� m     ��
�� afdrcusr�   �  �  � o      ���� 0 mypath myPath�  ��  O    " Q    !�� r     1    ��
�� 
slct o      ���� 0 themessages theMessages R      ������
�� .ascrerr ****      � ****��  ��  ��   m    	�                                                                                  emal  alis    F  Macintosh HD               Β�:H+     VMail.app                                                        �.΅�        ����  	                Applications    Β�*      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  � 	 l     ��������  ��  ��  	 

 l     ����   ( "GET COUNT OF ITEMS AND ATTACHMENTS    � D G E T   C O U N T   O F   I T E M S   A N D   A T T A C H M E N T S  i   n q I      ������ 0 
item_count 
item_Count �� o      ���� 0 themessages theMessages��  ��   O     A k    @  r     I   	����
�� .corecnte****       **** o    ���� 0 themessages theMessages��   o      ���� 0 itemnum itemNum  r      m    ����    o      ���� 0 attnum attNum !��! X    @"��#" r   ( ;$%$ [   ( 5&'& o   ( -���� 0 attnum attNum' l  - 4(����( I  - 4��)��
�� .corecnte****       ****) n   - 0*+* m   . 0��
�� 
attc+ o   - .���� 0 
themessage 
theMessage��  ��  ��  % o      ���� 0 attnum attNum�� 0 
themessage 
theMessage# o    ���� 0 themessages theMessages��   m     ,,�                                                                                  emal  alis    F  Macintosh HD               Β�:H+     VMail.app                                                        �.΅�        ����  	                Applications    Β�*      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   -.- l     ��������  ��  ��  . /0/ l      ��12��  1  y 
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
   2 �33 �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
0 454 l     ��������  ��  ��  5 676 l     ��89��  8 + %TAGGING AND NOTEBOOK SELECTION DIALOG   9 �:: J T A G G I N G   A N D   N O T E B O O K   S E L E C T I O N   D I A L O G7 ;<; i   r u=>= I      ��������  0 tagging_dialog tagging_Dialog��  ��  > k     �?? @A@ Q     [BCDB k    JEE FGF I   ,��HI
�� .sysodlogaskr        TEXTH b    JKJ m    LL �MM  K l 	  N����N m    OO �PP � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w :  
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  I ��QR
�� 
apprQ m    SS �TT Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r tR ��UV
�� 
dtxtU o   	 ���� 0 
defaulttag 
defaultTagV ��WX
�� 
btnsW J    YY Z[Z m    \\ �]] 4 C r e a t e   i n   D e f a u l t   N o t e b o o k[ ^_^ m    `` �aa 2 S e l e c t   N o t e b o o k   f r o m   L i s t_ b��b m    cc �dd  C a n c e l��  X ��ef
�� 
dflte m    gg �hh 4 C r e a t e   i n   D e f a u l t   N o t e b o o kf ��ij
�� 
cbtni l 	  k����k m    ll �mm  C a n c e l��  ��  j ��n��
�� 
dispn I   &��op
�� .sysorpthalis        TEXTo m    qq �rr  E v e r n o t e . i c n sp ��s��
�� 
in Bs l   "t����t I   "��u��
�� .earsffdralis        afdru m    vv�                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  G wxw r   - 2yzy l  - 0{����{ 1   - 0��
�� 
rslt��  ��  z o      ���� 0 dialogresult  x |}| r   3 :~~ n   3 8��� 1   4 8��
�� 
ttxt� o   3 4���� 0 dialogresult   o      ���� 0 	userinput 	userInput} ��� r   ; B��� n   ; @��� 1   < @��
�� 
bhit� o   ; <���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ���� r   C J��� J   C H�� ���� m   C F�� ���  ,��  � o      ���� 0 	thedelims 	theDelims��  C R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  D r   R [��� m   R U������� o      ���� 0 errnum errNumA ��� l  \ \��������  ��  ��  � ��� l  \ \������  �  ASSEMBLE LIST OF TAGS   � ��� * A S S E M B L E   L I S T   O F   T A G S� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � 0 *RESET, FINAL CHECK, AND FORMATTING OF TAGS   � ��� T R E S E T ,   F I N A L   C H E C K ,   A N D   F O R M A T T I N G   O F   T A G S� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� ��� l  | |��������  ��  ��  � ��� l  | |������  �  SELECT NOTEBOOK   � ���  S E L E C T   N O T E B O O K� ���� Z  | �������� =  | ���� o   | }���� 0 	buttonsel 	ButtonSel� m   } ��� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� r   � ���� n  � ���� I   � ��������� 0 notebook_list Notebook_List��  ��  �  f   � �� o      ���� 0 
evnotebook 
EVnotebook��  ��  ��  < ��� l     ��������  ��  ��  � ��� l     ������  � % GET EVERNOTE'S DEFAULT NOTEBOOK   � ��� > G E T   E V E R N O T E ' S   D E F A U L T   N O T E B O O K� ��� i   v y��� I      �������� $0 default_notebook default_Notebook��  ��  � O     0��� k    /�� ��� r    ��� 6   ��� 2    ��
�� 
EVnb� =   ��� 1   	 ��
�� 
EVnd� m    �
� boovtrue� o      �~�~ *0 get_defaultnotebook get_defaultNotebook� ��}� Z    /���|�{� =   ��� o    �z�z 0 
evnotebook 
EVnotebook� m    �� ���  � r    +��� c    %��� n    #��� 1   ! #�y
�y 
pnam� l   !��x�w� n    !��� 4    !�v�
�v 
cobj� m     �u�u � o    �t�t *0 get_defaultnotebook get_defaultNotebook�x  �w  � m   # $�s
�s 
ctxt� o      �r�r 0 
evnotebook 
EVnotebook�|  �{  �}  � m     ���                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � ��� l     �q�p�o�q  �p  �o  � ��� l     �n���n  �  TAG SELECTION SUBROUTINE   � ��� 0 T A G   S E L E C T I O N   S U B R O U T I N E� ��� i   z }��� I      �m��l�m 0 tag_list Tag_List� ��� o      �k�k 0 	userinput 	userInput�  �j  o      �i�i 0 	thedelims 	theDelims�j  �l  � k     U  r      n     1    �h
�h 
txdl 1     �g
�g 
ascr o      �f�f 0 	olddelims 	oldDelims 	 r    

 J    	 �e o    �d�d 0 	userinput 	userInput�e   o      �c�c 0 thelist theList	  X    L�b k    G  r    ! o    �a�a 0 adelim aDelim n      1     �`
�` 
txdl 1    �_
�_ 
ascr  r   " & J   " $�^�^   o      �]�] 0 newlist newList  X   ' C�\  r   7 >!"! b   7 <#$# o   7 8�[�[ 0 newlist newList$ n   8 ;%&% 2  9 ;�Z
�Z 
citm& o   8 9�Y�Y 0 anitem anItem" o      �X�X 0 newlist newList�\ 0 anitem anItem  o   * +�W�W 0 thelist theList '�V' r   D G()( o   D E�U�U 0 newlist newList) o      �T�T 0 thelist theList�V  �b 0 adelim aDelim o    �S�S 0 	thedelims 	theDelims *+* r   M R,-, o   M N�R�R 0 	olddelims 	oldDelims- n     ./. 1   O Q�Q
�Q 
txdl/ 1   N O�P
�P 
ascr+ 0�O0 L   S U11 o   S T�N�N 0 thelist theList�O  � 232 l     �M�L�K�M  �L  �K  3 454 l     �J67�J  6 &  CREATES TAGS IF THEY DON'T EXIST   7 �88 @ C R E A T E S   T A G S   I F   T H E Y   D O N ' T   E X I S T5 9:9 i   ~ �;<; I      �I=�H�I 0 	tag_check 	Tag_Check= >�G> o      �F�F 0 thetags theTags�G  �H  < k     r?? @A@ O     oBCB k    nDD EFE r    GHG J    �E�E  H o      �D�D 0 	finaltags 	finalTagsF I�CI X   	 nJ�BKJ k    iLL MNM l   �A�@�?�A  �@  �?  N OPO l   �>QR�>  Q !  TRIM LEADING SPACE, IF ANY   R �SS 6   T R I M   L E A D I N G   S P A C E ,   I F   A N YP TUT Z   4VW�=�<V l   X�;�:X =   YZY l   [�9�8[ n    \]\ 4    �7^
�7 
cha ^ m    �6�6 ] o    �5�5 0 thetag theTag�9  �8  Z m    __ �``   �;  �:  W r   " 0aba c   " .cdc n   " ,efe 7  # ,�4gh
�4 
ctxtg m   ' )�3�3 h  ;   * +f o   " #�2�2 0 thetag theTagd m   , -�1
�1 
ctxtb o      �0�0 0 thetag theTag�=  �<  U iji l  5 5�/�.�-�/  �.  �-  j k�,k Z   5 ilm�+nl l  5 ?o�*�)o H   5 ?pp l  5 >q�(�'q I  5 >�&r�%
�& .coredoexnull���     ****r 5   5 :�$s�#
�$ 
EVtgs o   7 8�"�" 0 thetag theTag
�# kfrmname�%  �(  �'  �*  �)  m Q   B _tu�!t k   E Vvv wxw r   E Qyzy I  E O� {|
�  .corecrel****      � null{ m   E F�
� 
EVtg| �}�
� 
prdt} K   G K~~ ��
� 
pnam o   H I�� 0 thetag theTag�  �  z o      �� 0 maketag makeTagx ��� r   R V��� o   R S�� 0 maketag makeTag� n      ���  ;   T U� o   S T�� 0 	finaltags 	finalTags�  u R      ���
� .ascrerr ****      � ****�  �  �!  �+  n r   b i��� 4   b f��
� 
EVtg� o   d e�� 0 thetag theTag� n      ���  ;   g h� o   f g�� 0 	finaltags 	finalTags�,  �B 0 thetag theTagK o    �� 0 thetags theTags�C  C m     ���                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  A ��� L   p r�� o   p q�� 0 	finaltags 	finalTags�  : ��� l     ���
�  �  �
  � ��� l     �	���	  � - 'EVERNOTE NOTEBOOK SELECTION SUBROUTINE    � ��� N E V E R N O T E   N O T E B O O K   S E L E C T I O N   S U B R O U T I N E  � ��� i   � ���� I      ���� 0 notebook_list Notebook_List�  �  � O     ��� k    ~�� ��� I   	���
� .miscactvnull��� ��� null�  �  � ��� l   
 ���� r   
 ��� J   
 ��  � o      �� "0 listofnotebooks listOfNotebooks� 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    � ��� X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  � ��� l    ���� r    ��� 2    � 
�  
EVnb� o      ���� 0 evnotebooks EVNotebooks�  GET THE NOTEBOOK LIST    � ��� , G E T   T H E   N O T E B O O K   L I S T  � ��� X    4����� k   % /�� ��� r   % *��� l  % (������ l  % (������ n   % (��� 1   & (��
�� 
pnam� o   % &���� "0 currentnotebook currentNotebook��  ��  ��  ��  � o      ���� *0 currentnotebookname currentNotebookName� ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  �� "0 currentnotebook currentNotebook� o    ���� 0 evnotebooks EVNotebooks� ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M����
�� .gtqpchltns    @   @ ns  � o   > ?����  0 folders_sorted Folders_sorted� ����
�� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� ����
�� 
prmp� l 	 B C������ m   B C�� ��� 4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��  � ����
�� 
okbt� m   D E�� ���  O K� �����
�� 
cnbt� m   F G�� ���  N e w   N o t e b o o k��  � o      ���� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � ��� D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � ���� Z   P ~������ l  P S������ =  P S��� o   P Q���� 0 selnotebook SelNotebook� m   Q R��
�� boovfals��  ��  � l  V q���� k   V q�� ��� r   V i��� n   V g��� l 	 c g������ 1   c g��
�� 
ttxt��  ��  � l  V c������ I  V c����
�� .sysodlogaskr        TEXT� m   V Y�� ��� 0 E n t e r   N e w   N o t e b o o k   N a m e :� �����
�� 
dtxt� m   \ _�� ���  ��  ��  ��  � o      ���� 0 	userinput 	userInput�  ��  r   j q o   j k���� 0 	userinput 	userInput o      ���� 0 
evnotebook 
EVnotebook��  � ! CREATE NEW NOTEBOOK OPTION    � � 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��  � r   t ~ n   t x 4   u x��
�� 
cobj m   v w����  o   t u���� 0 selnotebook SelNotebook o      ���� 0 
evnotebook 
EVnotebook��  � m     		�                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � 

 l     ��������  ��  ��    l      ����   s m 
======================================
// UTILITY SUBROUTINES 
=======================================
    � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U T I L I T Y   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
  l     ��������  ��  ��    l     ����     EXTRACTION SUBROUTINE    � ,   E X T R A C T I O N   S U B R O U T I N E  i   � � I      ������  0 extractbetween extractBetween  o      ���� 0 
searchtext 
SearchText   o      ���� 0 	starttext 	startText  !��! o      ���� 0 endtext endText��  ��   k     ,"" #$# r     %&% n    '(' 1    ��
�� 
txdl( 1     ��
�� 
ascr& o      ���� 0 tid  $ )*) r    +,+ o    ���� 0 	starttext 	startText, n     -.- 1    
��
�� 
txdl. 1    ��
�� 
ascr* /0/ r    121 n    343 m    ��
�� 
ctxt4 n    565 4    ��7
�� 
citm7 m    ������6 o    ���� 0 
searchtext 
SearchText2 o      ���� 0 enditems endItems0 898 r    :;: o    ���� 0 endtext endText; n     <=< 1    ��
�� 
txdl= 1    ��
�� 
ascr9 >?> r    #@A@ n    !BCB m    !��
�� 
ctxtC n    DED 4    ��F
�� 
citmF m    ���� E o    ���� 0 enditems endItemsA o      ����  0 beginningtoend beginningToEnd? GHG r   $ )IJI o   $ %���� 0 tid  J n     KLK 1   & (��
�� 
txdlL 1   % &��
�� 
ascrH M��M L   * ,NN o   * +����  0 beginningtoend beginningToEnd��   OPO l     ��������  ��  ��  P QRQ l     ��ST��  S  SORT SUBROUTINE   T �UU  S O R T   S U B R O U T I N ER VWV i   � �XYX I      ��Z���� 0 simple_sort  Z [��[ o      ���� 0 my_list  ��  ��  Y k     u\\ ]^] r     _`_ J     ����  ` l     a����a o      ���� 0 
index_list  ��  ��  ^ bcb r    	ded J    ����  e l     f����f o      ���� 0 sorted_list  ��  ��  c ghg U   
 riji k    mkk lml r    non m    pp �qq  o l     r����r o      ���� 0 low_item  ��  ��  m sts Y    cu��vw��u Z   ) ^xy����x H   ) -zz E  ) ,{|{ l  ) *}����} o   ) *���� 0 
index_list  ��  ��  | o   * +���� 0 i  y k   0 Z~~ � r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :������ o   9 :���� 0 low_item  ��  ��  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @���� 0 	this_item  � l     ���~� o      �}�} 0 low_item  �  �~  � ��|� r   C F��� o   C D�{�{ 0 i  � l     ��z�y� o      �x�x 0 low_item_index  �z  �y  �|  � ��� A I L��� o   I J�w�w 0 	this_item  � l  J K��v�u� o   J K�t�t 0 low_item  �v  �u  � ��s� k   O V�� ��� r   O R��� o   O P�r�r 0 	this_item  � l     ��q�p� o      �o�o 0 low_item  �q  �p  � ��n� r   S V��� o   S T�m�m 0 i  � l     ��l�k� o      �j�j 0 low_item_index  �l  �k  �n  �s  ��  ��  ��  ��  �� 0 i  v m    �i�i w l   $��h�g� n    $��� m   ! #�f
�f 
nmbr� n   !��� 2   !�e
�e 
cobj� o    �d�d 0 my_list  �h  �g  ��  t ��� r   d h��� l  d e��c�b� o   d e�a�a 0 low_item  �c  �b  � l     ��`�_� n      ���  ;   f g� o   e f�^�^ 0 sorted_list  �`  �_  � ��]� r   i m��� l  i j��\�[� o   i j�Z�Z 0 low_item_index  �\  �[  � l     ��Y�X� n      ���  ;   k l� l  j k��W�V� o   j k�U�U 0 
index_list  �W  �V  �Y  �X  �]  j l   ��T�S� l   ��R�Q� n    ��� m    �P
�P 
nmbr� n   ��� 2   �O
�O 
cobj� o    �N�N 0 my_list  �R  �Q  �T  �S  h ��M� L   s u�� l  s t��L�K� o   s t�J�J 0 sorted_list  �L  �K  �M  W ��� l     �I�H�G�I  �H  �G  � ��� l      �F���F  � | v 
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   � ��� �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
� ��� l     �E�D�C�E  �D  �C  � ��� i   � ���� I      �B��A�B 0 mail_process mail_Process� ��@� o      �?�? 0 themessages theMessages�@  �A  � k    ,�� ��� l     �>���>  �  CHECK DEFAULT NOTEBOOK   � ��� , C H E C K   D E F A U L T   N O T E B O O K� ��� n    ��� I    �=�<�;�= $0 default_notebook default_Notebook�<  �;  �  f     � ��:� O   ,��� Q   
+���9� k   "�� ��� Z    ���8�7� =   ��� o    �6�6  0 tagging_switch tagging_Switch� m    �� ���  O N� n   ��� I    �5�4�3�5  0 tagging_dialog tagging_Dialog�4  �3  �  f    �8  �7  � ��� l  ! !�2�1�0�2  �1  �0  � ��/� X   !"��.�� k   1�� ��� Q   1����-� k   4��� ��� l  4 4�,� �,  �  GET MESSAGE INFO     �   G E T   M E S S A G E   I N F O�  r   4 = l  4 7�+�* n   4 7 1   5 7�)
�) 
subj o   4 5�(�( 0 thismessage thisMessage�+  �*   o      �'�' 0 mytitle myTitle 	
	 r   > C l  > A�&�% n   > A 1   ? A�$
�$ 
ctnt o   > ?�#�# 0 thismessage thisMessage�&  �%   o      �"�" 0 	mycontent 	myContent
  r   D M l  D G�!�  n   D G 1   E G�
� 
raso o   D E�� 0 thismessage thisMessage�!  �    o      �� 0 mysource mySource  r   N S l  N Q�� n   N Q 1   O Q�
� 
rpto o   N O�� 0 thismessage thisMessage�  �   o      �� 0 	replyaddr 	ReplyAddr  r   T Y !  l  T W"��" n   T W#$# 1   U W�
� 
rdrc$ o   T U�� 0 thismessage thisMessage�  �  ! o      �� 0 	emaildate 	EmailDate %&% r   Z b'(' l  Z `)��) n   Z `*+* 2   ^ `�
� 
trcp+ n   Z ^,-, 4   [ ^�.
� 
cobj. m   \ ]�� - o   Z [�� 0 thismessage thisMessage�  �  ( o      �� 0 allrecipients allRecipients& /0/ l  c c��
�	�  �
  �	  0 121 l  c c�34�  3 + %ASSEMBLE ALL TO: RECIPENTS FOR HEADER   4 �55 J A S S E M B L E   A L L   T O :   R E C I P E N T S   F O R   H E A D E R2 676 r   c f898 m   c d:: �;;  9 o      �� 0 torecipients toRecipients7 <=< X   g �>�?> k   w �@@ ABA r   w zCDC m   w xEE �FF  D o      �� 0 toname toNameB GHG r   { �IJI l  { ~K��K n   { ~LML 1   | ~�
� 
pnamM o   { |�� 0 allrecipient allRecipient�  �  J o      � �  0 toname toNameH NON Z  � �PQ����P =  � �RSR o   � ����� 0 toname toNameS m   � ���
�� 
msngQ r   � �TUT m   � �VV �WW  U o      ���� 0 toname toName��  ��  O XYX r   � �Z[Z l  � �\����\ n   � �]^] 1   � ���
�� 
radd^ o   � ����� 0 allrecipient allRecipient��  ��  [ o      ���� 0 toemail toEmailY _`_ r   � �aba b   � �cdc b   � �efe b   � �ghg b   � �iji o   � ����� 0 toname toNamej 1   � ���
�� 
spach m   � �kk �ll  (f o   � ����� 0 toemail toEmaild m   � �mm �nn  ) < b r / >b o      ���� 0 
tocombined 
toCombined` o��o r   � �pqp l  � �r����r c   � �sts b   � �uvu o   � ����� 0 torecipients toRecipientsv o   � ����� 0 
tocombined 
toCombinedt m   � ���
�� 
TEXT��  ��  q o      ���� 0 torecipients toRecipients��  � 0 allrecipient allRecipient? o   j k���� 0 allrecipients allRecipients= wxw l  � ���������  ��  ��  x yzy l  � ���{|��  {  CREATE MAIL MESSAGE URL   | �}} . C R E A T E   M A I L   M E S S A G E   U R Lz ~~ r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient ��� r   � ���� m   � ��� ���  � o      ���� 0 ex  � ��� r   � ���� m   � ��� ���  � o      ���� 0 msglink MsgLink� ��� Q   ������ k   ��� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
radd� n   � ���� 4   � ����
�� 
trcp� m   � ����� � o   � ����� 0 thismessage thisMessage��  ��  � o      ���� 0 therecipient theRecipient� ��� r   � ���� b   � ���� b   � ���� m   � ��� ���  m e s s a g e : / / % 3 c� n  � ���� 1   � ���
�� 
meid� o   � ����� 0 thismessage thisMessage� m   � ��� ���  % 3 e� o      ���� 0 msglink MsgLink� ���� l  ����� Z  �������� >  � ���� o   � ����� 0 therecipient theRecipient� m   � ��� ���  � r   ���� n  ���� I   ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	replyaddr 	ReplyAddr� ��� m   � ��� ���  <� ���� m   ��� ���  >��  ��  �  f   � �� o      ���� 0 ex  ��  ��  �   extract the Address   � ��� (   e x t r a c t   t h e   A d d r e s s��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l ��������  ��  ��  � ��� l ������  �  HTML EMAIL FUNCTIONS   � ��� ( H T M L   E M A I L   F U N C T I O N S� ��� r  (��� n &��� I  &�������  0 extractbetween extractBetween� ��� o  ���� 0 mysource mySource� ��� m  �� ���  b o u n d a r y = "� ���� m  "�� ���  "��  ��  �  f  � o      ���� 0 theboundary theBoundary� ��� r  )4��� l )2������ b  )2��� b  )0��� o  ),��
�� 
ret � m  ,/�� ���  - -� o  01���� 0 theboundary theBoundary��  ��  � o      ���� "0 themessagestart theMessageStart� ��� r  5F��� l 5B������ b  5B��� b  5>��� b  5:��� m  58�� ���  - -� o  89���� 0 theboundary theBoundary� o  :=��
�� 
ret � m  >A�� ���  C o n t e n t - T y p e :��  ��  � o      ���� 0 themessageend theMessageEnd� ��� r  GT� � n  GP 2 LP��
�� 
cpar o  GL���� 0 mysource mySource  o      ���� 0 
parasource 
paraSource�  r  Uf n  Ub 2 ^b��
�� 
cpar l U^	����	 c  U^

 n  UZ 1  VZ��
�� 
alhe o  UV���� 0 thismessage thisMessage m  Z]��
�� 
ctxt��  ��   o      ���� 0 myheaderlines myHeaderlines  l gg��������  ��  ��    l gg��������  ��  ��    l gg����    GET CONTENT TYPE    �   G E T   C O N T E N T   T Y P E  X  g��� Z  y����� C  y� o  y|���� 0 myheaderline myHeaderline m  | �    C o n t e n t - T y p e :   r  ��!"! n ��#$# I  ����%����  0 extractbetween extractBetween% &'& o  ������ 0 myheaderline myHeaderline' ()( m  ��** �++  C o n t e n t - T y p e :  ) ,��, m  ��-- �..  ;��  ��  $  f  ��" o      ���� 0 	myheaders 	myHeaders��  ��  �� 0 myheaderline myHeaderline o  jm���� 0 myheaderlines myHeaderlines /0/ r  ��121 n ��343 I  ����5���� 0 stripheader stripHeader5 676 o  ������ 0 
parasource 
paraSource7 8��8 o  ������ 0 myheaderlines myHeaderlines��  ��  4  f  ��2 o      ���� 0 	cutsource 	cutSource0 9��9 r  ��:;: o  ������ 0 	cutsource 	cutSource; o      ���� 0 evhtml evHTML��  � R      ������
�� .ascrerr ****      � ****��  ��  �-  � <=< l ����������  ��  ��  = >?> l ����@A��  @  MAKE HEADER TEMPLATE   A �BB ( M A K E   H E A D E R   T E M P L A T E? CDC r  ��EFE b  ��GHG b  ��IJI b  ��KLK b  ��MNM b  ��OPO b  ��QRQ b  ��STS b  ��UVU b  ��WXW b  ��YZY m  ��[[ �\\�  
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " >  
 < t b o d y >  
  
 < t r   B G C O L O R = " # f f f f f f " >  
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d >  
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o :Z o  ������ 0 ex  X m  ��]] �^^  " >V o  ������ 0 ex  T m  ��__ �``  < / a > < / t d >  
 < / t r >  
  
 < t r   B G C O L O R = " # f f f f f f " >  
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d >  
 < t d   v a l i g n = " t o p "   > < s t r o n g >R o  ������ 0 mytitle myTitleP m  ��aa �bb < / s t r o n g > < / t d >  
 < / t r >  
  
 < t r   B G C O L O R = " # f f f f f f " >  
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d >  
 < t d   v a l i g n = " t o p " >N o  ������ 0 	emaildate 	EmailDateL m  ��cc �dd � < / t d >  
 < / t r >  
  
 < t r   B G C O L O R = " # f f f f f f " >  
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d >  
 < t d   v a l i g n = " t o p " >J o  ������ 0 torecipients toRecipientsH m  ��ee �ff T < / t d >  
 < / t r >  
  
 < / t b o d y >  
 < / t a b l e >  
 < h r   / >F o      ���� 0 the_template the_TemplateD ghg l ����������  ��  ��  h iji l ����kl��  k &  SEND ITEM TO EVERNOTE SUBROUTINE   l �mm @ S E N D   I T E M   T O   E V E R N O T E   S U B R O U T I N Ej non n �pqp I  ���r���� 0 make_evernote make_Evernoter sts o  ������ 0 mytitle myTitlet uvu o  ���� 0 evtag EVTagv wxw o  ���~�~ 0 	emaildate 	EmailDatex yzy o  ���}�} 0 msglink MsgLinkz {|{ o  ���|�| 0 	mycontent 	myContent| }~} o  ���{�{ 0 mysource mySource~ � o  � �z�z 0 theboundary theBoundary� ��� o   �y�y "0 themessagestart theMessageStart� ��� o  �x�x 0 themessageend theMessageEnd� ��� o  	�w�w 0 	myheaders 	myHeaders� ��� o  	
�v�v 0 thismessage thisMessage� ��� o  
�u�u 0 evhtml evHTML� ��� o  �t�t 0 
evnotebook 
EVnotebook� ��s� o  �r�r 0 the_template the_Template�s  ��  q  f  ��o ��q� l �p�o�n�p  �o  �n  �q  �. 0 thismessage thisMessage� o   $ %�m�m 0 themessages theMessages�/  � R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �9  � m    ���                                                                                  emal  alis    F  Macintosh HD               Β�:H+     VMail.app                                                        �.΅�        ����  	                Applications    Β�*      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �:  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f�e�d�f  �e  �d  � ��� l      �c���c  �  y 
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   � ��� �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
� ��� l     �b�a�`�b  �a  �`  � ��� i   � ���� I      �_��^�_ 0 make_evernote make_Evernote� ��� o      �]�] 0 mytitle myTitle� ��� o      �\�\ 0 evtag EVTag� ��� o      �[�[ 0 	emaildate 	EmailDate� ��� o      �Z�Z 0 msglink MsgLink� ��� o      �Y�Y 0 	mycontent 	myContent� ��� o      �X�X 0 mysource mySource� ��� o      �W�W 0 theboundary theBoundary� ��� o      �V�V "0 themessagestart theMessageStart� ��� o      �U�U 0 themessageend theMessageEnd� ��� o      �T�T 0 	myheaders 	myHeaders� ��� o      �S�S 0 thismessage thisMessage� ��� o      �R�R 0 evhtml evHTML� ��� o      �Q�Q 0 
evnotebook 
EVnotebook� ��P� o      �O�O 0 the_template the_Template�P  �^  � k    �� ��� l     �N�M�L�N  �M  �L  � ��� O    ��� Q   ���K� k   �� ��� l   �J�I�H�J  �I  �H  � ��� l   �G�F�E�G  �F  �E  � ��� l   �D�C�B�D  �C  �B  � ��� l   �A���A  �  IS IT A TEXT EMAIL?	   � ��� ( I S   I T   A   T E X T   E M A I L ? 	� ��� Z   ������ E    
��� o    �@�@ 0 	myheaders 	myHeaders� m    	�� ���  t e x t / p l a i n� k    H�� ��� r    ��� I   �?�>�
�? .EVRNcrntnull��� ��� null�>  � �=��
�= 
Enhl� o    �<�< 0 the_template the_Template� �;��
�; 
Entt� o    �:�: 0 mytitle myTitle� �9��8
�9 
Ennb� o    �7�7 0 
evnotebook 
EVnotebook�8  � o      �6�6 0 n  � ��� Z   -���5�4� >   ��� o    �3�3 0 evtag EVTag� J    �2�2  � I  " )�1��
�1 .EVRNassnnull���     ****� o   " #�0�0 0 evtag EVTag� �/��.
�/ 
EV13� o   $ %�-�- 0 n  �.  �5  �4  � ��� O  . :��� I  2 9�,�+�
�, .EVRNadtnnull���     EVnn�+  � �*��)
�* 
EV18� o   4 5�(�( 0 	mycontent 	myContent�)  � o   . /�'�' 0 n  � ��� r   ; @��� o   ; <�&�& 0 	emaildate 	EmailDate� n      ��� 1   = ?�%
�% 
EVdd� o   < =�$�$ 0 n  � ��� r   A F��� o   A B�#�# 0 msglink MsgLink� n      ��� 1   C E�"
�" 
EVsu� o   B C�!�! 0 n  �    l  G G� ���   �  �    l  G G��   5 / IF HTML PROCESSING IS TURNED TO "OFF", PROCESS    � ^   I F   H T M L   P R O C E S S I N G   I S   T U R N E D   T O   " O F F " ,   P R O C E S S � l  G G�	�   ; 5 AS PLAINTEXT (USEFUL FOR NON-ENGLISH ENCODED EMAILS)   	 �

 j   A S   P L A I N T E X T   ( U S E F U L   F O R   N O N - E N G L I S H   E N C O D E D   E M A I L S )�  �  =  K R o   K P�� 0 html_switch HTML_Switch m   P Q �  O F F  k   U �  r   U b I  U `��
� .EVRNcrntnull��� ��� null�   �
� 
Enhl o   W X�� 0 the_template the_Template �
� 
Entt o   Y Z�� 0 mytitle myTitle ��
� 
Ennb o   [ \�� 0 
evnotebook 
EVnotebook�   o      �� 0 n    Z  c u !��  >  c g"#" o   c d�� 0 evtag EVTag# J   d f��  ! I  j q�$%
� .EVRNassnnull���     ****$ o   j k�
�
 0 evtag EVTag% �	&�
�	 
EV13& o   l m�� 0 n  �  �  �   '(' O  v �)*) I  z ���+
� .EVRNadtnnull���     EVnn�  + �,�
� 
EV18, o   | }�� 0 	mycontent 	myContent�  * o   v w�� 0 n  ( -.- r   � �/0/ o   � �� �  0 	emaildate 	EmailDate0 n      121 1   � ���
�� 
EVdd2 o   � ����� 0 n  . 343 r   � �565 o   � ����� 0 msglink MsgLink6 n      787 1   � ���
�� 
EVsu8 o   � ����� 0 n  4 9��9 l  � ���:;��  : " IS IT MULTIPART ALTERNATIVE?   ; �<< 8 I S   I T   M U L T I P A R T   A L T E R N A T I V E ?��   =>= E   � �?@? o   � ����� 0 	myheaders 	myHeaders@ m   � �AA �BB * m u l t i p a r t / a l t e r n a t i v e> CDC k   ��EE FGF l  � ���������  ��  ��  G HIH l  � ���JK��  J  CHECK FOR BASE64   K �LL   C H E C K   F O R   B A S E 6 4I MNM r   � �OPO n  � �QRQ I   � ���S���� 0 base64_check base64_CheckS T��T o   � ����� 0 mysource mySource��  ��  R  f   � �P o      ���� 0 base64detect base64DetectN UVU l  � ���������  ��  ��  V WXW l  � ���YZ��  Y % IF MESSAGE IS BASE64 ENCODED...   Z �[[ > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .X \]\ Z   ��^_��`^ =  � �aba o   � ����� 0 base64detect base64Detectb m   � ���
�� boovtrue_ k   �Zcc ded r   � �fgf n  � �hih I   � ���j����  0 extractbetween extractBetweenj klk o   � ����� 0 mysource mySourcel mnm m   � �oo �pp B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4n q��q o   � ����� 0 theboundary theBoundary��  ��  i  f   � �g o      ���� 0 	multihtml 	multiHTMLe rsr l  � ���������  ��  ��  s tut l  � ���vw��  v 1 +STRIP OUT CONTENT-DISPOSITION, IF NECESSARY   w �xx V S T R I P   O U T   C O N T E N T - D I S P O S I T I O N ,   I F   N E C E S S A R Yu yzy Z  � �{|����{ E   � �}~} o   � ����� 0 	multihtml 	multiHTML~ m   � � ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e| r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� ���� o   � ����� 0 theboundary theBoundary��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML��  ��  z ��� Z  �������� E   � ���� o   � ����� 0 	multihtml 	multiHTML� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t� r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t� ���� o   � ����� 0 theboundary theBoundary��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML��  ��  � ��� l ��������  ��  ��  � ��� l ������  �  DECODE BASE64   � ���  D E C O D E   B A S E 6 4� ��� r  ��� I �����
�� .sysoexecTEXT���     TEXT� b  ��� b  ��� m  �� ��� 
 e c h o  � l ������ n  ��� 1  ��
�� 
strq� o  ���� 0 	multihtml 	multiHTML��  ��  � m  �� ��� & |   o p e n s s l   b a s e 6 4   - d��  � o      ���� 0 basehtml baseHTML� ��� l ��������  ��  ��  � ��� l ������  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  *��� I (�����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o   ���� 0 the_template the_Template� ����
�� 
Entt� o  !"���� 0 mytitle myTitle� �����
�� 
Ennb� o  #$���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z +=������� > +/��� o  +,���� 0 evtag EVTag� J  ,.����  � I 29����
�� .EVRNassnnull���     ****� o  23���� 0 evtag EVTag� �����
�� 
EV13� o  45���� 0 n  ��  ��  ��  � ��� O >N��� I BM�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV19� o  FI���� 0 basehtml baseHTML��  � o  >?���� 0 n  � ��� r  OT��� o  OP���� 0 	emaildate 	EmailDate� n      ��� 1  QS��
�� 
EVdd� o  PQ���� 0 n  � ���� r  UZ��� o  UV���� 0 msglink MsgLink� n      ��� 1  WY��
�� 
EVsu� o  VW���� 0 n  ��  ��  ` k  ]��� ��� l ]]��������  ��  ��  � ��� l ]]������  � ) #IF MESSAGE IS NOT BASE64 ENCODED...   � ��� F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .� ��� r  ]k��� n ]e��� I  ^e������� 0 htmlfix htmlFix� ��� o  ^_���� 0 mysource mySource� ��� o  _`���� 0 theboundary theBoundary� ���� o  `a���� 0 	mycontent 	myContent��  ��  �  f  ]^� o      ���� 0 	finalhtml 	finalHTML� ���� Z  l������� = ls��� o  lq����  0 decode_success decode_Success� m  qr��
�� boovtrue� k  v��� ��� l vv��������  ��  ��  �    l vv����    MAKE NOTE IN EVERNOTE    � * M A K E   N O T E   I N   E V E R N O T E  r  v� I v�����	
�� .EVRNcrntnull��� ��� null��  	 ��

�� 
Enhl
 o  xy���� 0 the_template the_Template ��
�� 
Entt o  z{���� 0 mytitle myTitle ����
�� 
Ennb o  |}���� 0 
evnotebook 
EVnotebook��   o      ���� 0 n    Z ����~ > �� o  ���}�} 0 evtag EVTag J  ���|�|   I ���{
�{ .EVRNassnnull���     **** o  ���z�z 0 evtag EVTag �y�x
�y 
EV13 o  ���w�w 0 n  �x  �  �~    O �� I ���v�u
�v .EVRNadtnnull���     EVnn�u   �t�s
�t 
EV19 o  ���r�r 0 	finalhtml 	finalHTML�s   o  ���q�q 0 n    r  �� !  o  ���p�p 0 	emaildate 	EmailDate! n      "#" 1  ���o
�o 
EVdd# o  ���n�n 0 n   $�m$ r  ��%&% o  ���l�l 0 msglink MsgLink& n      '(' 1  ���k
�k 
EVsu( o  ���j�j 0 n  �m  ��  � k  ��)) *+* l ���i�h�g�i  �h  �g  + ,-, l ���f./�f  .  MAKE NOTE IN EVERNOTE   / �00 * M A K E   N O T E   I N   E V E R N O T E- 121 r  ��343 I ���e�d5
�e .EVRNcrntnull��� ��� null�d  5 �c67
�c 
Enhl6 o  ���b�b 0 the_template the_Template7 �a89
�a 
Entt8 o  ���`�` 0 mytitle myTitle9 �_:�^
�_ 
Ennb: o  ���]�] 0 
evnotebook 
EVnotebook�^  4 o      �\�\ 0 n  2 ;<; Z ��=>�[�Z= > ��?@? o  ���Y�Y 0 evtag EVTag@ J  ���X�X  > I ���WAB
�W .EVRNassnnull���     ****A o  ���V�V 0 evtag EVTagB �UC�T
�U 
EV13C o  ���S�S 0 n  �T  �[  �Z  < DED O ��FGF I ���R�QH
�R .EVRNadtnnull���     EVnn�Q  H �PI�O
�P 
EV18I o  ���N�N 0 	mycontent 	myContent�O  G o  ���M�M 0 n  E JKJ r  ��LML o  ���L�L 0 	emaildate 	EmailDateM n      NON 1  ���K
�K 
EVddO o  ���J�J 0 n  K P�IP r  ��QRQ o  ���H�H 0 msglink MsgLinkR n      STS 1  ���G
�G 
EVsuT o  ���F�F 0 n  �I  ��  ] UVU l ���E�D�C�E  �D  �C  V W�BW l ���AXY�A  X  IS IT MULTIPART MIXED?   Y �ZZ , I S   I T   M U L T I P A R T   M I X E D ?�B  D [\[ E  ��]^] o  ���@�@ 0 	myheaders 	myHeaders^ m  ��__ �``  m u l t i p a r t\ a�?a k  �Nbb cdc l �Lefge Z  �Lhij�>h E  �klk o  ���=�= 0 mysource mySourcel m  �mm �nn . C o n t e n t - T y p e :   t e x t / h t m li k  oo pqp l �<�;�:�<  �;  �:  q rsr l �9tu�9  t  CHECK FOR BASE64   u �vv   C H E C K   F O R   B A S E 6 4s wxw r  yzy n {|{ I  �8}�7�8 0 base64_check base64_Check} ~�6~ o  �5�5 0 mysource mySource�6  �7  |  f  z o      �4�4 0 base64detect base64Detectx � l �3�2�1�3  �2  �1  � ��� l �0���0  � % IF MESSAGE IS BASE64 ENCODED...   � ��� > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .� ��� Z   ����/� = ��� o  �.�. 0 base64detect base64Detect� m  �-
�- boovtrue� k  _�� ��� r  ��� n ��� I  �,��+�, 0 base64_decode base64_Decode� ��*� o  �)�) 0 mysource mySource�*  �+  �  f  � o      �(�( 0 basehtml baseHTML� ��� l   �'�&�%�'  �&  �%  � ��� l   �$���$  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r   -��� I  +�#�"�
�# .EVRNcrntnull��� ��� null�"  � �!��
�! 
Enhl� o  "#� �  0 the_template the_Template� ���
� 
Entt� o  $%�� 0 mytitle myTitle� ���
� 
Ennb� o  &'�� 0 
evnotebook 
EVnotebook�  � o      �� 0 n  � ��� Z .@����� > .2��� o  ./�� 0 evtag EVTag� J  /1��  � I 5<���
� .EVRNassnnull���     ****� o  56�� 0 evtag EVTag� ���
� 
EV13� o  78�� 0 n  �  �  �  � ��� O AQ��� I EP���
� .EVRNadtnnull���     EVnn�  � ���
� 
EV19� o  IL�� 0 basehtml baseHTML�  � o  AB�� 0 n  � ��� r  RW��� o  RS�
�
 0 	emaildate 	EmailDate� n      ��� 1  TV�	
�	 
EVdd� o  ST�� 0 n  � ��� r  X]��� o  XY�� 0 msglink MsgLink� n      ��� 1  Z\�
� 
EVsu� o  YZ�� 0 n  � ��� l ^^����  �  �  � ��� l ^^� ���   � ) #IF MESSAGE IS NOT BASE64 ENCODED...   � ��� F I F   M E S S A G E   I S   N O T   B A S E 6 4   E N C O D E D . . .�  � ��� = be��� o  bc���� 0 base64detect base64Detect� m  cd��
�� boovfals� ���� k  h��� ��� r  hv��� n hp��� I  ip������� 0 htmlfix htmlFix� ��� o  ij���� 0 mysource mySource� ��� o  jk���� 0 theboundary theBoundary� ���� o  kl���� 0 	mycontent 	myContent��  ��  �  f  hi� o      ���� 0 	finalhtml 	finalHTML� ���� Z  w������� = w~��� o  w|����  0 decode_success decode_Success� m  |}��
�� boovtrue� k  ���� ��� l ����������  ��  ��  � ��� l ��������  �  MAKE NOTE IN EVERNOTE   � ��� * M A K E   N O T E   I N   E V E R N O T E� ��� r  ����� I �������
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o  ������ 0 the_template the_Template� ����
�� 
Entt� o  ������ 0 mytitle myTitle� �����
�� 
Ennb� o  ������ 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z ��������� > ����� o  ������ 0 evtag EVTag� J  ������  � I ������
�� .EVRNassnnull���     ****� o  ������ 0 evtag EVTag� �����
�� 
EV13� o  ������ 0 n  ��  ��  ��  � ��� O ����� I �������
�� .EVRNadtnnull���     EVnn��  � ��	 ��
�� 
EV19	  o  ������ 0 	finalhtml 	finalHTML��  � o  ������ 0 n  � 			 r  ��			 o  ������ 0 	emaildate 	EmailDate	 n      			 1  ����
�� 
EVdd	 o  ������ 0 n  	 	��	 r  ��				 o  ������ 0 msglink MsgLink		 n      	
		
 1  ����
�� 
EVsu	 o  ������ 0 n  ��  ��  � k  ��		 			 l ����������  ��  ��  	 			 l ����		��  	  MAKE NOTE IN EVERNOTE   	 �		 * M A K E   N O T E   I N   E V E R N O T E	 			 r  ��			 I ������	
�� .EVRNcrntnull��� ��� null��  	 ��		
�� 
Enhl	 o  ������ 0 the_template the_Template	 ��		
�� 
Entt	 o  ������ 0 mytitle myTitle	 ��	��
�� 
Ennb	 o  ������ 0 
evnotebook 
EVnotebook��  	 o      ���� 0 n  	 			 Z ��	 	!����	  > ��	"	#	" o  ������ 0 evtag EVTag	# J  ������  	! I ����	$	%
�� .EVRNassnnull���     ****	$ o  ������ 0 evtag EVTag	% ��	&��
�� 
EV13	& o  ������ 0 n  ��  ��  ��  	 	'	(	' O ��	)	*	) I ������	+
�� .EVRNadtnnull���     EVnn��  	+ ��	,��
�� 
EV18	, o  ������ 0 	mycontent 	myContent��  	* o  ������ 0 n  	( 	-	.	- r  ��	/	0	/ o  ������ 0 	emaildate 	EmailDate	0 n      	1	2	1 1  ����
�� 
EVdd	2 o  ������ 0 n  	. 	3��	3 r  ��	4	5	4 o  ������ 0 msglink MsgLink	5 n      	6	7	6 1  ����
�� 
EVsu	7 o  ������ 0 n  ��  ��  ��  �/  � 	8��	8 l ��������  ��  ��  ��  j 	9	:	9 E  
	;	<	; o  ���� 0 mysource mySource	< m  		=	= �	>	>  t e x t / p l a i n	: 	?��	? k  H	@	@ 	A	B	A l ��������  ��  ��  	B 	C	D	C l ��	E	F��  	E  MAKE NOTE IN EVERNOTE   	F �	G	G * M A K E   N O T E   I N   E V E R N O T E	D 	H	I	H r  	J	K	J I ����	L
�� .EVRNcrntnull��� ��� null��  	L ��	M	N
�� 
Enhl	M o  ���� 0 the_template the_Template	N ��	O	P
�� 
Entt	O o  ���� 0 mytitle myTitle	P ��	Q��
�� 
Ennb	Q o  ���� 0 
evnotebook 
EVnotebook��  	K o      ���� 0 n  	I 	R	S	R Z -	T	U����	T > 	V	W	V o  ���� 0 evtag EVTag	W J  ����  	U I ")��	X	Y
�� .EVRNassnnull���     ****	X o  "#���� 0 evtag EVTag	Y ��	Z��
�� 
EV13	Z o  $%���� 0 n  ��  ��  ��  	S 	[	\	[ O .:	]	^	] I 29����	_
�� .EVRNadtnnull���     EVnn��  	_ ��	`��
�� 
EV18	` o  45���� 0 	mycontent 	myContent��  	^ o  ./���� 0 n  	\ 	a	b	a r  ;@	c	d	c o  ;<���� 0 	emaildate 	EmailDate	d n      	e	f	e 1  =?��
�� 
EVdd	f o  <=���� 0 n  	b 	g	h	g r  AF	i	j	i o  AB���� 0 msglink MsgLink	j n      	k	l	k 1  CE��
�� 
EVsu	l o  BC���� 0 n  	h 	m��	m l GG��~�}�  �~  �}  ��  ��  �>  f   MULTIPART MIXED   g �	n	n     M U L T I P A R T   M I X E Dd 	o	p	o l MM�|�{�z�|  �{  �z  	p 	q�y	q l MM�x	r	s�x  	r # OTHER TYPES OF HTML-ENCODING	   	s �	t	t : O T H E R   T Y P E S   O F   H T M L - E N C O D I N G 	�y  �?  � k  Q�	u	u 	v	w	v l QQ�w�v�u�w  �v  �u  	w 	x	y	x l QQ�t	z	{�t  	z  CHECK FOR BASE64   	{ �	|	|   C H E C K   F O R   B A S E 6 4	y 	}	~	} r  QY		�	 n QW	�	�	� I  RW�s	��r�s 0 base64_check base64_Check	� 	��q	� o  RS�p�p 0 mysource mySource�q  �r  	�  f  QR	� o      �o�o 0 base64detect base64Detect	~ 	�	�	� l ZZ�n�m�l�n  �m  �l  	� 	�	�	� l ZZ�k	�	��k  	� % IF MESSAGE IS BASE64 ENCODED...   	� �	�	� > I F   M E S S A G E   I S   B A S E 6 4   E N C O D E D . . .	� 	�	�	� Z  Z�	�	��j	�	� = Z]	�	�	� o  Z[�i�i 0 base64detect base64Detect	� m  [\�h
�h boovtrue	� r  `l	�	�	� n `f	�	�	� I  af�g	��f�g 0 base64_decode base64_Decode	� 	��e	� o  ab�d�d 0 mysource mySource�e  �f  	�  f  `a	� o      �c�c 0 	finalhtml 	finalHTML�j  	� k  o�	�	� 	�	�	� r  o�	�	�	� n o{	�	�	� I  p{�b	��a�b  0 extractbetween extractBetween	� 	�	�	� o  pq�`�` 0 evhtml evHTML	� 	�	�	� m  qt	�	� �	�	�  < / h e a d >	� 	��_	� m  tw	�	� �	�	�  < / h t m l >�_  �a  	�  f  op	� o      �^�^ 0 	multihtml 	multiHTML	� 	��]	� r  ��	�	�	� c  ��	�	�	� n ��	�	�	� I  ���\	��[�\ 0 htmlfix htmlFix	� 	�	�	� o  ���Z�Z 0 	multihtml 	multiHTML	� 	�	�	� o  ���Y�Y 0 theboundary theBoundary	� 	��X	� o  ���W�W 0 	mycontent 	myContent�X  �[  	�  f  ��	� m  ���V
�V 
ctxt	� o      �U�U 0 	finalhtml 	finalHTML�]  	� 	�	�	� l ���T	�	��T  	�  MAKE NOTE IN EVERNOTE   	� �	�	� * M A K E   N O T E   I N   E V E R N O T E	� 	�	�	� r  ��	�	�	� I ���S�R	�
�S .EVRNcrntnull��� ��� null�R  	� �Q	�	�
�Q 
Enhl	� o  ���P�P 0 the_template the_Template	� �O	�	�
�O 
Entt	� o  ���N�N 0 mytitle myTitle	� �M	��L
�M 
Ennb	� o  ���K�K 0 
evnotebook 
EVnotebook�L  	� o      �J�J 0 n  	� 	�	�	� Z ��	�	��I�H	� > ��	�	�	� o  ���G�G 0 evtag EVTag	� J  ���F�F  	� I ���E	�	�
�E .EVRNassnnull���     ****	� o  ���D�D 0 evtag EVTag	� �C	��B
�C 
EV13	� o  ���A�A 0 n  �B  �I  �H  	� 	�	�	� O ��	�	�	� I ���@�?	�
�@ .EVRNadtnnull���     EVnn�?  	� �>	��=
�> 
EV19	� o  ���<�< 0 	finalhtml 	finalHTML�=  	� o  ���;�; 0 n  	� 	�	�	� r  ��	�	�	� o  ���:�: 0 	emaildate 	EmailDate	� n      	�	�	� 1  ���9
�9 
EVdd	� o  ���8�8 0 n  	� 	�	�	� r  ��	�	�	� o  ���7�7 0 msglink MsgLink	� n      	�	�	� 1  ���6
�6 
EVsu	� o  ���5�5 0 n  	� 	�	�	� l ���4�3�2�4  �3  �2  	� 	��1	� l ���0	�	��0  	�  END OF MESSAGE PROCESSING   	� �	�	� 2 E N D   O F   M E S S A G E   P R O C E S S I N G�1  � 	�	�	� l ���/�.�-�/  �.  �-  	� 	�	�	� l ���,	�	��,  	� $ START OF ATTACHMENT PROCESSING   	� �	�	� < S T A R T   O F   A T T A C H M E N T   P R O C E S S I N G	� 	�	�	� O  ��	�	�	� k  ��	�	� 	�	�	� l ���+	�	��+  	� 7 1IF ATTACHMENTS PRESENT, RUN ATTACHMENT SUBROUTINE   	� �	�	� b I F   A T T A C H M E N T S   P R E S E N T ,   R U N   A T T A C H M E N T   S U B R O U T I N E	� 	��*	� Z ��	�	��)�(	� > ��	�	�	� n ��	�	�	� 2 ���'
�' 
attc	� o  ���&�& 0 thismessage thisMessage	� J  ���%�%  	� n ��	�
 	� I  ���$
�#�$ 0 attachment_process  
 


 o  ���"�" 0 thismessage thisMessage
 
�!
 o  ��� �  0 n  �!  �#  
   f  ���)  �(  �*  	� m  ��

�                                                                                  emal  alis    F  Macintosh HD               Β�:H+     VMail.app                                                        �.΅�        ����  	                Applications    Β�*      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  	� 


 l ���

	�  
 / )ITEM HAS FINISHED! COUNT IT AS A SUCCESS!   
	 �



 R I T E M   H A S   F I N I S H E D !   C O U N T   I T   A S   A   S U C C E S S !
 
�
 r  �


 [  � 


 o  ���� 0 successcount successCount
 m  ���� 
 o      �� 0 successcount successCount�  � R      ���
� .ascrerr ****      � ****�  �  �K  � m     

�                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � 
�
 I �
�
� .ascrcmnt****      � ****
 b  


 m  

 �

  s u c c e s s C o u n t :  
 o  �� 0 successcount successCount�  �  � 


 l     ����  �  �  
 


 l     ����  �  �  
 


 l     ����  �  �  
 


 l      �


 �
  
 v p 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
   
  �
!
! �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   A T T A C H M E N T   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  

 
"
#
" l     �	���	  �  �  
# 
$
%
$ l     �
&
'�  
&  FOLDER EXISTS?   
' �
(
(  F O L D E R   E X I S T S ?
% 
)
*
) i   � �
+
,
+ I      �
-�� 0 f_exists  
- 
.�
. o      �� 0 exportfolder ExportFolder�  �  
, Q     +
/
0
1
/ k    
2
2 
3
4
3 r    

5
6
5 l   
7�� 
7 I   ��
8��
�� .earsffdralis        afdr
8 m    ��
�� afdrcusr��  �  �   
6 o      ���� 0 mypath myPath
4 
9
:
9 e    
;
; c    
<
=
< o    ���� 0 exportfolder ExportFolder
= m    ��
�� 
alis
: 
>��
> r    
?
@
? o    ���� 0 exportfolder ExportFolder
@ o      ���� 0 saveloc SaveLoc��  
0 R      ������
�� .ascrerr ****      � ****��  ��  
1 O   +
A
B
A I   *����
C
�� .corecrel****      � null��  
C ��
D
E
�� 
kocl
D m     !��
�� 
cfol
E ��
F��
�� 
prdt
F K   " &
G
G ��
H��
�� 
pnam
H m   # $
I
I �
J
J * T e m p   E x p o r t   F r o m   M a i l��  ��  
B m    
K
K�                                                                                  MACS  alis    t  Macintosh HD               Β�:H+     4
Finder.app                                                      %B�``9        ����  	                CoreServices    Β�*      �`D       4   1   0  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  
* 
L
M
L l     ��������  ��  ��  
M 
N
O
N l     ��
P
Q��  
P  ATTACHMENT PROCESSING   
Q �
R
R * A T T A C H M E N T   P R O C E S S I N G
O 
S
T
S i   � �
U
V
U I      ��
W���� 0 attachment_process  
W 
X
Y
X o      ���� 0 thismessage thisMessage
Y 
Z��
Z o      ���� 0 n  ��  ��  
V O     �
[
\
[ k    �
]
] 
^
_
^ l   ��������  ��  ��  
_ 
`
a
` l   ��
b
c��  
b 0 *MAKE SURE TEXT ITEM DELIMITERS ARE DEFAULT   
c �
d
d T M A K E   S U R E   T E X T   I T E M   D E L I M I T E R S   A R E   D E F A U L T
a 
e
f
e r    	
g
h
g m    
i
i �
j
j  
h n     
k
l
k 1    ��
�� 
txdl
l 1    ��
�� 
ascr
f 
m
n
m l  
 
��������  ��  ��  
n 
o
p
o l  
 
��
q
r��  
q ) #TEMP FILES PROCESSED ON THE DESKTOP   
r �
s
s F T E M P   F I L E S   P R O C E S S E D   O N   T H E   D E S K T O P
p 
t
u
t r   
 
v
w
v c   
 
x
y
x l  
 
z����
z b   
 
{
|
{ l  
 
}����
} I  
 ��
~��
�� .earsffdralis        afdr
~ m   
 ��
�� afdmdesk��  ��  ��  
| m    

 �
�
� , T e m p   E x p o r t   F r o m   M a i l :��  ��  
y m    ��
�� 
TEXT
w o      ���� 0 exportfolder ExportFolder
u 
�
�
� r    
�
�
� n   
�
�
� I    ��
����� 0 f_exists  
� 
���
� o    ���� 0 exportfolder ExportFolder��  ��  
�  f    
� o      ���� 0 saveloc SaveLoc
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��
�
���  
�  PROCESS THE ATTACHMENTS   
� �
�
� . P R O C E S S   T H E   A T T A C H M E N T S
� 
�
�
� r    $
�
�
� n   "
�
�
� 2    "��
�� 
attc
� o     ���� 0 thismessage thisMessage
� o      ����  0 theattachments theAttachments
� 
�
�
� r   % (
�
�
� m   % &����  
� o      ���� 0 attcount attCount
� 
�
�
� X   ) �
���
�
� k   9 �
�
� 
�
�
� r   9 @
�
�
� b   9 >
�
�
� o   9 :���� 0 exportfolder ExportFolder
� n  : =
�
�
� 1   ; =��
�� 
pnam
� o   : ;���� 0 theattachment theAttachment
� o      ���� 0 thefilename theFileName
� 
�
�
� Q   A W
�
���
� I  D N��
�
�
�� .coresavenull���     obj 
� o   D E���� 0 theattachment theAttachment
� ��
���
�� 
kfil
� 4   F J��
�
�� 
file
� o   H I���� 0 thefilename theFileName��  
� R      ������
�� .ascrerr ****      � ****��  ��  ��  
� 
�
�
� O   X p
�
�
� O  ^ o
�
�
� I  b n����
�
�� .EVRNadtnnull���     EVnn��  
� ��
���
�� 
EV21
� 4   f j��
�
�� 
file
� o   h i���� 0 thefilename theFileName��  
� o   ^ _���� 0 n  
� m   X [
�
��                                                                                  EVRN  alis    V  Macintosh HD               Β�:H+     VEvernote.app                                                    -�8�?=�        ����  	                Applications    Β�*      �?!�       V  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  
� 
�
�
� l  q q��������  ��  ��  
� 
�
�
� l  q q��
�
���  
�   SILENT DELETE OF TEMP FILE   
� �
�
� 4 S I L E N T   D E L E T E   O F   T E M P   F I L E
� 
�
�
� r   q �
�
�
� I  q ~��
�
�
�� .earsffdralis        afdr
� m   q t��
�� afdmtrsh
� ��
���
�� 
from
� m   w z��
�� fldmfldu��  
� o      ���� 0 trash_folder trash_Folder
� 
�
�
� I  � ���
���
�� .sysoexecTEXT���     TEXT
� b   � �
�
�
� b   � �
�
�
� b   � �
�
�
� m   � �
�
� �
�
�  m v  
� n   � �
�
�
� 1   � ���
�� 
strq
� n   � �
�
�
� 1   � ���
�� 
psxp
� o   � ����� 0 thefilename theFileName
� 1   � ���
�� 
spac
� n   � �
�
�
� 1   � ���
�� 
strq
� n   � �
�
�
� 1   � ���
�� 
psxp
� o   � ����� 0 trash_folder trash_Folder��  
� 
���
� l  � ���������  ��  ��  ��  �� 0 theattachment theAttachment
� o   , -����  0 theattachments theAttachments
� 
�
�
� l  � ���������  ��  ��  
� 
�
�
� l  � ���
�
���  
� " SILENT DELETE OF TEMP FOLDER   
� �
�
� 8 S I L E N T   D E L E T E   O F   T E M P   F O L D E R
� 
�
�
� r   � �
�
�
� n  � �
�
�
� I   � ���
����� 0 trashfolder  
� 
���
� o   � ����� 0 saveloc SaveLoc��  ��  
�  f   � �
� o      ���� 0 success  
� 
���
� l  � ���������  ��  ��  ��  
\ m     
�
��                                                                                  emal  alis    F  Macintosh HD               Β�:H+     VMail.app                                                        �.΅�        ����  	                Applications    Β�*      ΄��       V  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  
T 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� : 4SILENT DELETE OF TEMP FOLDER (THANKS MARTIN MICHEL!)   
� �
�
� h S I L E N T   D E L E T E   O F   T E M P   F O L D E R   ( T H A N K S   M A R T I N   M I C H E L ! )
� 
�
�
� i   � �
�
�
� I      ��
����� 0 trashfolder  
� 
���
� o      �� 0 saveloc SaveLoc��  ��  
� Q     �
�
�
�
� k    �
�
� 
�
�
� r    
� 
� l   
�~�} c    
 l   �|�{ I   �z�y
�z .earsffdralis        afdr m    �x
�x afdrtrsh�y  �|  �{   m    	�w
�w 
utxt�~  �}    o      �v�v 0 trashfolderpath  
�  r    	 I   �u
�t
�u .sysonfo4asfe        file
 l   �s�r c     o    �q�q 0 saveloc SaveLoc m    �p
�p 
alis�s  �r  �t  	 o      �o�o 0 srcfolderinfo    r     n     1    �n
�n 
pnam o    �m�m 0 srcfolderinfo   o      �l�l 0 srcfoldername    r    $ n    " 1     "�k
�k 
strq n      1     �j
�j 
psxp o    �i�i 0 saveloc SaveLoc o      �h�h 0 saveloc SaveLoc  r   % ( m   % &�g�g   o      �f�f 0 counter    !  T   ) f"" k   . a## $%$ Z   . I&'�e(& =  . 1)*) o   . /�d�d 0 counter  * m   / 0�c�c  ' r   4 ;+,+ b   4 9-.- b   4 7/0/ o   4 5�b�b 0 trashfolderpath  0 o   5 6�a�a 0 srcfoldername  . m   7 811 �22  :, o      �`�` 0 destfolderpath  �e  ( r   > I343 b   > G565 b   > E787 b   > C9:9 b   > A;<; o   > ?�_�_ 0 trashfolderpath  < o   ? @�^�^ 0 srcfoldername  : m   A B== �>>   8 o   C D�]�] 0 counter  6 m   E F?? �@@  :4 o      �\�\ 0 destfolderpath  % ABA Q   J [CDEC r   M RFGF c   M PHIH o   M N�[�[ 0 destfolderpath  I m   N O�Z
�Z 
alisG o      �Y�Y 0 destfolderalias  D R      �X�W�V
�X .ascrerr ****      � ****�W  �V  E  S   Z [B J�UJ r   \ aKLK [   \ _MNM o   \ ]�T�T 0 counter  N m   ] ^�S�S L o      �R�R 0 counter  �U  ! OPO r   g nQRQ n   g lSTS 1   j l�Q
�Q 
strqT n   g jUVU 1   h j�P
�P 
psxpV o   g h�O�O 0 destfolderpath  R o      �N�N 0 destfolderpath  P WXW r   o xYZY b   o v[\[ b   o t]^] b   o r_`_ m   o paa �bb  d i t t o  ` o   p q�M�M 0 saveloc SaveLoc^ 1   r s�L
�L 
spac\ o   t u�K�K 0 destfolderpath  Z o      �J�J 0 command  X cdc I  y ~�Ie�H
�I .sysoexecTEXT���     TEXTe o   y z�G�G 0 command  �H  d fgf l   �Fhi�F  h 9 3 this won't be executed if the ditto command errors   i �jj f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r sg klk r    �mnm b    �opo m    �qq �rr  r m   - r  p o   � ��E�E 0 saveloc SaveLocn o      �D�D 0 command  l sts I  � ��Cu�B
�C .sysoexecTEXT���     TEXTu o   � ��A�A 0 command  �B  t v�@v L   � �ww m   � ��?
�? boovtrue�@  
� R      �>�=�<
�> .ascrerr ****      � ****�=  �<  
� L   � �xx m   � ��;
�; boovfals
� yzy l     �:�9�8�:  �9  �8  z {|{ l      �7}~�7  } x r 
======================================
// HTML CLEANUP SUBROUTINES 
=======================================
   ~ � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   H T M L   C L E A N U P   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
| ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  � $ HEADER STRIP (THANKS DOMINIK!)   � ��� < H E A D E R   S T R I P   ( T H A N K S   D O M I N I K ! )� ��� i   � ���� I      �2��1�2 0 stripheader stripHeader� ��� o      �0�0 0 
parasource 
paraSource� ��/� o      �.�. 0 myheaderlines myHeaderlines�/  �1  � k     x�� ��� l     �-�,�+�-  �,  �+  � ��� l     �*���*  � * $ FIND THE LAST NON-EMPTY HEADER LINE   � ��� H   F I N D   T H E   L A S T   N O N - E M P T Y   H E A D E R   L I N E� ��� r     ��� m     �� ���  � o      �)�) 0 lastheaderline  � ��� r    ��� I   	�(��'
�( .corecnte****       ****� l   ��&�%� o    �$�$ 0 myheaderlines myHeaderlines�&  �%  �'  � o      �#�# 0 n  � ��� V    %��� k     �� ��� r    ��� n    ��� 4    �"�
�" 
cobj� o    �!�! 0 n  � o    � �  0 myheaderlines myHeaderlines� o      �� 0 lastheaderline  � ��� r     ��� \    ��� o    �� 0 n  � m    �� � o      �� 0 n  �  � l   ���� =    ��� o    �� 0 lastheaderline  � m    �� ���  �  �  � ��� l  & &����  �  �  � ��� l  & &����  �   COMPARE HEADER TO SOURCE   � ��� 2   C O M P A R E   H E A D E R   T O   S O U R C E� ��� r   & -��� l  & +���� I  & +���
� .corecnte****       ****� o   & '�� 0 
parasource 
paraSource�  �  �  � o      �� 0 sourcelength  � ��� Y   . K������ Z  8 F����
� l  8 >��	�� =  8 >��� n   8 <��� 4   9 <��
� 
cobj� o   : ;�� 0 n  � o   8 9�� 0 
parasource 
paraSource� m   < =�� ���  �	  �  �  S   A B�  �
  � 0 n  � m   1 2�� � o   2 3�� 0 sourcelength  �  � ��� l  L L��� �  �  �   � ��� l  L L������  �   STRIP OUT THE HEADERS   � ��� ,   S T R I P   O U T   T H E   H E A D E R S� ��� r   L [��� l  L Y������ n   L Y��� 7  M Y����
�� 
cobj� l  Q U������ [   Q U��� o   R S���� 0 n  � m   S T���� ��  ��  � o   V X���� 0 sourcelength  � o   L M���� 0 
parasource 
paraSource��  ��  � o      ����  0 cutsourceitems cutSourceItems� ��� r   \ a��� n  \ _��� 1   ] _��
�� 
txdl� 1   \ ]��
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� r   b g��� o   b c��
�� 
ret � n     ��� 1   d f��
�� 
txdl� 1   c d��
�� 
ascr� ��� r   h m��� l  h k������ c   h k��� o   h i����  0 cutsourceitems cutSourceItems� m   i j��
�� 
ctxt��  ��  � o      ���� 0 	cutsource 	cutSource� ��� r   n s��� o   n o���� 0 	olddelims 	oldDelims� n     � � 1   p r��
�� 
txdl  1   o p��
�� 
ascr�  l  t t��������  ��  ��    L   t v o   t u���� 0 	cutsource 	cutSource �� l  w w��������  ��  ��  ��  �  l     ��������  ��  ��   	
	 l     ����    BASE64 CHECK    �  B A S E 6 4   C H E C K
  i   � � I      ������ 0 base64_check base64_Check �� o      ���� 0 mysource mySource��  ��   k     L  r      m     ��
�� boovfals o      ���� 0 base64detect base64Detect  r     m     � B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4 o      ���� 0 base64msgstr base64MsgStr   r    !"! m    	## �$$ $ C o n t e n t - T y p e :   t e x t" o      ���� &0 base64contenttype base64ContentType  %&% r    '(' I   ����)
�� .sysooffslong    ��� null��  ) ��*+
�� 
psof* o    ���� 0 base64msgstr base64MsgStr+ ��,��
�� 
psin, o    ���� 0 mysource mySource��  ( o      ���� "0 base64msgoffset base64MsgOffset& -.- r    #/0/ I   !����1
�� .sysooffslong    ��� null��  1 ��23
�� 
psof2 o    ���� &0 base64contenttype base64ContentType3 ��4��
�� 
psin4 o    ���� 0 mysource mySource��  0 o      ���� *0 base64contentoffset base64ContentOffset. 565 r   $ +787 c   $ )9:9 \   $ ';<; o   $ %���� "0 base64msgoffset base64MsgOffset< o   % &���� *0 base64contentoffset base64ContentOffset: m   ' (��
�� 
doub8 o      ���� 0 base64offset base64Offset6 =>= r   , 1?@? c   , /ABA o   , -���� 0 base64offset base64OffsetB m   - .��
�� 
nmbr@ o      ���� 0 	theoffset 	theOffset> CDC Z   2 IEF����E A  2 5GHG o   2 3���� 0 	theoffset 	theOffsetH m   3 4���� 2F Z  8 EIJ����I ?  8 ;KLK o   8 9���� 0 	theoffset 	theOffsetL m   9 :������J r   > AMNM m   > ?��
�� boovtrueN o      ���� 0 base64detect base64Detect��  ��  ��  ��  D O��O L   J LPP o   J K���� 0 base64detect base64Detect��   QRQ l     ��������  ��  ��  R STS l     ��UV��  U  BASE64 DECODE   V �WW  B A S E 6 4   D E C O D ET XYX i   � �Z[Z I      ��\���� 0 base64_decode base64_Decode\ ]��] o      ���� 0 mysource mySource��  ��  [ k     ]^^ _`_ l     ��ab��  a , &USE TID TO QUICKLY ISOLATE BASE64 DATA   b �cc L U S E   T I D   T O   Q U I C K L Y   I S O L A T E   B A S E 6 4   D A T A` ded r     fgf n    hih 1    ��
�� 
txdli 1     ��
�� 
ascrg o      ���� 0 olddelim oldDelime jkj r    lml m    nn �oo . C o n t e n t - T y p e :   t e x t / h t m lm n     pqp 1    
��
�� 
txdlq 1    ��
�� 
ascrk rsr r    tut n    vwv 4   ��x
�� 
citmx m    ���� w o    ���� 0 mysource mySourceu o      ���� 0 
base64_raw 
base64_Raws yzy r    {|{ b    }~} 1    ��
�� 
lnfd~ 1    ��
�� 
lnfd| n     � 1    ��
�� 
txdl� 1    ��
�� 
ascrz ��� r    -��� n    '��� 4  $ '���
�� 
citm� m   % &���� � o    $���� 0 
base64_raw 
base64_Raw� o      ���� 0 
base64_raw 
base64_Raw� ��� r   . 3��� m   . /�� ��� 
 - - - - -� n     ��� 1   0 2��
�� 
txdl� 1   / 0��
�� 
ascr� ��� r   4 B��� n   4 <��� 4  9 <���
�� 
citm� m   : ;���� � o   4 9���� 0 
base64_raw 
base64_Raw� o      ���� 0 	multihtml 	multiHTML� ��� r   C H��� o   C D���� 0 olddelim oldDelim� n     ��� 1   E G��
�� 
txdl� 1   D E��
�� 
ascr� ��� l  I I��������  ��  ��  � ��� l  I I������  �  DECODE BASE64   � ���  D E C O D E   B A S E 6 4� ��� r   I Z��� I  I X�����
�� .sysoexecTEXT���     TEXT� b   I T��� b   I R��� m   I J�� ��� 
 e c h o  � l  J Q������ n   J Q��� 1   O Q��
�� 
strq� o   J O���� 0 	multihtml 	multiHTML��  ��  � m   R S�� ��� & |   o p e n s s l   b a s e 6 4   - d��  � o      ���� 0 basehtml baseHTML� ��� l  [ [�������  ��  �  � ��~� L   [ ]�� o   [ \�}�} 0 basehtml baseHTML�~  Y ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  �  HTML FIX   � ���  H T M L   F I X� ��� i   � ���� I      �u��t�u 0 htmlfix htmlFix� ��� o      �s�s 0 evhtml evHTML� ��� o      �r�r 0 theboundary theBoundary� ��q� o      �p�p 0 	mycontent 	myContent�q  �t  � k    
�� ��� l     �o�n�m�o  �n  �m  � ��� r     ��� n    ��� 1    �l
�l 
txdl� 1     �k
�k 
ascr� o      �j�j 0 	olddelims 	oldDelims� ��� r    ��� c    	��� o    �i�i 0 evhtml evHTML� m    �h
�h 
TEXT� o      �g�g 0 	multihtml 	multiHTML� ��� l   �f�e�d�f  �e  �d  � ��� l   �c���c  � ! TEST FOR / STRIP OUT HEADER   � ��� 6 T E S T   F O R   /   S T R I P   O U T   H E A D E R� ��� r    ��� n    ��� 2   �b
�b 
cpar� o    �a�a 0 	multihtml 	multiHTML� o      �`�` 0 
parasource 
paraSource� ��� Z    ;���_�^� E     ��� n    ��� 4    �]�
�] 
cobj� m    �\�\ � o    �[�[ 0 
parasource 
paraSource� m    �� ���  R e c e i v e d :� k   # 7�� ��� r   # )��� l  # '��Z�Y� n   # '��� 4   $ '�X�
�X 
cobj� m   % &�W�W � o   # $�V�V 0 
parasource 
paraSource�Z  �Y  � o      �U�U 0 myheaderlines myHeaderlines� ��T� r   * 7��� n  * 1��� I   + 1�S �R�S 0 stripheader stripHeader   o   + ,�Q�Q 0 
parasource 
paraSource �P o   , -�O�O 0 myheaderlines myHeaderlines�P  �R  �  f   * +� o      �N�N 0 	multihtml 	multiHTML�T  �_  �^  �  l  < <�M�L�K�M  �L  �K    l  < <�J	�J    TRIM ENDING   	 �

  T R I M   E N D I N G  Z   < m�I E   < C o   < A�H�H 0 	multihtml 	multiHTML m   A B �  < / h t m l > r   F X n  F R I   G R�G�F�G  0 extractbetween extractBetween  o   G L�E�E 0 	multihtml 	multiHTML  m   L M � . C o n t e n t - T y p e :   t e x t / h t m l �D m   M N   �!!  < / h t m l >�D  �F    f   F G o      �C�C 0 	multihtml 	multiHTML�I   r   [ m"#" n  [ g$%$ I   \ g�B&�A�B  0 extractbetween extractBetween& '(' o   \ a�@�@ 0 	multihtml 	multiHTML( )*) m   a b++ �,, . C o n t e n t - T y p e :   t e x t / h t m l* -�?- o   b c�>�> 0 theboundary theBoundary�?  �A  %  f   [ \# o      �=�= 0 	multihtml 	multiHTML ./. r   n w010 n   n u232 2  s u�<
�< 
cpar3 o   n s�;�; 0 	multihtml 	multiHTML1 o      �:�: 0 
parasource 
paraSource/ 454 l  x x�9�8�7�9  �8  �7  5 676 l  x x�689�6  8 - 'TEST FOR / STRIP OUT LEADING SEMI-COLON   9 �:: N T E S T   F O R   /   S T R I P   O U T   L E A D I N G   S E M I - C O L O N7 ;<; Z   x �=>�5�4= E   x ~?@? n   x |ABA 4   y |�3C
�3 
cobjC m   z {�2�2 B o   x y�1�1 0 
parasource 
paraSource@ m   | }DD �EE  ;> k   � �FF GHG r   � �IJI l  � �K�0�/K n   � �LML 4   � ��.N
�. 
cobjN m   � ��-�- M o   � ��,�, 0 
parasource 
paraSource�0  �/  J o      �+�+ 0 myheaderlines myHeaderlinesH OPO r   � �QRQ n  � �STS I   � ��*U�)�* 0 stripheader stripHeaderU VWV o   � ��(�( 0 
parasource 
paraSourceW X�'X o   � ��&�& 0 myheaderlines myHeaderlines�'  �)  T  f   � �R o      �%�% 0 	multihtml 	multiHTMLP Y�$Y r   � �Z[Z n   � �\]\ 2  � ��#
�# 
cpar] o   � ��"�" 0 	multihtml 	multiHTML[ o      �!�! 0 
parasource 
paraSource�$  �5  �4  < ^_^ l  � �� ���   �  �  _ `a` l  � ��bc�  b H BTEST FOR EMPTY LINE / CLEAN SUBSEQUENT ENCODING INFO, IF NECESSARY   c �dd � T E S T   F O R   E M P T Y   L I N E   /   C L E A N   S U B S E Q U E N T   E N C O D I N G   I N F O ,   I F   N E C E S S A R Ya efe Z   �gh��g =  � �iji n   � �klk 4   � ��m
� 
cobjm m   � ��� l o   � ��� 0 
parasource 
paraSourcej m   � �nn �oo  h k   �pp qrq l  � ��st�  s 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   t �uu \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N Gr vwv Z   � �xy��x E   � �z{z n   � �|}| 4   � ��~
� 
cobj~ m   � ��� } o   � ��� 0 
parasource 
paraSource{ m   � � ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n gy k   � ��� ��� r   � ���� l  � ����� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 
parasource 
paraSource�  �  � o      �� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � ����
� 0 stripheader stripHeader� ��� o   � ��	�	 0 
parasource 
paraSource� ��� o   � ��� 0 myheaderlines myHeaderlines�  �
  �  f   � �� o      �� 0 	multihtml 	multiHTML� ��� r   � ���� n   � ���� 2  � ��
� 
cpar� o   � ��� 0 	multihtml 	multiHTML� o      �� 0 
parasource 
paraSource�  �  �  w ��� l  � �����  � " TEST FOR / STRIP OUT CHARSET   � ��� 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E T� �� � Z   �������� E   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ���  c h a r s e t� k   � �� ��� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource� ���� o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML� ���� r   � ��� n   � ���� 2  � ���
�� 
cpar� o   � ����� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  ��  ��  �   �  �  f ��� l 		��������  ��  ��  � ��� l 		������  � 4 .TEST FOR / STRIP OUT CONTENT-TRANSFER-ENCODING   � ��� \ T E S T   F O R   /   S T R I P   O U T   C O N T E N T - T R A N S F E R - E N C O D I N G� ��� Z  	6������� E  	��� n  	��� 4  
���
�� 
cobj� m  ���� � o  	
���� 0 
parasource 
paraSource� m  �� ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n g� k  2�� ��� r  ��� l ������ n  ��� 4  ���
�� 
cobj� m  ���� � o  ���� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r  (��� n "��� I  "������� 0 stripheader stripHeader� ��� o  ���� 0 
parasource 
paraSource� ���� o  ���� 0 myheaderlines myHeaderlines��  ��  �  f  � o      ���� 0 	multihtml 	multiHTML� ���� r  )2��� n  )0��� 2 .0��
�� 
cpar� o  ).���� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  ��  ��  � ��� l 77��������  ��  ��  � ��� l 77������  � " TEST FOR / STRIP OUT CHARSET   � ��� 8 T E S T   F O R   /   S T R I P   O U T   C H A R S E T� ��� Z  7d������� E  7?��� n  7;��� 4  8;���
�� 
cobj� m  9:���� � o  78���� 0 
parasource 
paraSource� m  ;>�� ���  c h a r s e t� k  B`�� ��� r  BH� � l BF���� n  BF 4  CF��
�� 
cobj m  DE����  o  BC���� 0 
parasource 
paraSource��  ��    o      ���� 0 myheaderlines myHeaderlines�  r  IV n IP	
	 I  JP������ 0 stripheader stripHeader  o  JK���� 0 
parasource 
paraSource �� o  KL���� 0 myheaderlines myHeaderlines��  ��  
  f  IJ o      ���� 0 	multihtml 	multiHTML �� r  W` n  W^ 2 \^��
�� 
cpar o  W\���� 0 	multihtml 	multiHTML o      ���� 0 
parasource 
paraSource��  ��  ��  �  l ee��������  ��  ��    l ee����    CLEAN CONTENT    �  C L E A N   C O N T E N T  r  ej o  ef���� 0 theboundary theBoundary n       1  gi��
�� 
txdl  1  fg��
�� 
ascr !"! r  kz#$# n  kt%&% 2 pt��
�� 
citm& o  kp���� 0 	multihtml 	multiHTML$ o      ����  0 thesourceitems theSourceItems" '(' r  {�)*) m  {~++ �,,  * n     -.- 1  ���
�� 
txdl. 1  ~��
�� 
ascr( /0/ r  ��121 c  ��343 o  ������  0 thesourceitems theSourceItems4 m  ����
�� 
ctxt2 o      ���� 0 
theencoded 
theEncoded0 565 l ����������  ��  ��  6 787 r  ��9:9 m  ��;; �<<  %: n     =>= 1  ����
�� 
txdl> 1  ����
�� 
ascr8 ?@? r  ��ABA n  ��CDC 2 ����
�� 
citmD o  ������ 0 
theencoded 
theEncodedB o      ����  0 thesourceitems theSourceItems@ EFE r  ��GHG c  ��IJI b  ��KLK m  ��MM �NN  & #L m  ��OO �PP  3 7 ;J m  ����
�� 
TEXTH n     QRQ 1  ����
�� 
txdlR 1  ����
�� 
ascrF STS r  ��UVU c  ��WXW o  ������  0 thesourceitems theSourceItemsX m  ����
�� 
ctxtV o      ���� 0 
theencoded 
theEncodedT YZY l ����������  ��  ��  Z [\[ r  ��]^] m  ��__ �``  =^ n     aba 1  ����
�� 
txdlb 1  ����
�� 
ascr\ cdc r  ��efe n  ��ghg 2 ����
�� 
citmh o  ������ 0 
theencoded 
theEncodedf o      ����  0 thesourceitems theSourceItemsd iji r  ��klk m  ��mm �nn  %l n     opo 1  ����
�� 
txdlp 1  ����
�� 
ascrj qrq r  ��sts c  ��uvu o  ������  0 thesourceitems theSourceItemsv m  ����
�� 
ctxtt o      ���� 0 
theencoded 
theEncodedr wxw l ����������  ��  ��  x yzy r  ��{|{ m  ��}} �~~  % "| n     � 1  ����
�� 
txdl� 1  ����
�� 
ascrz ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  = "� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l �������  ��  �  � ��� r  ��� b  ��� m  �� ���  %� l ��~�}� I �|��{
�| .sysontocTEXT       shor� m  �z�z �{  �~  �}  � n     ��� 1  �y
�y 
txdl� 1  �x
�x 
ascr� ��� r  (��� n  "��� 2 "�w
�w 
citm� o  �v�v 0 
theencoded 
theEncoded� o      �u�u  0 thesourceitems theSourceItems� ��� r  )0��� m  ),�� ���  � n     ��� 1  -/�t
�t 
txdl� 1  ,-�s
�s 
ascr� ��� r  1<��� c  1:��� o  16�r�r  0 thesourceitems theSourceItems� m  69�q
�q 
ctxt� o      �p�p 0 
theencoded 
theEncoded� ��� l ==�o�n�m�o  �n  �m  � ��� r  =D��� m  =@�� ���  % %� n     ��� 1  AC�l
�l 
txdl� 1  @A�k
�k 
ascr� ��� r  EP��� n  EJ��� 2 FJ�j
�j 
citm� o  EF�i�i 0 
theencoded 
theEncoded� o      �h�h  0 thesourceitems theSourceItems� ��� r  QX��� m  QT�� ���  %� n     ��� 1  UW�g
�g 
txdl� 1  TU�f
�f 
ascr� ��� r  Yd��� c  Yb��� o  Y^�e�e  0 thesourceitems theSourceItems� m  ^a�d
�d 
ctxt� o      �c�c 0 
theencoded 
theEncoded� ��� l ee�b�a�`�b  �a  �`  � ��� r  et��� b  ep��� m  eh�� ���  %� l ho��_�^� I ho�]��\
�] .sysontocTEXT       shor� m  hk�[�[ 
�\  �_  �^  � n     ��� 1  qs�Z
�Z 
txdl� 1  pq�Y
�Y 
ascr� ��� r  u���� n  uz��� 2 vz�X
�X 
citm� o  uv�W�W 0 
theencoded 
theEncoded� o      �V�V  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ���U
�U 
txdl� 1  ���T
�T 
ascr� ��� r  ����� c  ����� o  ���S�S  0 thesourceitems theSourceItems� m  ���R
�R 
ctxt� o      �Q�Q 0 
theencoded 
theEncoded� ��� l ���P�O�N�P  �O  �N  � ��� r  ����� m  ���� ���  % 0 A� n     � � 1  ���M
�M 
txdl  1  ���L
�L 
ascr�  r  �� n  �� 2 ���K
�K 
citm o  ���J�J 0 
theencoded 
theEncoded o      �I�I  0 thesourceitems theSourceItems  r  ��	
	 m  �� �  
 n      1  ���H
�H 
txdl 1  ���G
�G 
ascr  r  �� c  �� o  ���F�F  0 thesourceitems theSourceItems m  ���E
�E 
ctxt o      �D�D 0 
theencoded 
theEncoded  l ���C�B�A�C  �B  �A    r  �� m  �� �  % 0 9 n      1  ���@
�@ 
txdl 1  ���?
�? 
ascr   r  ��!"! n  ��#$# 2 ���>
�> 
citm$ o  ���=�= 0 
theencoded 
theEncoded" o      �<�<  0 thesourceitems theSourceItems  %&% r  ��'(' m  ��)) �**  ( n     +,+ 1  ���;
�; 
txdl, 1  ���:
�: 
ascr& -.- r  ��/0/ c  ��121 o  ���9�9  0 thesourceitems theSourceItems2 m  ���8
�8 
ctxt0 o      �7�7 0 
theencoded 
theEncoded. 343 l ���6�5�4�6  �5  �4  4 565 r  ��787 m  ��99 �::  % C 2 % A 08 n     ;<; 1  ���3
�3 
txdl< 1  ���2
�2 
ascr6 =>= r  ��?@? n  ��ABA 2 ���1
�1 
citmB o  ���0�0 0 
theencoded 
theEncoded@ o      �/�/  0 thesourceitems theSourceItems> CDC r  � EFE m  ��GG �HH  & n b s p ;F n     IJI 1  ���.
�. 
txdlJ 1  ���-
�- 
ascrD KLK r  MNM c  
OPO o  �,�,  0 thesourceitems theSourceItemsP m  	�+
�+ 
ctxtN o      �*�* 0 
theencoded 
theEncodedL QRQ l �)�(�'�)  �(  �'  R STS r  UVU m  WW �XX  % 2 0V n     YZY 1  �&
�& 
txdlZ 1  �%
�% 
ascrT [\[ r   ]^] n  _`_ 2 �$
�$ 
citm` o  �#�# 0 
theencoded 
theEncoded^ o      �"�"  0 thesourceitems theSourceItems\ aba r  !(cdc m  !$ee �ff   d n     ghg 1  %'�!
�! 
txdlh 1  $%� 
�  
ascrb iji r  )4klk c  )2mnm o  ).��  0 thesourceitems theSourceItemsn m  .1�
� 
ctxtl o      �� 0 
theencoded 
theEncodedj opo l 55����  �  �  p qrq r  5@sts l 5<u��u I 5<�v�
� .sysontocTEXT       shorv m  58�� 
�  �  �  t n     wxw 1  =?�
� 
txdlx 1  <=�
� 
ascrr yzy r  AL{|{ n  AF}~} 2 BF�
� 
citm~ o  AB�� 0 
theencoded 
theEncoded| o      ��  0 thesourceitems theSourceItemsz � r  MT��� m  MP�� ���  � n     ��� 1  QS�
� 
txdl� 1  PQ�
� 
ascr� ��� r  U`��� c  U^��� o  UZ��  0 thesourceitems theSourceItems� m  Z]�
� 
ctxt� o      �� 0 
theencoded 
theEncoded� ��� l aa�
�	��
  �	  �  � ��� r  ah��� m  ad�� ���  =� n     ��� 1  eg�
� 
txdl� 1  de�
� 
ascr� ��� r  it��� n  in��� 2 jn�
� 
citm� o  ij�� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  u���� c  u~��� b  u|��� m  ux�� ���  & #� m  x{�� ���  6 1 ;� m  |}�
� 
TEXT� n     ��� 1  ��
� 
txdl� 1  ~� 
�  
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  $� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 6 ;� m  ����
�� 
TEXT� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  '� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  & a p o s ;� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  "� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� � n  �� 2 ����
�� 
citm o  ������ 0 
theencoded 
theEncoded  o      ����  0 thesourceitems theSourceItems�  r  �  m  �� �  \ " n     	
	 1  ����
�� 
txdl
 1  ����
�� 
ascr  r   c  
 o  ����  0 thesourceitems theSourceItems m  	��
�� 
ctxt o      ���� 0 
theencoded 
theEncoded  l ��������  ��  ��    r   o  ���� 0 	olddelims 	oldDelims n      1  ��
�� 
txdl 1  ��
�� 
ascr  l ��������  ��  ��    r  ! n   I  ��!����  0 extractbetween extractBetween! "#" o  ���� 0 
theencoded 
theEncoded# $%$ m  && �''  < / h e a d >% (��( m  )) �**  < / h t m l >��  ��     f   o      ���� 0 trimhtml trimHTML +,+ l ""��������  ��  ��  , -.- r  "%/0/ o  "#���� 0 	mycontent 	myContent0 o      ���� 0 thehtml theHTML. 121 l &&��������  ��  ��  2 343 Q  &56��5 k  )�77 898 r  )0:;: m  )*��
�� boovfals; o      ����  0 decode_success decode_Success9 <=< l 11��������  ��  ��  = >?> l 11��@A��  @  
UTF-8 CONV   A �BB  U T F - 8   C O N V? CDC r  1DEFE I 1B��G��
�� .sysoexecTEXT���     TEXTG b  1>HIH b  1:JKJ m  14LL �MM 
 e c h o  K n  49NON 1  59��
�� 
strqO o  45���� 0 trimhtml trimHTMLI m  :=PP �QQ $   |   i c o n v   - t   U T F - 8  ��  F o      ����  0 newencodedtext NewEncodedTextD RSR r  ELTUT n  EJVWV 1  FJ��
�� 
strqW o  EF����  0 newencodedtext NewEncodedTextU o      ���� 0 the_utf8text the_UTF8TextS XYX l MM��������  ��  ��  Y Z[Z l MM��\]��  \  URL DECODE CONVERSION   ] �^^ * U R L   D E C O D E   C O N V E R S I O N[ _`_ r  M\aba c  MZcdc b  MVefe b  MRghg m  MPii �jj . p h p   - r   " e c h o   u r l d e c o d e (h o  PQ���� 0 the_utf8text the_UTF8Textf m  RUkk �ll  ) ; "d m  VY��
�� 
ctxtb o      ���� "0 thedecodescript theDecodeScript` mnm r  ]dopo I ]b��q��
�� .sysoexecTEXT���     TEXTq o  ]^���� "0 thedecodescript theDecodeScript��  p o      ���� 0 
thedecoded 
theDecodedn rsr l ee��������  ��  ��  s tut l ee��vw��  v 2 ,FIX FOR APOSTROPHE / PERCENT / EQUALS ISSUES   w �xx X F I X   F O R   A P O S T R O P H E   /   P E R C E N T   /   E Q U A L S   I S S U E Su yzy r  el{|{ m  eh}} �~~  & a p o s ;| n     � 1  ik��
�� 
txdl� 1  hi��
�� 
ascrz ��� r  mx��� n  mr��� 2 nr��
�� 
citm� o  mn���� 0 
thedecoded 
theDecoded� o      ����  0 thesourceitems theSourceItems� ��� r  y���� m  y|�� ���  '� n     ��� 1  }��
�� 
txdl� 1  |}��
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
thedecoded 
theDecoded� ��� l ����������  ��  ��  � ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ����
�� 
TEXT� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
thedecoded 
theDecoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� o  ������  0 thesourceitems theSourceItems� m  ����
�� 
ctxt� o      ���� 0 
thedecoded 
theDecoded� ��� l ����������  ��  ��  � ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  6 1 ;� m  ����
�� 
TEXT� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
thedecoded 
theDecoded� o      ����  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  =� n     ��� 1  ���
� 
txdl� 1  ���~
�~ 
ascr� ��� r  ����� c  ����� o  ���}�}  0 thesourceitems theSourceItems� m  ���|
�| 
ctxt� o      �{�{ 0 
thedecoded 
theDecoded� ��� l ���z�y�x�z  �y  �x  � ��� l ���w���w  �  RETURN THE VALUE   � ���   R E T U R N   T H E   V A L U E� ��� r  ����� o  ���v�v 0 
thedecoded 
theDecoded� o      �u�u 0 	finalhtml 	finalHTML� ��� r  ����� m  ���t
�t boovtrue� o      �s�s  0 decode_success decode_Success� ��r� L  ���� o  ���q�q 0 	finalhtml 	finalHTML�r  6 R      �p�o�n
�p .ascrerr ****      � ****�o  �n  ��  4 ��m� l 		�l�k�j�l  �k  �j  �m  � ��� l     �i�h�g�i  �h  �g  � ��� l      �f���f  � p j 
======================================
// GROWL SUBROUTINES
=======================================
   � ��� �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   G R O W L   S U B R O U T I N E S  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
� ��� l     �e�d�c�e  �d  �c  � ��� l     �b���b  �  CHECK FOR GROWL    � ���   C H E C K   F O R   G R O W L  � ��� i   � �� � I      �a�`�_�a 0 growl_check Growl_Check�`  �_    Z     7�^�] I     �\�[�\ 0 appisrunning appIsRunning �Z m     � 
 G r o w l�Z  �[   k   	 3 	 r   	 

 m   	 
�Y
�Y boovtrue o      �X�X 0 growl_running growl_Running	 �W O    3 k    2  r     J      m     � $ I m p o r t   T o   E v e r n o t e  m     � ( S u c c e s s   N o t i f i c a t i o n �V m     � ( F a i l u r e   N o t i f i c a t i o n�V   o      �U�U .0 allnotificationsfiles allNotificationsFiles  !  r    $"#" J    "$$ %&% m    '' �(( $ I m p o r t   T o   E v e r n o t e& )*) m    ++ �,, ( S u c c e s s   N o t i f i c a t i o n* -�T- m     .. �// ( F a i l u r e   N o t i f i c a t i o n�T  # o      �S�S 60 enablednotificationsfiles enabledNotificationsFiles! 0�R0 I  % 2�Q�P1
�Q .registernull��� ��� null�P  1 �O23
�O 
appl2 l 	 ' (4�N�M4 m   ' (55 �66 , A p p l e   M a i l   t o   E v e r n o t e�N  �M  3 �L78
�L 
anot7 l 
 ) *9�K�J9 o   ) *�I�I .0 allnotificationsfiles allNotificationsFiles�K  �J  8 �H:;
�H 
dnot: l 
 + ,<�G�F< o   + ,�E�E 60 enablednotificationsfiles enabledNotificationsFiles�G  �F  ; �D=�C
�D 
iapp= m   - .>> �??  M a i l�C  �R   m    @@�                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �W  �^  �]  � ABA l     �B�A�@�B  �A  �@  B CDC l     �?EF�?  E 1 +ANNOUNCE THE COUNT OF TOTAL ITEMS TO EXPORT   F �GG V A N N O U N C E   T H E   C O U N T   O F   T O T A L   I T E M S   T O   E X P O R TD HIH i   � �JKJ I      �>L�=�> 0 process_items process_ItemsL MNM o      �<�< 0 itemnum itemNumN O�;O o      �:�: 0 attnum attNum�;  �=  K k     �PP QRQ r     STS m     UU �VV  T o      �9�9 0 	attplural 	attPluralR WXW Z    YZ[�8Y =    \]\ o    �7�7 0 attnum attNum] m    �6�6  Z r   
 ^_^ m   
 `` �aa  N o_ o      �5�5 0 attnum attNum[ bcb ?    ded o    �4�4 0 attnum attNume m    �3�3 c f�2f r    ghg m    ii �jj  sh o      �1�1 0 	attplural 	attPlural�2  �8  X k�0k l   �lmnl O    �opo Z   " �qr�/�.q =  " )sts o   " '�-�- 0 growl_running growl_Runningt m   ' (�,
�, boovtruer k   , �uu vwv r   , 1xyx c   , /z{z l  , -|�+�*| o   , -�)�) 0 itemnum itemNum�+  �*  { m   - .�(
�( 
nmbry o      �'�' 0 plural_test Plural_Testw }�&} Z   2 �~�%�~ ?  2 5��� o   2 3�$�$ 0 plural_test Plural_Test� m   3 4�#�#  O   8 `��� I  < _�"�!�
�" .notifygrnull��� ��� null�!  � � ��
�  
name� l 	 > ?���� m   > ?�� ��� $ I m p o r t   T o   E v e r n o t e�  �  � ���
� 
titl� l 	 @ A���� m   @ A�� ��� 4 I m p o r t   T o   E v e r n o t e   S t a r t e d�  �  � ���
� 
desc� b   B O��� b   B M��� b   B K��� b   B I��� b   B G��� b   B E��� m   B C�� ���  N o w   P r o c e s s i n g  � o   C D�� 0 itemnum itemNum� m   E F�� ���    I t e m s   w i t h  � o   G H�� 0 attnum attNum� l 	 I J���� m   I J�� ���    a t t a c h m e n t�  �  � o   K L�� 0 	attplural 	attPlural� m   M N�� ���  .� ���
� 
appl� l 	 P S���� m   P S�� ��� , A p p l e   M a i l   t o   E v e r n o t e�  �  � ���
� 
iapp� m   V Y�� ���  M a i l�  � m   8 9���                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �%  � O   c ���� k   g ��� ��� I  g ����
� .notifygrnull��� ��� null�  � ���
� 
name� l 	 i l���� m   i l�� ��� $ I m p o r t   T o   E v e r n o t e�  �  � �
��
�
 
titl� l 	 m p��	�� m   m p�� ��� 4 I m p o r t   T o   E v e r n o t e   S t a r t e d�	  �  � ���
� 
desc� b   q ���� b   q ���� b   q ���� b   q |��� b   q z��� b   q v��� m   q t�� ���  N o w   P r o c e s s i n g  � o   t u�� 0 itemnum itemNum� m   v y�� ���    I t e m   W i t h  � o   z {�� 0 attnum attNum� l 	 | ���� m   | �� ���    A t t a c h m e n t�  �  � o   � ��� 0 	attplural 	attPlural� m   � ��� ���  .� ���
� 
appl� l 	 � ��� ��� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e�   ��  � �����
�� 
iapp� m   � ��� ���  M a i l��  � ���� l  � ���������  ��  ��  ��  � m   c d���                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �&  �/  �.  p m    ���                                                                                  MACS  alis    t  Macintosh HD               Β�:H+     4
Finder.app                                                      %B�``9        ����  	                CoreServices    Β�*      �`D       4   1   0  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  m  FINDER   n ���  F I N D E R�0  I ��� l     ��������  ��  ��  � ��� l     ������  �  GROWL RESULTS   � ���  G R O W L   R E S U L T S� ��� i   � ���� I      ������� 0 growl_growler growl_Growler� ��� o      ���� 0 growl_running growl_Running� ��� o      ���� 0 successcount successCount� ���� o      ���� 0 errnum errNum��  ��  � Z     �������� =    ��� o     ���� 0 growl_running growl_Running� m    ��
�� boovtrue� k    ��� ��� O    ���� k   
 ��� ��� l  
 
�� ��      GROWL FAILURE FOR CANCEL    � 2   G R O W L   F A I L U R E   F O R   C A N C E L�  Z  
 (���� =  
  o   
 ���� 0 errnum errNum m    ������ O   $	
	 I   #����
�� .notifygrnull��� ��� null��   ��
�� 
name l 	  ���� m     � ( F a i l u r e   N o t i f i c a t i o n��  ��   ��
�� 
titl l 	  ���� m     �  U s e r   C a n c e l l e d��  ��   ��
�� 
desc l 	  ���� m     � " F a i l e d   t o   e x p o r t !��  ��   ��
�� 
appl m     � , A p p l e   M a i l   t o   E v e r n o t e ����
�� 
iapp m       �!!  M a i l��  
 m    ""�                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��   #$# l  ) )��������  ��  ��  $ %&% l  ) )��������  ��  ��  & '(' l  ) )��)*��  )   GROWL FAILURE   * �++    G R O W L   F A I L U R E( ,-, r   ) ../. c   ) ,010 l  ) *2����2 o   ) *���� 0 successcount successCount��  ��  1 m   * +��
�� 
nmbr/ o      ���� 0 plural_test Plural_Test- 3��3 Z   / �456��4 =  / 2787 o   / 0���� 0 plural_test Plural_Test8 m   0 1������5 I  5 L����9
�� .notifygrnull��� ��� null��  9 ��:;
�� 
name: l 	 7 8<����< m   7 8== �>> ( F a i l u r e   N o t i f i c a t i o n��  ��  ; ��?@
�� 
titl? l 	 9 <A����A m   9 <BB �CC  I m p o r t   F a i l u r e��  ��  @ ��DE
�� 
descD m   = @FF �GG @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !E ��HI
�� 
applH m   A DJJ �KK , A p p l e   M a i l   t o   E v e r n o t eI ��L��
�� 
iappL m   E HMM �NN  M a i l��  6 OPO =  O RQRQ o   O P���� 0 plural_test Plural_TestR m   P Q����  P STS k   U pUU VWV I  U n����X
�� .notifygrnull��� ��� null��  X ��YZ
�� 
nameY l 	 W Z[����[ m   W Z\\ �]] ( F a i l u r e   N o t i f i c a t i o n��  ��  Z ��^_
�� 
titl^ l 	 [ ^`����` m   [ ^aa �bb  I m p o r t   F a i l u r e��  ��  _ ��cd
�� 
descc m   _ bee �ff 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !d ��gh
�� 
applg m   c fii �jj , A p p l e   M a i l   t o   E v e r n o t eh ��k��
�� 
iappk m   g jll �mm  M a i l��  W non l  o o��������  ��  ��  o pqp l  o o��������  ��  ��  q r��r l  o o��st��  s   GROWL SUCCESS   t �uu    G R O W L   S U C C E S S��  T vwv =  s vxyx o   s t���� 0 plural_test Plural_Testy m   t u���� w z{z k   y �|| }~} I  y �����
�� .notifygrnull��� ��� null��   ����
�� 
name� l 	 { ~������ m   { ~�� ��� ( S u c c e s s   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	  ������� m    ��� ���  I m p o r t   S u c c e s s��  ��  � ����
�� 
desc� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   � ����� 0 itemnum itemNum� l 	 � ������� m   � ��� ���    I t e m   t o   t h e  ��  ��  � o   � ����� 0 
evnotebook 
EVnotebook� m   � ��� ��� *   N o t e b o o k   i n   E v e r n o t e� ����
�� 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �����
�� 
iapp� m   � ��� ���  M a i l��  ~ ��� l  � ���������  ��  ��  � ��� l  � ���������  ��  ��  � ���� l  � �������  �   GROWL SUCCESS   � ���    G R O W L   S U C C E S S��  { ��� ?  � ���� o   � ����� 0 plural_test Plural_Test� m   � ����� � ���� k   � ��� ��� I  � ������
�� .notifygrnull��� ��� null��  � ����
�� 
name� l 	 � ������� m   � ��� ��� ( S u c c e s s   N o t i f i c a t i o n��  ��  � ����
�� 
titl� l 	 � ������� m   � ��� ���  I m p o r t   S u c c e s s��  ��  � ����
�� 
desc� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   � ��� 0 itemnum itemNum� l 	 � ���~�}� m   � ��� ���    I t e m s   t o   t h e  �~  �}  � o   � ��|�| 0 
evnotebook 
EVnotebook� m   � ��� ��� *   N o t e b o o k   i n   E v e r n o t e� �{��
�{ 
appl� m   � ��� ��� , A p p l e   M a i l   t o   E v e r n o t e� �z��y
�z 
iapp� m   � ��� ���  M a i l�y  � ��x� l  � ��w�v�u�w  �v  �u  �x  ��  ��  ��  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               Β�:H+     V	Growl.app                                                       -�[Ό��        ����  	                Applications    Β�*      Ό�d       V  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  � ��t� r   � ���� m   � ��� ���  0� o      �s�s 0 itemnum itemNum�t  ��  ��  � ��� l     �r�q�p�r  �q  �p  � ��� l     �o�n�m�o  �n  �m  � ��� l     �l�k�j�l  �k  �j  � ��i� l     �h�g�f�h  �g  �f  �i       /�e� " = N _�d n s� { � � � �� �� � � � �� �������������������������e  � -�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�c  0 tagging_switch tagging_Switch�b 0 
evnotebook 
EVnotebook�a 0 
defaulttag 
defaultTag�` 0 html_switch HTML_Switch�_ 0 successcount successCount�^ 0 growl_running growl_Running�] 0 mytitle myTitle�\ 0 themessages theMessages�[ 0 thismessage thisMessage�Z 0 itemnum itemNum�Y 0 attnum attNum�X 0 errnum errNum�W 0 usertag userTag�V 0 evtag EVTag�U 0 	multihtml 	multiHTML�T  0 thesourceitems theSourceItems�S 0 mysource mySource�R  0 decode_success decode_Success�Q 0 	finalhtml 	finalHTML�P 0 	myheaders 	myHeaders�O *0 mysource_paragraphs mysource_Paragraphs�N 0 
base64_raw 
base64_Raw�M 0 appisrunning appIsRunning�L 0 
item_check 
item_Check�K 0 
item_count 
item_Count�J  0 tagging_dialog tagging_Dialog�I $0 default_notebook default_Notebook�H 0 tag_list Tag_List�G 0 	tag_check 	Tag_Check�F 0 notebook_list Notebook_List�E  0 extractbetween extractBetween�D 0 simple_sort  �C 0 mail_process mail_Process�B 0 make_evernote make_Evernote�A 0 f_exists  �@ 0 attachment_process  �? 0 trashfolder  �> 0 stripheader stripHeader�= 0 base64_check base64_Check�< 0 base64_decode base64_Decode�; 0 htmlfix htmlFix�: 0 growl_check Growl_Check�9 0 process_items process_Items�8 0 growl_growler growl_Growler
�7 .aevtoappnull  �   � ****�d  � �6�5�6  �5  � �4�3�4  �3  � �2�1�2  �1  � �0�/�0  �/  � �.��-�,� �+�. 0 appisrunning appIsRunning�- �*�*   �)�) 0 appname appName�,  � �(�( 0 appname appName  ��'�&
�' 
prcs
�& 
pnam�+ � 	*�-�,�U� �%��$�#�"�% 0 
item_check 
item_Check�$  �#   �!�! 0 mypath myPath � ����
�  afdrcusr
� .earsffdralis        afdr
� 
slct�  �  �" #�j E�O�  *�,Ec  W X  hU� ����� 0 
item_count 
item_Count� ��   �� 0 themessages theMessages�   ��� 0 themessages theMessages� 0 
themessage 
theMessage ,����
� .corecnte****       ****
� 
kocl
� 
cobj
� 
attc� B� >�j Ec  	OjEc  
O '�[��l kh b  
��,j Ec  
[OY��U� �>����  0 tagging_dialog tagging_Dialog�  �   ��
�	��� 0 dialogresult  �
 0 	userinput 	userInput�	 0 	buttonsel 	ButtonSel� 0 	thedelims 	theDelims� 0 thetags theTags  LO�S��\`c�g�l�q� v�����������������	���������
� 
appr
� 
dtxt
� 
btns
� 
dflt
� 
cbtn
� 
disp
�  
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
bhit��  	 ������
�� 
errn������  ������ 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List� � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y h� �������
���� $0 default_notebook default_Notebook��  ��  
 ���� *0 get_defaultnotebook get_defaultNotebook ������������
�� 
EVnb  
�� 
EVnd
�� 
cobj
�� 
pnam
�� 
ctxt�� 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hU� ����������� 0 tag_list Tag_List�� ����   ������ 0 	userinput 	userInput�� 0 	thedelims 	theDelims��   ���������������� 0 	userinput 	userInput�� 0 	thedelims 	theDelims�� 0 	olddelims 	oldDelims�� 0 thelist theList�� 0 adelim aDelim�� 0 newlist newList�� 0 anitem anItem ������������
�� 
ascr
�� 
txdl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
citm�� V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�� ��<�������� 0 	tag_check 	Tag_Check�� ����   ���� 0 thetags theTags��   ���������� 0 thetags theTags�� 0 	finaltags 	finalTags�� 0 thetag theTag�� 0 maketag makeTag ���������_������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cha 
�� 
ctxt
�� 
EVtg
�� kfrmname
�� .coredoexnull���     ****
�� 
prdt
�� 
pnam
�� .corecrel****      � null��  ��  �� s� ljvE�O d�[��l kh ��k/�  �[�\[Zl\62�&E�Y hO*��0j 	 " ���ll E�O��6FW X  hY 	*�/�6F[OY��UO�� ����������� 0 notebook_list Notebook_List��  ��   ���������������� "0 listofnotebooks listOfNotebooks�� 0 evnotebooks EVNotebooks�� "0 currentnotebook currentNotebook�� *0 currentnotebookname currentNotebookName��  0 folders_sorted Folders_sorted�� 0 selnotebook SelNotebook�� 0 	userinput 	userInput 	��������������������������������������
�� .miscactvnull��� ��� null
�� 
EVnb
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 simple_sort  
�� 
appr
�� 
prmp
�� 
okbt
�� 
cnbt�� 
�� .gtqpchltns    @   @ ns  
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� ����������  0 extractbetween extractBetween�� ����   �������� 0 
searchtext 
SearchText�� 0 	starttext 	startText�� 0 endtext endText��   �������������� 0 
searchtext 
SearchText�� 0 	starttext 	startText�� 0 endtext endText�� 0 tid  �� 0 enditems endItems��  0 beginningtoend beginningToEnd �������
�� 
ascr
�� 
txdl
�� 
citm
� 
ctxt�� -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�� �Y���� 0 simple_sort  � ��   �� 0 my_list  �   �������� 0 my_list  � 0 
index_list  � 0 sorted_list  � 0 low_item  � 0 i  � 0 	this_item  � 0 low_item_index   ��p��
� 
cobj
� 
nmbr
� 
ctxt� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� �~��}�|�{�~ 0 mail_process mail_Process�} �z�z   �y�y 0 themessages theMessages�|   �x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�x 0 themessages theMessages�w 0 thismessage thisMessage�v 0 	mycontent 	myContent�u 0 	replyaddr 	ReplyAddr�t 0 	emaildate 	EmailDate�s 0 allrecipients allRecipients�r 0 torecipients toRecipients�q 0 allrecipient allRecipient�p 0 toname toName�o 0 toemail toEmail�n 0 
tocombined 
toCombined�m 0 therecipient theRecipient�l 0 ex  �k 0 msglink MsgLink�j 0 theboundary theBoundary�i "0 themessagestart theMessageStart�h 0 themessageend theMessageEnd�g 0 
parasource 
paraSource�f 0 myheaderlines myHeaderlines�e 0 myheaderline myHeaderline�d 0 	cutsource 	cutSource�c 0 evhtml evHTML�b 0 the_template the_Template 9�a���`�_�^�]�\�[�Z�Y�X�W:E�V�UV�T�Skm�R������Q�����P�O�N���M����L�K�J*-�I[]_ace�H�G�a $0 default_notebook default_Notebook�`  0 tagging_dialog tagging_Dialog
�_ 
kocl
�^ 
cobj
�] .corecnte****       ****
�\ 
subj
�[ 
ctnt
�Z 
raso
�Y 
rpto
�X 
rdrc
�W 
trcp
�V 
pnam
�U 
msng
�T 
radd
�S 
spac
�R 
TEXT
�Q 
meid�P  0 extractbetween extractBetween�O  �N  
�M 
ret 
�L 
cpar
�K 
alhe
�J 
ctxt�I 0 stripheader stripHeader�H �G 0 make_evernote make_Evernote�{-)j+  O�#b   �  
)j+ Y hO �[��l kh ���,Ec  O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O�E�O S�[��l kh �E�O��,E�O�a   
a E�Y hO�a ,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�Oa E�Oa E�O @a E�O��k/a ,E�Oa �a ,%a %E�O�a  )�a a  m+ !E�Y hW X " #hO)b  a $a %m+ !E�O_ &a '%�%E�Oa (�%_ &%a )%E^ Ob  a *-E^ O�a +,a ,&a *-E^ O 8] [��l kh ] a - )] a .a /m+ !Ec  Y h[OY��O)] ] l+ 0E^ O] E^ W X " #hOa 1�%a 2%�%a 3%b  %a 4%�%a 5%�%a 6%E^ O)b  b  ���b  ��] b  �] b  ] a 7+ 8OP[OY�W X " #hU� �F��E�D�C�F 0 make_evernote make_Evernote�E �B �B    �A�@�?�>�=�<�;�:�9�8�7�6�5�4�A 0 mytitle myTitle�@ 0 evtag EVTag�? 0 	emaildate 	EmailDate�> 0 msglink MsgLink�= 0 	mycontent 	myContent�< 0 mysource mySource�; 0 theboundary theBoundary�: "0 themessagestart theMessageStart�9 0 themessageend theMessageEnd�8 0 	myheaders 	myHeaders�7 0 thismessage thisMessage�6 0 evhtml evHTML�5 0 
evnotebook 
EVnotebook�4 0 the_template the_Template�D   �3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�3 0 mytitle myTitle�2 0 evtag EVTag�1 0 	emaildate 	EmailDate�0 0 msglink MsgLink�/ 0 	mycontent 	myContent�. 0 mysource mySource�- 0 theboundary theBoundary�, "0 themessagestart theMessageStart�+ 0 themessageend theMessageEnd�* 0 	myheaders 	myHeaders�) 0 thismessage thisMessage�( 0 evhtml evHTML�' 0 
evnotebook 
EVnotebook�& 0 the_template the_Template�% 0 n  �$ 0 base64detect base64Detect�# 0 basehtml baseHTML *
��"�!� ��������A�o����������_m�	=	�	��
����
�
�" 
Enhl
�! 
Entt
�  
Ennb� 
� .EVRNcrntnull��� ��� null
� 
EV13
� .EVRNassnnull���     ****
� 
EV18
� .EVRNadtnnull���     EVnn
� 
EVdd
� 
EVsu� 0 base64_check base64_Check�  0 extractbetween extractBetween
� 
strq
� .sysoexecTEXT���     TEXT
� 
EV19� 0 htmlfix htmlFix� 0 base64_decode base64_Decode
� 
ctxt
� 
attc� 0 attachment_process  �  �  
� .ascrcmnt****      � ****�C��� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�b  �  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYI��_)�k+ E�O�e  �)�a �m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hOa b  a ,%a %j E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a U�a )�k+ E�O�e  O)�k+ E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+ Ec  Y +)�a  a !m+ Ec  O)b  ��m+ a "&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa # �a $-jv )��l+ %Y hUOb  kEc  W X & 'hUOa (b  %j )� �

,�	�!"��
 0 f_exists  �	 �#� #  �� 0 exportfolder ExportFolder�  ! ���� 0 exportfolder ExportFolder� 0 mypath myPath� 0 saveloc SaveLoc" �� ������
K��������
I����
� afdrcusr
�  .earsffdralis        afdr
�� 
alis��  ��  
�� 
kocl
�� 
cfol
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null� , �j E�O��&O�E�W X  � *�����l� U� ��
V����$%���� 0 attachment_process  �� ��&�� &  ������ 0 thismessage thisMessage�� 0 n  ��  $ 
���������������������� 0 thismessage thisMessage�� 0 n  �� 0 exportfolder ExportFolder�� 0 saveloc SaveLoc��  0 theattachments theAttachments�� 0 attcount attCount�� 0 theattachment theAttachment�� 0 thefilename theFileName�� 0 trash_folder trash_Folder�� 0 success  % 
�
i��������
������������������������
�����������
�����������
�� 
ascr
�� 
txdl
�� afdmdesk
�� .earsffdralis        afdr
�� 
TEXT�� 0 f_exists  
�� 
attc
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
kfil
�� 
file
�� .coresavenull���     obj ��  ��  
�� 
EV21
�� .EVRNadtnnull���     EVnn
�� afdmtrsh
�� 
from
�� fldmfldu
�� 
psxp
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� 0 trashfolder  �� �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPU� ��
�����'(���� 0 trashfolder  �� ��)�� )  ���� 0 saveloc SaveLoc��  ' ���������������� 0 saveloc SaveLoc�� 0 trashfolderpath  �� 0 srcfolderinfo  �� 0 srcfoldername  �� 0 counter  �� 0 destfolderpath  � 0 destfolderalias  � 0 command  ( ��������1=?��a��q
� afdrtrsh
� .earsffdralis        afdr
� 
utxt
� 
alis
� .sysonfo4asfe        file
� 
pnam
� 
psxp
� 
strq�  �  
� 
spac
� .sysoexecTEXT���     TEXT�� � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� ����*+�� 0 stripheader stripHeader� �,� ,  ��� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines�  * ��������� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines� 0 lastheaderline  � 0 n  � 0 sourcelength  �  0 cutsourceitems cutSourceItems� 0 	olddelims 	oldDelims� 0 	cutsource 	cutSource+ 	���������
� .corecnte****       ****
� 
cobj
� 
ascr
� 
txdl
� 
ret 
� 
ctxt� y�E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2E�O��,E�O���,FO��&E�O���,FO�OP� ���-.�� 0 base64_check base64_Check� �/� /  �� 0 mysource mySource�  - ��������� 0 mysource mySource� 0 base64detect base64Detect� 0 base64msgstr base64MsgStr� &0 base64contenttype base64ContentType� "0 base64msgoffset base64MsgOffset� *0 base64contentoffset base64ContentOffset� 0 base64offset base64Offset� 0 	theoffset 	theOffset. 
#��������
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
doub
� 
nmbr� 2���� MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�� �[��01�� 0 base64_decode base64_Decode� �2� 2  �� 0 mysource mySource�  0 ���~� 0 mysource mySource� 0 olddelim oldDelim�~ 0 basehtml baseHTML1 
�}�|n�{�z���y��x
�} 
ascr
�| 
txdl
�{ 
citm
�z 
lnfd
�y 
strq
�x .sysoexecTEXT���     TEXT� ^��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	E�O�� �w��v�u34�t�w 0 htmlfix htmlFix�v �s5�s 5  �r�q�p�r 0 evhtml evHTML�q 0 theboundary theBoundary�p 0 	mycontent 	myContent�u  3 �o�n�m�l�k�j�i�h�g�f�e�d�c�o 0 evhtml evHTML�n 0 theboundary theBoundary�m 0 	mycontent 	myContent�l 0 	olddelims 	oldDelims�k 0 
parasource 
paraSource�j 0 myheaderlines myHeaderlines�i 0 
theencoded 
theEncoded�h 0 trimhtml trimHTML�g 0 thehtml theHTML�f  0 newencodedtext NewEncodedText�e 0 the_utf8text the_UTF8Text�d "0 thedecodescript theDecodeScript�c 0 
thedecoded 
theDecoded4 J�b�a�`�_�^��] �\+Dn����[+�Z;MO_m}���Y�X�����W��)9GWe����������&)L�VP�Uik}��������T�S
�b 
ascr
�a 
txdl
�` 
TEXT
�_ 
cpar
�^ 
cobj�] 0 stripheader stripHeader�\  0 extractbetween extractBetween
�[ 
citm
�Z 
ctxt�Y 
�X .sysontocTEXT       shor�W 

�V 
strq
�U .sysoexecTEXT���     TEXT�T  �S  �t��,E�O��&Ec  Ob  �-E�O��k/� ��k/E�O)��l+ Ec  Y hOb  � )b  ��m+ 
Ec  Y )b  �m+ 
Ec  Ob  �-E�O��k/� #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/�  \��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hO��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hY hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO���,FOb  a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %�&��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa ��,FOb  a &E�Oa  ��,FO�a -Ec  Oa !��,FOb  a &E�Oa "a #j %��,FO�a -Ec  Oa $��,FOb  a &E�Oa %��,FO�a -Ec  Oa &��,FOb  a &E�Oa '��,FO�a -Ec  Oa (��,FOb  a &E�Oa )��,FO�a -Ec  Oa *��,FOb  a &E�Oa +��,FO�a -Ec  Oa ,��,FOb  a &E�Oa #j ��,FO�a -Ec  Oa -��,FOb  a &E�Oa .��,FO�a -Ec  Oa /a 0%�&��,FOb  a &E�Oa 1��,FO�a -Ec  Oa 2a 3%�&��,FOb  a &E�Oa 4��,FO�a -Ec  Oa 5��,FOb  a &E�Oa 6��,FO�a -Ec  Oa 7��,FOb  a &E�O���,FO)�a 8a 9m+ 
E�O�E�O �fEc  Oa :�a ;,%a <%j =E�O�a ;,E�Oa >�%a ?%a &E�O�j =E�Oa @��,FO�a -Ec  Oa A��,FOb  a &E�Oa Ba C%�&��,FO�a -Ec  Oa D��,FOb  a &E�Oa Ea F%�&��,FO�a -Ec  Oa G��,FOb  a &E�O�Ec  OeEc  Ob  W X H IhOP� �R �Q�P67�O�R 0 growl_check Growl_Check�Q  �P  6 �N�M�N .0 allnotificationsfiles allNotificationsFiles�M 60 enablednotificationsfiles enabledNotificationsFiles7 �L@'+.�K5�J�I�H>�G�F�L 0 appisrunning appIsRunning
�K 
appl
�J 
anot
�I 
dnot
�H 
iapp�G 
�F .registernull��� ��� null�O 8*�k+  /eEc  O� ���mvE�O���mvE�O*������� UY h� �EK�D�C89�B�E 0 process_items process_Items�D �A:�A :  �@�?�@ 0 itemnum itemNum�? 0 attnum attNum�C  8 �>�=�<�;�> 0 itemnum itemNum�= 0 attnum attNum�< 0 	attplural 	attPlural�; 0 plural_test Plural_Test9 U`i��:��9��8��7�����6��5��4�3��������
�: 
nmbr
�9 
name
�8 
titl
�7 
desc
�6 
appl
�5 
iapp�4 

�3 .notifygrnull��� ��� null�B ��E�O�j  �E�Y �k �E�Y hO� }b  e  r��&E�O�k -� %*������%�%�%�%�%�%�a a a a  UY 8� 3*�a �a �a �%a %�%a %�%a %�a a a a  OPUY hU� �2��1�0;<�/�2 0 growl_growler growl_Growler�1 �.=�. =  �-�,�+�- 0 growl_running growl_Running�, 0 successcount successCount�+ 0 errnum errNum�0  ; �*�)�(�'�* 0 growl_running growl_Running�) 0 successcount successCount�( 0 errnum errNum�' 0 plural_test Plural_Test< (��&�%�$�#�"�! � ��=BFJM\aeil����������������&��
�% 
name
�$ 
titl
�# 
desc
�" 
appl
�! 
iapp�  

� .notifygrnull��� ��� null
� 
nmbr�/ ��e  �� ܢ�  � *����������� UY hO��&E�O�i  *���a �a �a �a � Y ��j   *�a �a �a �a �a � OPY s�k  4*�a �a �a b  	%a %b  %a %�a �a � OPY ;�k 4*�a  �a !�a "b  	%a #%b  %a $%�a %�a &� OPY hUOa 'Ec  	Y h� �>��?@�
� .aevtoappnull  �   � ****> k    !AA  �BB  �CC  �DD  ���  �  �  ? ��� 0 errtext errText� 0 errnum errNum@ % � � ����������E���s�x�
}�	���������������
� 
ascr
� 
txdl� 0 growl_check Growl_Check� 0 
item_check 
item_Check� 0 
item_count 
item_Count� 0 process_items process_Items� 0 mail_process mail_Process� 0 growl_growler growl_Growler� 0 errtext errTextE ��� 
� 
errn� 0 errnum errNum�   ���
� 
name
� 
titl
�
 
desc
�	 
appl
� 
iapp� 

� .notifygrnull��� ��� null
� 
ret 
� 
disp
� .sysodlogaskr        TEXT�"�Ec  O�Ec  O���,FO d)j+ O)j+ Ob  jv ,)b  k+ O)b  	b  
l+ O)b  k+ 	OPY 	iEc  O)b  b  b  m+ 
OPW �X  b  e  x��  /� '*�a a a a a a a a a a  OPUY @� ;*�a a a a a _ %b  %a %_ %�%a a  a a !a  OPUOPY #b  f  a "�%_ %�%a #jl $Y h ascr  ��ޭ