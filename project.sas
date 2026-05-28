libname cancer '/folders/myfolders/cancer'; 

data cancer.seer1;  
filename seer1 '/folders/myfolders/cancer/SEER_1973_2015_TEXTDATA/incidence/yr1973_2015.seer9/BREAST.TXT';                                                                          
  infile seer1 lrecl=362;                                                             
  input                                                                               
    @ 1   PUBCSNUM             $char8.  /* Patient ID */                              
    @ 9   REG                  $char10. /* SEER registry */                           
    @ 19  MAR_STAT             $char1.  /* Marital status at diagnosis */             
    @ 20  RACE1V               $char2.  /* Race/ethnicity */                          
    @ 23  NHIADE               $char1.  /* NHIA Derived Hisp Origin */                
    @ 24  SEX                  $char1.  /* Sex */                                     
    @ 25  AGE_DX               $char3.  /* Age at diagnosis */                        
    @ 28  YR_BRTH              $char4.  /* Year of birth */                           
    @ 35  SEQ_NUM              $char2.  /* Sequence number */                         
    @ 37  MDXRECMP             $char2.  /* Month of diagnosis */                      
    @ 39  YEAR_DX              $char4.  /* Year of diagnosis */                       
    @ 43  PRIMSITE             $char4.  /* Primary site ICD-O-2 (1973+) */            
    @ 47  LATERAL              $char1.  /* Laterality */                              
    @ 48  HISTO2V              $char4.  /* Histologic Type ICD-O-2 */                 
    @ 52  BEHO2V               $char1.  /* Behavior Code ICD-O-2*/                    
    @ 53  HISTO3V              $char4.  /* Histologic Type ICD-O-3 */                 
    @ 57  BEHO3V               $char1.  /* Behavior code ICD-O-3 */                   
    @ 58  GRADE                $char1.  /* Grade */                                   
    @ 59  DX_CONF              $char1.  /* Diagnostic confirmation */                 
    @ 60  REPT_SRC             $char1.  /* Type of reporting source */                
    @ 61  EOD10_SZ             $char3.  /* EOD 10 - size (1988+) */                   
    @ 64  EOD10_EX             $char2.  /* EOD 10 - extension */                      
    @ 66  EOD10_PE             $char2.  /* EOD 10 - path extension */                 
    @ 68  EOD10_ND             $char1.  /* EOD 10 - lymph node */                     
    @ 69  EOD10_PN             $char2.  /* EOD 10 - positive lymph nodes examined */  
    @ 71  EOD10_NE             $char2.  /* EOD 10 - number of lymph nodes examined */ 
    @ 73  EOD13                $char13. /* EOD--old 13 digit */                       
    @ 86  EOD2                 $char2.  /* EOD--old 2 digit */                        
    @ 88  EOD4                 $char4.  /* EOD--old 4 digit */                        
    @ 92  EOD_CODE             $char1.  /* Coding system for EOD */                   
    @ 93  TUMOR_1V             $char1.  /* Tumor marker 1 */                          
    @ 94  TUMOR_2V             $char1.  /* Tumor marker 2 */                          
    @ 95  TUMOR_3V             $char1.  /* Tumor marker 3 */                          
    @ 96  CSTUMSIZ             $char3.  /* CS Tumor size */                           
    @ 99  CSEXTEN              $char3.  /* CS Extension */                            
    @ 102 CSLYMPHN             $char3.  /* CS Lymph Nodes */                          
    @ 105 CSMETSDX             $char2.  /* CS Mets at DX */                           
    @ 107 CS1SITE              $char3.  /* CS Site-Specific Factor 1 */               
    @ 110 CS2SITE              $char3.  /* CS Site-Specific Factor 2 */               
    @ 113 CS3SITE              $char3.  /* CS Site-Specific Factor 3 */               
    @ 116 CS4SITE              $char3.  /* CS Site-Specific Factor 4 */               
    @ 119 CS5SITE              $char3.  /* CS Site-Specific Factor 5 */               
    @ 122 CS6SITE              $char3.  /* CS Site-Specific Factor 6 */               
    @ 125 CS25SITE             $char3.  /* CS Site-Specific Factor 25 */              
    @ 128 DAJCCT               $char2.  /* Derived AJCC T */                          
    @ 130 DAJCCN               $char2.  /* Derived AJCC N */                          
    @ 132 DAJCCM               $char2.  /* Derived AJCC M */                          
    @ 134 DAJCCSTG             $char2.  /* Derived AJCC Stage Group */                
    @ 136 DSS1977S             $char1.  /* Derived SS1977 */                          
    @ 137 DSS2000S             $char1.  /* Derived SS2000 */                          
    @ 138 DAJCCFL              $char1.  /* Derived AJCC - flag */                     
    @ 141 CSVFIRST             $char6.  /* CS Version Input Original */               
    @ 147 CSVLATES             $char6.  /* CS Version Derived */                      
    @ 153 CSVCURRENT           $char6.  /* CS Version Input Current */                
    @ 159 SURGPRIF             $char2.  /* RX Summ--surg prim site */                 
    @ 161 SURGSCOF             $char1.  /* RX Summ--scope reg LN sur 2003+*/          
    @ 162 SURGSITF             $char1.  /* RX Summ--surg oth reg/dis */               
    @ 163 NUMNODES             $char2.  /* Number of lymph nodes */                   
    @ 166 NO_SURG              $char1.  /* Reason no cancer-directed surgery */       
    @ 170 SS_SURG              $char2.  /* Site specific surgery (1983-1997) */       
    @ 174 SURGSCOP             $char1.  /* Scope of lymph node surgery 98-02*/        
    @ 175 SURGSITE             $char1.  /* Surgery to other sites */                  
    @ 176 REC_NO               $char2.  /* Record number */                           
    @ 191 TYPE_FU              $char1.  /* Type of followup expected */               
    @ 192 AGE_1REC             $char2.  /* Age recode <1 year olds */                 
    @ 199 SITERWHO             $char5.  /* Site recode ICD-O-3/WHO 2008 */            
    @ 204 ICDOTO9V             $char4.  /* Recode ICD-O-2 to 9 */                     
    @ 208 ICDOT10V             $char4.  /* Recode ICD-O-2 to 10 */                    
    @ 218 ICCC3WHO             $char3.  /* ICCC site recode ICD-O-3/WHO 2008 */       
    @ 221 ICCC3XWHO            $char3.  /* ICCC site rec extended ICD-O-3/ WHO 2008*/ 
    @ 224 BEHTREND             $char1.  /* Behavior recode for analysis */            
    @ 226 HISTREC              $char2.  /* Broad Histology recode */                  
    @ 228 HISTRECB             $char2.  /* Brain recode */                            
    @ 230 CS0204SCHEMA         $char3.  /* CS Schema v0204*/                          
    @ 233 RAC_RECA             $char1.  /* Race recode A */                           
    @ 234 RAC_RECY             $char1.  /* Race recode Y */                           
    @ 235 ORIGRECB             $char1.  /* Origin Recode NHIA */                      
    @ 236 HST_STGA             $char1.  /* SEER historic stage A */                   
    @ 237 AJCC_STG             $char2.  /* AJCC stage 3rd edition (1988+) */          
    @ 239 AJ_3SEER             $char2.  /* SEER modified AJCC stage 3rd ed (1988+) */ 
    @ 241 SSS77VZ              $char1.  /* SEER Summary Stage 1977 (1995-2000) */     
    @ 242 SSSM2KPZ             $char1.  /* SEER Summary Stage 2000 2000 (2001-2003) */
    @ 245 FIRSTPRM             $char1.  /* First malignant primary indicator */       
    @ 246 ST_CNTY              $char5.  /* State-county recode */                     
    @ 255 CODPUB               $char5.  /* Cause of death to SEER site recode */      
    @ 260 CODPUBKM             $char5.  /* COD to site rec KM */                      
    @ 265 STAT_REC             $char1.  /* Vital status recode (study cutoff used) */ 
    @ 266 IHSLINK              $char1.  /* IHS link */                                
    @ 267 SUMM2K               $char1.  /* Historic SSG 2000 Stage */                 
    @ 268 AYASITERWHO          $char2.  /* AYA site recode/WHO 2008 */                
    @ 270 LYMSUBRWHO           $char2.  /* Lymphoma subtype recode/WHO 2008 */        
    @ 272 VSRTSADX             $char1.  /* SEER cause of death classification */      
    @ 273 ODTHCLASS            $char1.  /* SEER other cause of death classification */
    @ 274 CSTSEVAL             $char1.  /* CS EXT/Size Eval */                        
    @ 275 CSRGEVAL             $char1.  /* CS Nodes Eval */                           
    @ 276 CSMTEVAL             $char1.  /* CS Mets Eval */                            
    @ 277 INTPRIM              $char1.  /* Primary by International Rules */          
    @ 278 ERSTATUS             $char1.  /* ER Status Recode Breast Cancer (1990+)*/   
    @ 279 PRSTATUS             $char1.  /* PR Status Recode Breast Cancer (1990+)*/   
    @ 280 CSSCHEMA             $char2.  /* CS Schema - AJCC 6th Edition */            
    @ 282 CS8SITE              $char3.  /* Cs Site-specific Factor 8 */               
    @ 285 CS10SITE             $char3.  /* CS Site-Specific Factor 10*/               
    @ 288 CS11SITE             $char3.  /* CS Site-Specific Factor 11*/               
    @ 291 CS13SITE             $char3.  /* CS Site-Specific Factor 13*/               
    @ 294 CS15SITE             $char3.  /* CS Site-Specific Factor 15*/               
    @ 297 CS16SITE             $char3.  /* CS Site-Specific Factor 16*/               
    @ 300 VASINV               $char1.  /* Lymph-vascular Invasion (2004+)*/          
    @ 301 SRV_TIME_MON         $char4.  /* Survival months */                         
    @ 305 SRV_TIME_MON_FLAG    $char1.  /* Survival months flag */                    
    @ 311 INSREC_PUB           $char1.  /* Insurance Recode (2007+) */                
    @ 312 DAJCC7T              $char3.  /* Derived AJCC T 7th ed */                   
    @ 315 DAJCC7N              $char3.  /* Derived AJCC N 7th ed */                   
    @ 318 DAJCC7M              $char3.  /* Derived AJCC M 7th ed */                   
    @ 321 DAJCC7STG            $char3.  /* Derived AJCC 7 Stage Group */              
    @ 324 ADJTM_6VALUE         $char2.  /* Adjusted AJCC 6th T (1988+) */             
    @ 326 ADJNM_6VALUE         $char2.  /* Adjusted AJCC 6th N (1988+) */             
    @ 328 ADJM_6VALUE          $char2.  /* Adjusted AJCC 6th M (1988+) */             
    @ 330 ADJAJCCSTG           $char2.  /* Adjusted AJCC 6th Stage (1988+) */         
    @ 332 CS7SITE              $char3.  /* CS Site-Specific Factor 7 */               
    @ 335 CS9SITE              $char3.  /* CS Site-specific Factor 9 */               
    @ 338 CS12SITE             $char3.  /* CS Site-Specific Factor 12 */              
    @ 341 HER2                 $char1.  /* Derived HER2 Recode (2010+) */             
    @ 342 BRST_SUB             $char1.  /* Breast Subtype (2010+) */                  
    @ 348 ANNARBOR             $char1.  /* Lymphoma - Ann Arbor Stage (1983+) */      
    @ 349 CSMETSDXB_PUB        $char1.  /* CS mets at DX-bone (2010+) */              
    @ 350 CSMETSDXBR_PUB       $char1.  /* CS mets at DX-brain (2010+) */             
    @ 351 CSMETSDXLIV_PUB      $char1.  /* CS mets at DX-liver (2010+) */             
    @ 352 CSMETSDXLUNG_PUB     $char1.  /* CS mets at DX-lung (2010+) */              
    @ 353 T_VALUE              $char2.  /* T value - based on AJCC 3rd (1988-2003) */ 
    @ 355 N_VALUE              $char2.  /* N value - based on AJCC 3rd (1988-2003) */ 
    @ 357 M_VALUE              $char2.  /* M value - based on AJCC 3rd (1988-2003) */ 
    @ 359 MALIGCOUNT           $char2.  /* Total number of in situ/malignant tumors for patient */        
    @ 361 BENBORDCOUNT         $char2.  /* Total number of benign/borderline tumors for patient */        ;                                                                                 
