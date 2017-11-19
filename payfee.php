
<?php

include 'header.php';


?>

    <!--=========== BEGINlibrary page ================-->
     <div class="container" >
      <div class="row" style="position: relative; padding-top: 100px; padding-bottom: 50px;">
        <div class="col-lg-12 col-md-12">
        
          <div class="col-lg-12 col-md-12" style="text-align: left;">
          <p align="justify"><a href ="img/uploads/FRC_BE.pdf" target="_blank">FRC Fee Details - BE
</a></p>

<p align="justify"><a href="img/uploads/FRC_MBA.pdf" target="_blank">FRC Fee Details - MBA
</a></p>
        <p>Please select from the following:</p>
        <table width="100%" cellpadding="0" border="0" cellspacing="0" class="billing_table">
          <tbody>
            
      
      <tr>
            <td height="35" valign="middle"><span>
              <input type="radio" name="webfronts" value="https://www.payumoney.com/customer/paymentOptionsGroup/#/10DD32A7A1F4009ADBBE7B12EA9D6BFB/6thand8th" class="check" checked="checked" />
              6TH & 8TH SEMESTER</span></td>
              </tr>
        
        
       
       <tr>
        <td height="35" valign="middle"><span>
                <input type="radio" name="webfronts" value="https://www.payumoney.com/customer/paymentOptionsGroup/#/10DD32A7A1F4009ADBBE7B12EA9D6BFB/2ndand4th" class="check" />
               2ND AND 4TH SEMESTER</span></td>
        </tr>
        
        
        
        
        
         
        
        
        </tbody></table>
                                <p>
                                  <input type="button" class="submit" value="Submit" name="webfronts" onclick="onPayNowClick()">
                                </p>
                                <br/>
                                <a class="close" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" href="javascriptvoid(0)">Close</a>
                              </form>
                            </div>
                          </div>
                          <div onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" class="black_overlay" id="fade"></div>
                          
                          <p align="center"> 
                          <div style="text-align:center; margin-top:20%">
                          <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" style="display:inline-block; margin:0;"><img alt="" src="img/payfee-green-large.png"></a></div></p>

      
      </div>
    </div>
               
        

      </div>
    </div> 
    </div>

  <?php
  include 'footer.php';
  ?>