RUN;

filename seer2 '/folders/myfolders/cancer/SEER_1973_2015_TEXTDATA/incidence/yr1992_2015.sj_la_rg_ak/BREAST.TXT';       
data cancer.seer2;                                                                         
  infile seer2 lrecl=362;                                                             
  input                                                                               
    @ 1   PUBCSNUM             $char8.  /* Patient ID */                              
    @ 9   REG                  $char10. /* SEER registry */                           
    @ 19  MAR_STAT             $char1.  /* Marital status at diagnosis */             
    @ 20  RACE1V               $char2.  /* Race/ethnicity */                          
    @ 23  NHIADE               $char1.  /* NHIA Derived Hisp Origin */                
    @ 24  SEX                  $char1.  /* Sex */                                     
    @ 25  AGE_DX               $char3.  /* Age at diagnosis */                        
    @ 28  YR_BRTH              $char4.  /* Year of birth */                           
    @ 35  SEQ_NUM              $char2.  /* Sequence number */                         
    @ 37  MDXRECMP             $char2.  /* Month of diagnosis */                      
    @ 39  YEAR_DX              $char4.  /* Year of diagnosis */                       
    @ 43  PRIMSITE             $char4.  /* Primary site ICD-O-2 (1973+) */            
    @ 47  LATERAL              $char1.  /* Laterality */                              
    @ 48  HISTO2V              $char4.  /* Histologic Type ICD-O-2 */                 
    @ 52  BEHO2V               $char1.  /* Behavior Code ICD-O-2*/                    
    @ 53  HISTO3V              $char4.  /* Histologic Type ICD-O-3 */                 
    @ 57  BEHO3V               $char1.  /* Behavior code ICD-O-3 */                   
    @ 58  GRADE                $char1.  /* Grade */                                   
    @ 59  DX_CONF              $char1.  /* Diagnostic confirmation */                 
    @ 60  REPT_SRC             $char1.  /* Type of reporting source */                
    @ 61  EOD10_SZ             $char3.  /* EOD 10 - size (1988+) */                   
    @ 64  EOD10_EX             $char2.  /* EOD 10 - extension */                      
    @ 66  EOD10_PE             $char2.  /* EOD 10 - path extension */                 
    @ 68  EOD10_ND             $char1.  /* EOD 10 - lymph node */                     
    @ 69  EOD10_PN             $char2.  /* EOD 10 - positive lymph nodes examined */  
    @ 71  EOD10_NE             $char2.  /* EOD 10 - number of lymph nodes examined */ 
    @ 73  EOD13                $char13. /* EOD--old 13 digit */                       
    @ 86  EOD2                 $char2.  /* EOD--old 2 digit */                        
    @ 88  EOD4                 $char4.  /* EOD--old 4 digit */                        
    @ 92  EOD_CODE             $char1.  /* Coding system for EOD */                   
    @ 93  TUMOR_1V             $char1.  /* Tumor marker 1 */                          
    @ 94  TUMOR_2V             $char1.  /* Tumor marker 2 */                          
    @ 95  TUMOR_3V             $char1.  /* Tumor marker 3 */                          
    @ 96  CSTUMSIZ             $char3.  /* CS Tumor size */                           
    @ 99  CSEXTEN              $char3.  /* CS Extension */                            
    @ 102 CSLYMPHN             $char3.  /* CS Lymph Nodes */                          
    @ 105 CSMETSDX             $char2.  /* CS Mets at DX */                           
    @ 107 CS1SITE              $char3.  /* CS Site-Specific Factor 1 */               
    @ 110 CS2SITE              $char3.  /* CS Site-Specific Factor 2 */               
    @ 113 CS3SITE              $char3.  /* CS Site-Specific Factor 3 */               
    @ 116 CS4SITE              $char3.  /* CS Site-Specific Factor 4 */               
    @ 119 CS5SITE              $char3.  /* CS Site-Specific Factor 5 */               
    @ 122 CS6SITE              $char3.  /* CS Site-Specific Factor 6 */               
    @ 125 CS25SITE             $char3.  /* CS Site-Specific Factor 25 */              
    @ 128 DAJCCT               $char2.  /* Derived AJCC T */                          
    @ 130 DAJCCN               $char2.  /* Derived AJCC N */                          
    @ 132 DAJCCM               $char2.  /* Derived AJCC M */                          
    @ 134 DAJCCSTG             $char2.  /* Derived AJCC Stage Group */                
    @ 136 DSS1977S             $char1.  /* Derived SS1977 */                          
    @ 137 DSS2000S             $char1.  /* Derived SS2000 */                          
    @ 138 DAJCCFL              $char1.  /* Derived AJCC - flag */                     
    @ 141 CSVFIRST             $char6.  /* CS Version Input Original */               
    @ 147 CSVLATES             $char6.  /* CS Version Derived */                      
    @ 153 CSVCURRENT           $char6.  /* CS Version Input Current */                
    @ 159 SURGPRIF             $char2.  /* RX Summ--surg prim site */                 
    @ 161 SURGSCOF             $char1.  /* RX Summ--scope reg LN sur 2003+*/          
    @ 162 SURGSITF             $char1.  /* RX Summ--surg oth reg/dis */               
    @ 163 NUMNODES             $char2.  /* Number of lymph nodes */                   
    @ 166 NO_SURG              $char1.  /* Reason no cancer-directed surgery */       
    @ 170 SS_SURG              $char2.  /* Site specific surgery (1983-1997) */       
    @ 174 SURGSCOP             $char1.  /* Scope of lymph node surgery 98-02*/        
    @ 175 SURGSITE             $char1.  /* Surgery to other sites */                  
    @ 176 REC_NO               $char2.  /* Record number */                           
    @ 191 TYPE_FU              $char1.  /* Type of followup expected */               
    @ 192 AGE_1REC             $char2.  /* Age recode <1 year olds */                 
    @ 199 SITERWHO             $char5.  /* Site recode ICD-O-3/WHO 2008 */            
    @ 204 ICDOTO9V             $char4.  /* Recode ICD-O-2 to 9 */                     
    @ 208 ICDOT10V             $char4.  /* Recode ICD-O-2 to 10 */                    
    @ 218 ICCC3WHO             $char3.  /* ICCC site recode ICD-O-3/WHO 2008 */       
    @ 221 ICCC3XWHO            $char3.  /* ICCC site rec extended ICD-O-3/ WHO 2008*/ 
    @ 224 BEHTREND             $char1.  /* Behavior recode for analysis */            
    @ 226 HISTREC              $char2.  /* Broad Histology recode */                  
    @ 228 HISTRECB             $char2.  /* Brain recode */                            
    @ 230 CS0204SCHEMA         $char3.  /* CS Schema v0204*/                          
    @ 233 RAC_RECA             $char1.  /* Race recode A */                           
    @ 234 RAC_RECY             $char1.  /* Race recode Y */                           
    @ 235 ORIGRECB             $char1.  /* Origin Recode NHIA */                      
    @ 236 HST_STGA             $char1.  /* SEER historic stage A */                   
    @ 237 AJCC_STG             $char2.  /* AJCC stage 3rd edition (1988+) */          
    @ 239 AJ_3SEER             $char2.  /* SEER modified AJCC stage 3rd ed (1988+) */ 
    @ 241 SSS77VZ              $char1.  /* SEER Summary Stage 1977 (1995-2000) */     
    @ 242 SSSM2KPZ             $char1.  /* SEER Summary Stage 2000 2000 (2001-2003) */
    @ 245 FIRSTPRM             $char1.  /* First malignant primary indicator */       
    @ 246 ST_CNTY              $char5.  /* State-county recode */                     
    @ 255 CODPUB               $char5.  /* Cause of death to SEER site recode */      
    @ 260 CODPUBKM             $char5.  /* COD to site rec KM */                      
    @ 265 STAT_REC             $char1.  /* Vital status recode (study cutoff used) */ 
    @ 266 IHSLINK              $char1.  /* IHS link */                                
    @ 267 SUMM2K               $char1.  /* Historic SSG 2000 Stage */                 
    @ 268 AYASITERWHO          $char2.  /* AYA site recode/WHO 2008 */                
    @ 270 LYMSUBRWHO           $char2.  /* Lymphoma subtype recode/WHO 2008 */        
    @ 272 VSRTSADX             $char1.  /* SEER cause of death classification */      
    @ 273 ODTHCLASS            $char1.  /* SEER other cause of death classification */
    @ 274 CSTSEVAL             $char1.  /* CS EXT/Size Eval */                        
    @ 275 CSRGEVAL             $char1.  /* CS Nodes Eval */                           
    @ 276 CSMTEVAL             $char1.  /* CS Mets Eval */                            
    @ 277 INTPRIM              $char1.  /* Primary by International Rules */          
    @ 278 ERSTATUS             $char1.  /* ER Status Recode Breast Cancer (1990+)*/   
    @ 279 PRSTATUS             $char1.  /* PR Status Recode Breast Cancer (1990+)*/   
    @ 280 CSSCHEMA             $char2.  /* CS Schema - AJCC 6th Edition */            
    @ 282 CS8SITE              $char3.  /* Cs Site-specific Factor 8 */               
    @ 285 CS10SITE             $char3.  /* CS Site-Specific Factor 10*/               
    @ 288 CS11SITE             $char3.  /* CS Site-Specific Factor 11*/               
    @ 291 CS13SITE             $char3.  /* CS Site-Specific Factor 13*/               
    @ 294 CS15SITE             $char3.  /* CS Site-Specific Factor 15*/               
    @ 297 CS16SITE             $char3.  /* CS Site-Specific Factor 16*/               
    @ 300 VASINV               $char1.  /* Lymph-vascular Invasion (2004+)*/          
    @ 301 SRV_TIME_MON         $char4.  /* Survival months */                         
    @ 305 SRV_TIME_MON_FLAG    $char1.  /* Survival months flag */                    
    @ 311 INSREC_PUB           $char1.  /* Insurance Recode (2007+) */                
    @ 312 DAJCC7T              $char3.  /* Derived AJCC T 7th ed */                   
    @ 315 DAJCC7N              $char3.  /* Derived AJCC N 7th ed */                   
    @ 318 DAJCC7M              $char3.  /* Derived AJCC M 7th ed */                   
    @ 321 DAJCC7STG            $char3.  /* Derived AJCC 7 Stage Group */              
    @ 324 ADJTM_6VALUE         $char2.  /* Adjusted AJCC 6th T (1988+) */             
    @ 326 ADJNM_6VALUE         $char2.  /* Adjusted AJCC 6th N (1988+) */             
    @ 328 ADJM_6VALUE          $char2.  /* Adjusted AJCC 6th M (1988+) */             
    @ 330 ADJAJCCSTG           $char2.  /* Adjusted AJCC 6th Stage (1988+) */         
    @ 332 CS7SITE              $char3.  /* CS Site-Specific Factor 7 */               
    @ 335 CS9SITE              $char3.  /* CS Site-specific Factor 9 */               
    @ 338 CS12SITE             $char3.  /* CS Site-Specific Factor 12 */              
    @ 341 HER2                 $char1.  /* Derived HER2 Recode (2010+) */             
    @ 342 BRST_SUB             $char1.  /* Breast Subtype (2010+) */                  
    @ 348 ANNARBOR             $char1.  /* Lymphoma - Ann Arbor Stage (1983+) */      
    @ 349 CSMETSDXB_PUB        $char1.  /* CS mets at DX-bone (2010+) */              
    @ 350 CSMETSDXBR_PUB       $char1.  /* CS mets at DX-brain (2010+) */             
    @ 351 CSMETSDXLIV_PUB      $char1.  /* CS mets at DX-liver (2010+) */             
    @ 352 CSMETSDXLUNG_PUB     $char1.  /* CS mets at DX-lung (2010+) */              
    @ 353 T_VALUE              $char2.  /* T value - based on AJCC 3rd (1988-2003) */ 
    @ 355 N_VALUE              $char2.  /* N value - based on AJCC 3rd (1988-2003) */ 
    @ 357 M_VALUE              $char2.  /* M value - based on AJCC 3rd (1988-2003) */ 
    @ 359 MALIGCOUNT           $char2.  /* Total number of in situ/malignant tumors for patient */        
    @ 361 BENBORDCOUNT         $char2.  /* Total number of benign/borderline tumors for patient */        ;                                                                                 
RUN; 

filename seer3 '/folders/myfolders/cancer/SEER_1973_2015_TEXTDATA/incidence/yr2000_2015.ca_ky_lo_nj_ga/BREAST.TXT';  
data cancer.seer3;                                                                         
  infile seer3 lrecl=362;                                                             
  input                                                                               
    @ 1   PUBCSNUM             $char8.  /* Patient ID */                              
    @ 9   REG                  $char10. /* SEER registry */                           
    @ 19  MAR_STAT             $char1.  /* Marital status at diagnosis */             
    @ 20  RACE1V               $char2.  /* Race/ethnicity */                          
    @ 23  NHIADE               $char1.  /* NHIA Derived Hisp Origin */                
    @ 24  SEX                  $char1.  /* Sex */                                     
    @ 25  AGE_DX               $char3.  /* Age at diagnosis */                        
    @ 28  YR_BRTH              $char4.  /* Year of birth */                           
    @ 35  SEQ_NUM              $char2.  /* Sequence number */                         
    @ 37  MDXRECMP             $char2.  /* Month of diagnosis */                      
    @ 39  YEAR_DX              $char4.  /* Year of diagnosis */                       
    @ 43  PRIMSITE             $char4.  /* Primary site ICD-O-2 (1973+) */            
    @ 47  LATERAL              $char1.  /* Laterality */                              
    @ 48  HISTO2V              $char4.  /* Histologic Type ICD-O-2 */                 
    @ 52  BEHO2V               $char1.  /* Behavior Code ICD-O-2*/                    
    @ 53  HISTO3V              $char4.  /* Histologic Type ICD-O-3 */                 
    @ 57  BEHO3V               $char1.  /* Behavior code ICD-O-3 */                   
    @ 58  GRADE                $char1.  /* Grade */                                   
    @ 59  DX_CONF              $char1.  /* Diagnostic confirmation */                 
    @ 60  REPT_SRC             $char1.  /* Type of reporting source */                
    @ 61  EOD10_SZ             $char3.  /* EOD 10 - size (1988+) */                   
    @ 64  EOD10_EX             $char2.  /* EOD 10 - extension */                      
    @ 66  EOD10_PE             $char2.  /* EOD 10 - path extension */                 
    @ 68  EOD10_ND             $char1.  /* EOD 10 - lymph node */                     
    @ 69  EOD10_PN             $char2.  /* EOD 10 - positive lymph nodes examined */  
    @ 71  EOD10_NE             $char2.  /* EOD 10 - number of lymph nodes examined */ 
    @ 73  EOD13                $char13. /* EOD--old 13 digit */                       
    @ 86  EOD2                 $char2.  /* EOD--old 2 digit */                        
    @ 88  EOD4                 $char4.  /* EOD--old 4 digit */                        
    @ 92  EOD_CODE             $char1.  /* Coding system for EOD */                   
    @ 93  TUMOR_1V             $char1.  /* Tumor marker 1 */                          
    @ 94  TUMOR_2V             $char1.  /* Tumor marker 2 */                          
    @ 95  TUMOR_3V             $char1.  /* Tumor marker 3 */                          
    @ 96  CSTUMSIZ             $char3.  /* CS Tumor size */                           
    @ 99  CSEXTEN              $char3.  /* CS Extension */                            
    @ 102 CSLYMPHN             $char3.  /* CS Lymph Nodes */                          
    @ 105 CSMETSDX             $char2.  /* CS Mets at DX */                           
    @ 107 CS1SITE              $char3.  /* CS Site-Specific Factor 1 */               
    @ 110 CS2SITE              $char3.  /* CS Site-Specific Factor 2 */               
    @ 113 CS3SITE              $char3.  /* CS Site-Specific Factor 3 */               
    @ 116 CS4SITE              $char3.  /* CS Site-Specific Factor 4 */               
    @ 119 CS5SITE              $char3.  /* CS Site-Specific Factor 5 */               
    @ 122 CS6SITE              $char3.  /* CS Site-Specific Factor 6 */               
    @ 125 CS25SITE             $char3.  /* CS Site-Specific Factor 25 */              
    @ 128 DAJCCT               $char2.  /* Derived AJCC T */                          
    @ 130 DAJCCN               $char2.  /* Derived AJCC N */                          
    @ 132 DAJCCM               $char2.  /* Derived AJCC M */                          
    @ 134 DAJCCSTG             $char2.  /* Derived AJCC Stage Group */                
    @ 136 DSS1977S             $char1.  /* Derived SS1977 */                          
    @ 137 DSS2000S             $char1.  /* Derived SS2000 */                          
    @ 138 DAJCCFL              $char1.  /* Derived AJCC - flag */                     
    @ 141 CSVFIRST             $char6.  /* CS Version Input Original */               
    @ 147 CSVLATES             $char6.  /* CS Version Derived */                      
    @ 153 CSVCURRENT           $char6.  /* CS Version Input Current */                
    @ 159 SURGPRIF             $char2.  /* RX Summ--surg prim site */                 
    @ 161 SURGSCOF             $char1.  /* RX Summ--scope reg LN sur 2003+*/          
    @ 162 SURGSITF             $char1.  /* RX Summ--surg oth reg/dis */               
    @ 163 NUMNODES             $char2.  /* Number of lymph nodes */                   
    @ 166 NO_SURG              $char1.  /* Reason no cancer-directed surgery */       
    @ 170 SS_SURG              $char2.  /* Site specific surgery (1983-1997) */       
    @ 174 SURGSCOP             $char1.  /* Scope of lymph node surgery 98-02*/        
    @ 175 SURGSITE             $char1.  /* Surgery to other sites */                  
    @ 176 REC_NO               $char2.  /* Record number */                           
    @ 191 TYPE_FU              $char1.  /* Type of followup expected */               
    @ 192 AGE_1REC             $char2.  /* Age recode <1 year olds */                 
    @ 199 SITERWHO             $char5.  /* Site recode ICD-O-3/WHO 2008 */            
    @ 204 ICDOTO9V             $char4.  /* Recode ICD-O-2 to 9 */                     
    @ 208 ICDOT10V             $char4.  /* Recode ICD-O-2 to 10 */                    
    @ 218 ICCC3WHO             $char3.  /* ICCC site recode ICD-O-3/WHO 2008 */       
    @ 221 ICCC3XWHO            $char3.  /* ICCC site rec extended ICD-O-3/ WHO 2008*/ 
    @ 224 BEHTREND             $char1.  /* Behavior recode for analysis */            
    @ 226 HISTREC              $char2.  /* Broad Histology recode */                  
    @ 228 HISTRECB             $char2.  /* Brain recode */                            
    @ 230 CS0204SCHEMA         $char3.  /* CS Schema v0204*/                          
    @ 233 RAC_RECA             $char1.  /* Race recode A */                           
    @ 234 RAC_RECY             $char1.  /* Race recode Y */                           
    @ 235 ORIGRECB             $char1.  /* Origin Recode NHIA */                      
    @ 236 HST_STGA             $char1.  /* SEER historic stage A */                   
    @ 237 AJCC_STG             $char2.  /* AJCC stage 3rd edition (1988+) */          
    @ 239 AJ_3SEER             $char2.  /* SEER modified AJCC stage 3rd ed (1988+) */ 
    @ 241 SSS77VZ              $char1.  /* SEER Summary Stage 1977 (1995-2000) */     
    @ 242 SSSM2KPZ             $char1.  /* SEER Summary Stage 2000 2000 (2001-2003) */
    @ 245 FIRSTPRM             $char1.  /* First malignant primary indicator */       
    @ 246 ST_CNTY              $char5.  /* State-county recode */                     
    @ 255 CODPUB               $char5.  /* Cause of death to SEER site recode */      
    @ 260 CODPUBKM             $char5.  /* COD to site rec KM */                      
    @ 265 STAT_REC             $char1.  /* Vital status recode (study cutoff used) */ 
    @ 266 IHSLINK              $char1.  /* IHS link */                                
    @ 267 SUMM2K               $char1.  /* Historic SSG 2000 Stage */                 
    @ 268 AYASITERWHO          $char2.  /* AYA site recode/WHO 2008 */                
    @ 270 LYMSUBRWHO           $char2.  /* Lymphoma subtype recode/WHO 2008 */        
    @ 272 VSRTSADX             $char1.  /* SEER cause of death classification */      
    @ 273 ODTHCLASS            $char1.  /* SEER other cause of death classification */
    @ 274 CSTSEVAL             $char1.  /* CS EXT/Size Eval */                        
    @ 275 CSRGEVAL             $char1.  /* CS Nodes Eval */                           
    @ 276 CSMTEVAL             $char1.  /* CS Mets Eval */                            
    @ 277 INTPRIM              $char1.  /* Primary by International Rules */          
    @ 278 ERSTATUS             $char1.  /* ER Status Recode Breast Cancer (1990+)*/   
    @ 279 PRSTATUS             $char1.  /* PR Status Recode Breast Cancer (1990+)*/   
    @ 280 CSSCHEMA             $char2.  /* CS Schema - AJCC 6th Edition */            
    @ 282 CS8SITE              $char3.  /* Cs Site-specific Factor 8 */               
    @ 285 CS10SITE             $char3.  /* CS Site-Specific Factor 10*/               
    @ 288 CS11SITE             $char3.  /* CS Site-Specific Factor 11*/               
    @ 291 CS13SITE             $char3.  /* CS Site-Specific Factor 13*/               
    @ 294 CS15SITE             $char3.  /* CS Site-Specific Factor 15*/               
    @ 297 CS16SITE             $char3.  /* CS Site-Specific Factor 16*/               
    @ 300 VASINV               $char1.  /* Lymph-vascular Invasion (2004+)*/          
    @ 301 SRV_TIME_MON         $char4.  /* Survival months */                         
    @ 305 SRV_TIME_MON_FLAG    $char1.  /* Survival months flag */                    
    @ 311 INSREC_PUB           $char1.  /* Insurance Recode (2007+) */                
    @ 312 DAJCC7T              $char3.  /* Derived AJCC T 7th ed */                   
    @ 315 DAJCC7N              $char3.  /* Derived AJCC N 7th ed */                   
    @ 318 DAJCC7M              $char3.  /* Derived AJCC M 7th ed */                   
    @ 321 DAJCC7STG            $char3.  /* Derived AJCC 7 Stage Group */              
    @ 324 ADJTM_6VALUE         $char2.  /* Adjusted AJCC 6th T (1988+) */             
    @ 326 ADJNM_6VALUE         $char2.  /* Adjusted AJCC 6th N (1988+) */             
    @ 328 ADJM_6VALUE          $char2.  /* Adjusted AJCC 6th M (1988+) */             
    @ 330 ADJAJCCSTG           $char2.  /* Adjusted AJCC 6th Stage (1988+) */         
    @ 332 CS7SITE              $char3.  /* CS Site-Specific Factor 7 */               
    @ 335 CS9SITE              $char3.  /* CS Site-specific Factor 9 */               
    @ 338 CS12SITE             $char3.  /* CS Site-Specific Factor 12 */              
    @ 341 HER2                 $char1.  /* Derived HER2 Recode (2010+) */             
    @ 342 BRST_SUB             $char1.  /* Breast Subtype (2010+) */                  
    @ 348 ANNARBOR             $char1.  /* Lymphoma - Ann Arbor Stage (1983+) */      
    @ 349 CSMETSDXB_PUB        $char1.  /* CS mets at DX-bone (2010+) */              
    @ 350 CSMETSDXBR_PUB       $char1.  /* CS mets at DX-brain (2010+) */             
    @ 351 CSMETSDXLIV_PUB      $char1.  /* CS mets at DX-liver (2010+) */             
    @ 352 CSMETSDXLUNG_PUB     $char1.  /* CS mets at DX-lung (2010+) */              
    @ 353 T_VALUE              $char2.  /* T value - based on AJCC 3rd (1988-2003) */ 
    @ 355 N_VALUE              $char2.  /* N value - based on AJCC 3rd (1988-2003) */ 
    @ 357 M_VALUE              $char2.  /* M value - based on AJCC 3rd (1988-2003) */ 
    @ 359 MALIGCOUNT           $char2.  /* Total number of in situ/malignant tumors for patient */        
    @ 361 BENBORDCOUNT         $char2.  /* Total number of benign/borderline tumors for patient */        ;                                                                                 
RUN;           
      
filename seer4 '/folders/myfolders/cancer/SEER_1973_2015_TEXTDATA/incidence/yr2005.lo_2nd_half/BREAST.TXT'; 
data cancer.seer4;                                                                         
  infile seer4 lrecl=362;                                                             
  input                                                                               
    @ 1   PUBCSNUM             $char8.  /* Patient ID */                              
    @ 9   REG                  $char10. /* SEER registry */                           
    @ 19  MAR_STAT             $char1.  /* Marital status at diagnosis */             
    @ 20  RACE1V               $char2.  /* Race/ethnicity */                          
    @ 23  NHIADE               $char1.  /* NHIA Derived Hisp Origin */                
    @ 24  SEX                  $char1.  /* Sex */                                     
    @ 25  AGE_DX               $char3.  /* Age at diagnosis */                        
    @ 28  YR_BRTH              $char4.  /* Year of birth */                           
    @ 35  SEQ_NUM              $char2.  /* Sequence number */                         
    @ 37  MDXRECMP             $char2.  /* Month of diagnosis */                      
    @ 39  YEAR_DX              $char4.  /* Year of diagnosis */                       
    @ 43  PRIMSITE             $char4.  /* Primary site ICD-O-2 (1973+) */            
    @ 47  LATERAL              $char1.  /* Laterality */                              
    @ 48  HISTO2V              $char4.  /* Histologic Type ICD-O-2 */                 
    @ 52  BEHO2V               $char1.  /* Behavior Code ICD-O-2*/                    
    @ 53  HISTO3V              $char4.  /* Histologic Type ICD-O-3 */                 
    @ 57  BEHO3V               $char1.  /* Behavior code ICD-O-3 */                   
    @ 58  GRADE                $char1.  /* Grade */                                   
    @ 59  DX_CONF              $char1.  /* Diagnostic confirmation */                 
    @ 60  REPT_SRC             $char1.  /* Type of reporting source */                
    @ 61  EOD10_SZ             $char3.  /* EOD 10 - size (1988+) */                   
    @ 64  EOD10_EX             $char2.  /* EOD 10 - extension */                      
    @ 66  EOD10_PE             $char2.  /* EOD 10 - path extension */                 
    @ 68  EOD10_ND             $char1.  /* EOD 10 - lymph node */                     
    @ 69  EOD10_PN             $char2.  /* EOD 10 - positive lymph nodes examined */  
    @ 71  EOD10_NE             $char2.  /* EOD 10 - number of lymph nodes examined */ 
    @ 73  EOD13                $char13. /* EOD--old 13 digit */                       
    @ 86  EOD2                 $char2.  /* EOD--old 2 digit */                        
    @ 88  EOD4                 $char4.  /* EOD--old 4 digit */                        
    @ 92  EOD_CODE             $char1.  /* Coding system for EOD */                   
    @ 93  TUMOR_1V             $char1.  /* Tumor marker 1 */                          
    @ 94  TUMOR_2V             $char1.  /* Tumor marker 2 */                          
    @ 95  TUMOR_3V             $char1.  /* Tumor marker 3 */                          
    @ 96  CSTUMSIZ             $char3.  /* CS Tumor size */                           
    @ 99  CSEXTEN              $char3.  /* CS Extension */                            
    @ 102 CSLYMPHN             $char3.  /* CS Lymph Nodes */                          
    @ 105 CSMETSDX             $char2.  /* CS Mets at DX */                           
    @ 107 CS1SITE              $char3.  /* CS Site-Specific Factor 1 */               
    @ 110 CS2SITE              $char3.  /* CS Site-Specific Factor 2 */               
    @ 113 CS3SITE              $char3.  /* CS Site-Specific Factor 3 */               
    @ 116 CS4SITE              $char3.  /* CS Site-Specific Factor 4 */               
    @ 119 CS5SITE              $char3.  /* CS Site-Specific Factor 5 */               
    @ 122 CS6SITE              $char3.  /* CS Site-Specific Factor 6 */               
    @ 125 CS25SITE             $char3.  /* CS Site-Specific Factor 25 */              
    @ 128 DAJCCT               $char2.  /* Derived AJCC T */                          
    @ 130 DAJCCN               $char2.  /* Derived AJCC N */                          
    @ 132 DAJCCM               $char2.  /* Derived AJCC M */                          
    @ 134 DAJCCSTG             $char2.  /* Derived AJCC Stage Group */                
    @ 136 DSS1977S             $char1.  /* Derived SS1977 */                          
    @ 137 DSS2000S             $char1.  /* Derived SS2000 */                          
    @ 138 DAJCCFL              $char1.  /* Derived AJCC - flag */                     
    @ 141 CSVFIRST             $char6.  /* CS Version Input Original */               
    @ 147 CSVLATES             $char6.  /* CS Version Derived */                      
    @ 153 CSVCURRENT           $char6.  /* CS Version Input Current */                
    @ 159 SURGPRIF             $char2.  /* RX Summ--surg prim site */                 
    @ 161 SURGSCOF             $char1.  /* RX Summ--scope reg LN sur 2003+*/          
    @ 162 SURGSITF             $char1.  /* RX Summ--surg oth reg/dis */               
    @ 163 NUMNODES             $char2.  /* Number of lymph nodes */                   
    @ 166 NO_SURG              $char1.  /* Reason no cancer-directed surgery */       
    @ 170 SS_SURG              $char2.  /* Site specific surgery (1983-1997) */       
    @ 174 SURGSCOP             $char1.  /* Scope of lymph node surgery 98-02*/        
    @ 175 SURGSITE             $char1.  /* Surgery to other sites */                  
    @ 176 REC_NO               $char2.  /* Record number */                           
    @ 191 TYPE_FU              $char1.  /* Type of followup expected */               
    @ 192 AGE_1REC             $char2.  /* Age recode <1 year olds */                 
    @ 199 SITERWHO             $char5.  /* Site recode ICD-O-3/WHO 2008 */            
    @ 204 ICDOTO9V             $char4.  /* Recode ICD-O-2 to 9 */                     
    @ 208 ICDOT10V             $char4.  /* Recode ICD-O-2 to 10 */                    
    @ 218 ICCC3WHO             $char3.  /* ICCC site recode ICD-O-3/WHO 2008 */       
    @ 221 ICCC3XWHO            $char3.  /* ICCC site rec extended ICD-O-3/ WHO 2008*/ 
    @ 224 BEHTREND             $char1.  /* Behavior recode for analysis */            
    @ 226 HISTREC              $char2.  /* Broad Histology recode */                  
    @ 228 HISTRECB             $char2.  /* Brain recode */                            
    @ 230 CS0204SCHEMA         $char3.  /* CS Schema v0204*/                          
    @ 233 RAC_RECA             $char1.  /* Race recode A */                           
    @ 234 RAC_RECY             $char1.  /* Race recode Y */                           
    @ 235 ORIGRECB             $char1.  /* Origin Recode NHIA */                      
    @ 236 HST_STGA             $char1.  /* SEER historic stage A */                   
    @ 237 AJCC_STG             $char2.  /* AJCC stage 3rd edition (1988+) */          
    @ 239 AJ_3SEER             $char2.  /* SEER modified AJCC stage 3rd ed (1988+) */ 
    @ 241 SSS77VZ              $char1.  /* SEER Summary Stage 1977 (1995-2000) */     
    @ 242 SSSM2KPZ             $char1.  /* SEER Summary Stage 2000 2000 (2001-2003) */
    @ 245 FIRSTPRM             $char1.  /* First malignant primary indicator */       
    @ 246 ST_CNTY              $char5.  /* State-county recode */                     
    @ 255 CODPUB               $char5.  /* Cause of death to SEER site recode */      
    @ 260 CODPUBKM             $char5.  /* COD to site rec KM */                      
    @ 265 STAT_REC             $char1.  /* Vital status recode (study cutoff used) */ 
    @ 266 IHSLINK              $char1.  /* IHS link */                                
    @ 267 SUMM2K               $char1.  /* Historic SSG 2000 Stage */                 
    @ 268 AYASITERWHO          $char2.  /* AYA site recode/WHO 2008 */                
    @ 270 LYMSUBRWHO           $char2.  /* Lymphoma subtype recode/WHO 2008 */        
    @ 272 VSRTSADX             $char1.  /* SEER cause of death classification */      
    @ 273 ODTHCLASS            $char1.  /* SEER other cause of death classification */
    @ 274 CSTSEVAL             $char1.  /* CS EXT/Size Eval */                        
    @ 275 CSRGEVAL             $char1.  /* CS Nodes Eval */                           
    @ 276 CSMTEVAL             $char1.  /* CS Mets Eval */                            
    @ 277 INTPRIM              $char1.  /* Primary by International Rules */          
    @ 278 ERSTATUS             $char1.  /* ER Status Recode Breast Cancer (1990+)*/   
    @ 279 PRSTATUS             $char1.  /* PR Status Recode Breast Cancer (1990+)*/   
    @ 280 CSSCHEMA             $char2.  /* CS Schema - AJCC 6th Edition */            
    @ 282 CS8SITE              $char3.  /* Cs Site-specific Factor 8 */               
    @ 285 CS10SITE             $char3.  /* CS Site-Specific Factor 10*/               
    @ 288 CS11SITE             $char3.  /* CS Site-Specific Factor 11*/               
    @ 291 CS13SITE             $char3.  /* CS Site-Specific Factor 13*/               
    @ 294 CS15SITE             $char3.  /* CS Site-Specific Factor 15*/               
    @ 297 CS16SITE             $char3.  /* CS Site-Specific Factor 16*/               
    @ 300 VASINV               $char1.  /* Lymph-vascular Invasion (2004+)*/          
    @ 301 SRV_TIME_MON         $char4.  /* Survival months */                         
    @ 305 SRV_TIME_MON_FLAG    $char1.  /* Survival months flag */                    
    @ 311 INSREC_PUB           $char1.  /* Insurance Recode (2007+) */                
    @ 312 DAJCC7T              $char3.  /* Derived AJCC T 7th ed */                   
    @ 315 DAJCC7N              $char3.  /* Derived AJCC N 7th ed */                   
    @ 318 DAJCC7M              $char3.  /* Derived AJCC M 7th ed */                   
    @ 321 DAJCC7STG            $char3.  /* Derived AJCC 7 Stage Group */              
    @ 324 ADJTM_6VALUE         $char2.  /* Adjusted AJCC 6th T (1988+) */             
    @ 326 ADJNM_6VALUE         $char2.  /* Adjusted AJCC 6th N (1988+) */             
    @ 328 ADJM_6VALUE          $char2.  /* Adjusted AJCC 6th M (1988+) */             
    @ 330 ADJAJCCSTG           $char2.  /* Adjusted AJCC 6th Stage (1988+) */         
    @ 332 CS7SITE              $char3.  /* CS Site-Specific Factor 7 */               
    @ 335 CS9SITE              $char3.  /* CS Site-specific Factor 9 */               
    @ 338 CS12SITE             $char3.  /* CS Site-Specific Factor 12 */              
    @ 341 HER2                 $char1.  /* Derived HER2 Recode (2010+) */             
    @ 342 BRST_SUB             $char1.  /* Breast Subtype (2010+) */                  
    @ 348 ANNARBOR             $char1.  /* Lymphoma - Ann Arbor Stage (1983+) */      
    @ 349 CSMETSDXB_PUB        $char1.  /* CS mets at DX-bone (2010+) */              
    @ 350 CSMETSDXBR_PUB       $char1.  /* CS mets at DX-brain (2010+) */             
    @ 351 CSMETSDXLIV_PUB      $char1.  /* CS mets at DX-liver (2010+) */             
    @ 352 CSMETSDXLUNG_PUB     $char1.  /* CS mets at DX-lung (2010+) */              
    @ 353 T_VALUE              $char2.  /* T value - based on AJCC 3rd (1988-2003) */ 
    @ 355 N_VALUE              $char2.  /* N value - based on AJCC 3rd (1988-2003) */ 
    @ 357 M_VALUE              $char2.  /* M value - based on AJCC 3rd (1988-2003) */ 
    @ 359 MALIGCOUNT           $char2.  /* Total number of in situ/malignant tumors for patient */        
    @ 361 BENBORDCOUNT         $char2.  /* Total number of benign/borderline tumors for patient */        ;                                                                                 
RUN;                
       
      
DATA cancer.combineddata; 
  SET cancer.seer1 cancer.seer2 cancer.seer3 cancer.seer4; 
RUN;  /*n=1631572*/

/*selecting for met pts*/
data  cancer.model;
set cancer.combineddata;
length survtime 4;
survtime=srv_time_mon;  
if survtime=9999 then delete;
if DAJCCM=10 or ADJM_6VALUE=10; 
run;                       /*n=58654 observations*/


/*creating age groups*/
data  cancer.model; set cancer.model;
agelt49=0; age5059=0; age6069=0; age7079=0;  agege80=0;
if age_dx<=49      then do; agelt49=1; agegrp=1; end;    
if 50<=age_dx<=59  then do; age5059=1; agegrp=2; end;  
if 60<=age_dx<=69  then do; age6069=1; agegrp=3; end;   
if 70<=age_dx<=79  then do; age7079=1; agegrp=4; end;   
if age_dx>=80      then do; agege80=1; agegrp=5; end;  
run;     
             

/*creating year_dx groups*/
data cancer.model;
set cancer.model;
year_dxgrps=year_dx;
if 1988<=year_dx<1993 then do; year_dxgrps=1; end;
if 1993<=year_dx<1998 then do; year_dxgrps=2; end;
if 1998<=year_dx<2003 then do; year_dxgrps=3; end;
if 2003<=year_dx<2009 then do; year_dxgrps=4; end;
if year_dx>=2009 then delete; 
run;
/*converting year_dx into numeric variable*/
data  cancer.model;
set  cancer.model;
year_numeric = input(year_dx, 4.);
run; 

/*states*/
data cancer.model;
set cancer.model;
if st_cnty=02900 then state=01;/*Alaska*/
if 06000<=st_cnty<07000 then state=02;/*California*/
if 09000<=st_cnty<10000 then   state=03;/*Connecticut*/
if 13000<=st_cnty<14000 then  state=04;/*Georgia*/
if 15000<=st_cnty<16000 then  state=05;/*Hawaii*/
if 19000<=st_cnty<20000 then   state=06;/*Iowa*/
if 21000<=st_cnty<=22000 then  state=07;/*Kentucky*/
if 22000<=st_cnty<23000 then  state=08;/*Maine*/
if 26000<=st_cnty<27000 then  state=09;/*Minnesota*/
if 34000<=st_cnty<35000 then  state=10;/*New Jersey*/
if 49000<=st_cnty<50000 then   state=11;/*Utah*/
if 53000<=st_cnty<54000 then   state=12;/*Washington*/
run;

/*checking for states*/
proc freq data=cancer.model;
table st_cnty;
run;


/*erpr variable*/
data cancer.model;
set cancer.model;
erpr_pos=0;  erpr_neg=0;  erpr_unk=0;
if ERSTATUS=1 or ERSTATUS=3 or PRSTATUS=1 or PRSTATUS=3 
then do; erpr=1; erpr_pos=1; end;
if ERSTATUS=2 and PRSTATUS=2 then do; erpr=2;  erpr_neg=1; end;
if ERSTATUS=2 and PRSTATUS=4 then do; erpr=2;  erpr_neg=1; end;
if ERSTATUS=4 and PRSTATUS=2 then do; erpr=2;  erpr_neg=1; end;
if ERSTATUS=4 and PRSTATUS=4 then do; erpr=9;  erpr_unk=1; end;
if erpr=. or erpr_pos=. or erpr_neg=. then delete;
run;

/*checking for var erpr*/
proc freq data=cancer.model;
table erpr;
run;


/*checking for subtypes*/
proc freq data=cancer.model;
table BRST_SUB;
run;


/*Kaplan meier by year of diagnosis*/
proc lifetest data=cancer.model notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;


/*marriage status*/
data cancer.model;
set cancer.model;
if mar_stat=9 then delete;
run;
data cancer.model;
set cancer.model;
if mar_stat='1' or mar_stat='3' or mar_stat='4' or mar_stat='5' then do marriage_stat='single'; num_marriage_stat=1; end;
if mar_stat='2' then do marriage_stat='married'; num_marriage_stat=2; end;
if mar_stat='6' then do marriage_stat='unmarried'; num_marriage_stat=3; end;
run;
proc freq data=cancer.model;
table marriage_stat;
run;

/* year of birth*/
data cancer.model; 
set cancer.model;
if YR_BRTH<=1927 then YR_BRTHGRP=1; 
if 1927<YR_BRTH<1940 then YR_BRTHGRP=2;
if 1940<=YR_BRTH<1950 then YR_BRTHGRP=3;
if 1950<=YR_BRTH<1960 then YR_BRTHGRP=4;
if 1960<=YR_BRTH<1990 then YR_BRTHGRP=5;
if 1970<=YR_BRTH<1980 then YR_BRTHGRP=6;
if 1980<=YR_BRTH<1990 then YR_BRTHGRP=7;
run;
proc freq data=cancer.model;
table YR_BRTHGRP;
run;

data cancer.model;
set cancer.model;
if cstumsiz=000 then tumorsize=1;
if 000<cstumsiz<50 then tumorsize=2;
if 050<cstumsiz<100 then tumorsize=3;
if 100<cstumsiz<150 then tumorsize=4;
if 150<cstumsiz<200 then tumorsize=5;
if 200<cstumsiz<250 then tumorsize=6;
if 250<cstumsiz<300 then tumorsize=7;
if 300<cstumsiz<350 then tumorsize=8;
if 350<cstumsiz<400 then tumorsize=9;
if 400<cstumsiz<450 then tumorsize=10;
if 450<cstumsiz<500 then tumorsize=11;
if 500<cstumsiz<550 then tumorsize=12;
if 550<cstumsiz<600 then tumorsize=13;
if 600<cstumsiz<650 then tumorsize=14;
if cstumsiz=991 then tumorsize=20;
if cstumsiz=992 then tumorsize=21;
if cstumsiz=993 then tumorsize=22;
if cstumsiz=994 then tumorsize=23;
if cstumsiz=995 then tumorsize=24;
if cstumsiz=996 then tumorsize=25;
if cstumsiz=998 then tumorsize=26; 
if cstumsiz=999 then tumorsize=99; /*unknown*/
run;
proc freq data=cancer.model;
table tumorsize;
run;

/*Kaplan meier by year of diagnosis*/
proc lifetest data=cancer.model notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;

/*Kaplan meier for yrs_dxgrp 1 vs 2*/
proc lifetest data=cancer.model(where=(numyear_dxgrps=1 or numyear_dxgrps=2)) notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;

/*Kaplan meier for yrs_dxgrp 2 vs 3*/
proc lifetest data=cancer.model(where=(numyear_dxgrps=2 or numyear_dxgrps=3)) notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;

/*Kaplan meier for yrs_dxgrp 3 vs 4*/
proc lifetest data=cancer.model(where=(numyear_dxgrps=3 or numyear_dxgrps=4)) notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;

/*Kaplan meier for yrs_dxgrp 1 vs 4*/
proc lifetest data=cancer.model(where=(numyear_dxgrps=1 or numyear_dxgrps=4)) notable;
time survtime*numstat_rec(1);
strata year_dxgrps / test=logrank;
run;

/*Kaplan meier by agegroups, across year_dxgrps*/
proc sort;
by year_dxgrps;
proc lifetest data=cancer.model notable;
by year_dxgrps;
time survtime*numstat_rec(1);
strata agegrp;
run;

/*Kaplan meier by year_dxgrps, across agegrps*/
proc sort;
by agegrp;
proc lifetest data=cancer.model notable;
by agegrp;
time survtime*numstat_rec(1);
strata year_dxgrps;
run;


/*Kaplan meier by agegroups, across races*/
proc sort;
by race;
proc lifetest data=cancer.model notable;
by race;
time survtime*numstat_rec(1);
strata agegrp;
run;

/*Kaplan meier by agegroups, across marriage status*/
proc sort;
by marriage_stat;
proc lifetest data=cancer.model notable;
by marriage_stat;
time survtime*numstat_rec(1);
strata agegrp;
run;


/*interpreting the status variable, under censored*/
proc print data=cancer.model (obs=100);
where numstat_rec=1;
var year_dxgrps AGE_1REC num_race num_marriage_stat erpr
GRADE regnodes state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT;
run;


/*What sort of patients are these, and how many diagnosed pts over the yrs*/
PROC TABULATE DATA=cancer.model;
CLASS year_dxgrps AGE_1REC num_race num_marriage_stat erpr
GRADE regnodes state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT;
WHERE numstat_rec=1;
TABLE  year_dxgrps AGE_1REC num_race num_marriage_stat erpr
GRADE regnodes state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT*PCTN PCTN;;
RUN;




/*making variables numeric*/
data cancer.model;
set cancer.model;
num_lateral= input(lateral, 2.);
num_grade= input(grade, 2.);
num_tumor_2v= input(tumor_2v, 2.);
num_VSRTSADX= input(VSRTSADX, 2.);
num_ADJNM_6VALUE= input(ADJNM_6VALUE, 2.);
num_N_VALUE= input(N_VALUE, 2.);
run;


/*how correlated are the variables*/
PROC CORR DATA=cancer.model;
var year_dxgrps AGE_1REC num_race num_marriage_stat erpr
GRADE regnodes state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT;
RUN;


/*to create Table */
proc freq data=cancer.model;
table 
year_dxgrps AGE_1REC num_race num_marriage_stat erpr
GRADE regnodes state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT;
run;



/* simple logistic regression for long term survivor*/
data cancer.alive;
set cancer.model;
if numstat_rec=1; /*alive*/
run;    /*1411 observations*/
proc sort data=cancer.alive;
by year_dx;
run;  /*oldest was 1990*/

data cancer.long;
set cancer.model;
if srv_time_mon>=0060 then long=1; /*alive*/
if srv_time_mon<0060 then long=0;
if year_dx<=1990 then delete; 
run;

proc means data=cancer.long;
var long;
run;

proc logistic data=cancer.long;
	class year_dxgrps;
   model long (EVENT='1') = year_dxgrps;
run;

/*if we have censored data stat_rec=1 means alive 4=dead*/
data  cancer.model;
set  cancer.model;
numstat_rec= input(stat_rec, 1.);
format year_dxgrps 4.;
numyear_dxgrps = year_dxgrps + 0;
run;

/*testing all over again Cox regression*/
%MACRO m(v);
PROC PHREG DATA=cancer.model;
CLASS 
year_dxgrps AGE_1REC GRADE state 
VSRTSADX ADJNM_6VALUE
YR_BRTH SEQ_NUM 
PRIMSITE HISTO2V HISTO3V BEHO3V GRADE
DX_CONF REPT_SRC
EOD10_SZ EOD10_EX EOD10_ND EOD10_PN EOD10_NE
TUMOR_1V TUMOR_2V
CSTUMSIZ CSEXTEN CSLYMPHN CSMETSDX
CS1SITE CS3SITE CS6SITE 
DAJCCT DAJCCN 
CSVFIRST  SURGPRIF  SURGSITF NUMNODES
NO_SURG SS_SURG   SURGSITE 
ICDOTO9V ICDOT10V ICCC3WHO ICCC3XWHO
HISTREC RAC_RECA RAC_RECY ORIGRECB 
AJCC_STG FIRSTPRM CODPUB CODPUBKM 
AYASITERWHO  VSRTSADX ODTHCLASS
CSTSEVAL CSRGEVAL CSMTEVAL CS15SITE
INSREC_PUB DAJCC7T DAJCC7N  
ADJTM_6VALUE ADJNM_6VALUE ADJM_6VALUE ADJAJCCSTG
CS7SITE HER2 BRST_SUB 
CSMETSDXB_PUB  CSMETSDXBR_PUB  CSMETSDXLIV_PUB  CSMETSDXLUNG_PUB  
N_VALUE MALIGCOUNT

; 
MODEL survtime*numstat_rec(1) = &v;
RUN;
%MEND;
%m(year_dxgrps);
%m(AGE_1REC);
%m(num_race);
%m(num_marriage_stat);
%m(erpr);
%m(grade);
%m(state);
%m(YR_BRTH);
%m(SEQ_NUM); 
%m(PRIMSITE);
%m(HISTO2V);
%m(HISTO3V);
%m(BEHO3V);
%m(GRADE);
%m(DX_CONF);
%m(REPT_SRC); 
%m(EOD10_SZ);
%m(EOD10_EX);
%m(EOD10_ND);
%m(EOD10_PN);
%m(EOD10_NE);
%m(TUMOR_1V);
%m(TUMOR_2V);
%m(CSTUMSIZ);
%m(CXSEXTEN);
%m(CSLYMPHN);
%m(CSMETSDX);
%m(CS1SITE);
%m(CS3SITE);
%m(CS6SITE);
%m(DAJCCT);
%m(DAJCCN);
%m(CSVFIRST);
%m(SURGPRIF);
%m(SURGSITF);
%m(NUMNODES);
%m(NO_SURG);
%m(SS_SURG); 
%m(SURGSITE);
%m(ICDOTO9V); 
%m(ICDOT10V); 
%m(ICCC3WHO); 
%m(ICCC3XWHO);
%m(HISTREC); 
%m(RAC_RECA); 
%m(RAC_RECY); 
%m(ORIGRECB); 
%m(HST_STGA); 
%m(AJCC_STG);  
%m(FIRSTPRM); 
%m(CODPUB); 
%m(CODPUBKM); 
%m(AYASITERWHO);  
%m(VSRTSADX); 
%m(CSTSEVAL); 
%m(CSRGEVAL); 
%m(CSMTEVAL); 
%m(CS15SITE); 
%m(INSREC_PUB);
%m(DAJCC7T); 
%m(DAJCC7N);  
%m(ADJTM_6VALUE); 
%m(ADJNM_6VALUE); 
%m(ADJM_6VALUE); 
%m(ADJAJCCSTG);
%m(CS7SITE); 
%m(HER2); 
%m(BRST_SUB);
%m(CSMETSDXB_PUB);  
%m(CSMETSDXBR_PUB);  
%m(CSMETSDXLIV_PUB);  
%m(CSMETSDXLUNG_PUB);  
%m(N_VALUE); 
%m(MALIGCOUNT); 

proc freq data=cancer.model;
table grade;
run;
