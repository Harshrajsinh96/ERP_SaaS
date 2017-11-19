<html xmlns:ng="http://angularjs.org/" id="ng-app">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
     <title>PayUMoney</title>
     <link href="//media.payumoney.com/index.php?f=/media/css/layout.css,/media/css/buyer_payment/buyer_payment.css,/media/font/font.css,E/jQuery/NgProgress/ngProgress.css,media/css/rupees_font/rupees.css" rel="stylesheet" type="text/css" />
     <link href="https://file.payumoney.com/images/favicon_index.ico" rel="shortcut icon" type='image/x-icon' sizes="16x16"/>
     <!--[if lte IE 8]>
      <script>
        document.createElement('ng-include');
        document.createElement('ng-pluralize');
        document.createElement('ng-view');
 
        // Optionally these for CSS
        document.createElement('ng:include');
        document.createElement('ng:pluralize');
        document.createElement('ng:view');
      </script>
      <![endif]-->
</head>
<body>
     <div class="layout_main">
  <div class="shadow_bg">
    <div class="layout">
      <div class="main">
        <div class="header">
            <!-- <ul class="login_sec">
              <li><a href="#">Welcome Rajeev Singh</a></li>
              <li class="login">|<a href="#"><span class="login_icon left"></span>Login</a></li>
            </ul> -->
            <h1 class="logo_fr_pymnt"><a href="pay.js"></a></h1>
        </div>
        <ng:view></ng:view>
      </div>
    </div>
  </div>
</div>
     <script async="true" type="text/javascript">
          /*Some ie fixes */
         /*Basic fixes for indexOf in ie can be moved to some */
            if (!Array.prototype.indexOf) { 
                Array.prototype.indexOf = function(obj, start) {
                     for (var i = (start || 0), j = this.length; i < j; i++) {
                         if (this[i] === obj) { return i; }
                     }
                     return -1;
                }
            }
           var _reqM = [//@wiki sequence is neccessary.
             'A/jquery/jquery.min.js',
             'A/angular.min.js',
            'A/angular-route.min.js',
             'E/jQuery/placeholder.js',
             'A/storage.js',
             'A/angular-cookies.min.js',
             'A/angular-resource.min.js',
             'customer/paymentOptionsGroup/route.js',
            'Application/bootstrap.js',
             'Application/models/authModel.js',
             'Application/models/merchantModel.js',
             'Application/models/paymentModel.js',
             'Application/models/webServicesModel.js',
             'Application/models/webFrontModel.js',
             'Application/controllers/front/paymentOptionsGroupController.js',
             'E/Google/googleRecordsPageVisits.js',
             'E/Google/gaService.js',
             'E/Google/feedback.js',
             'E/jQuery/NgProgress/ngProgress.min.js',
             'Application/service/nProgressService.js'
           ];

           (function(document) {

              //@TODO add max-length on script src.
              //      add debug mode:
              //           this will add scripts as one on one.
              var ng = document.createElement('script'); ng.type = 'text/javascript'; ng.async = true;
              ng.src = '//ux.payumoney.com/index.php?f=' + _reqM.join(',');
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ng, s);
               if(document.all){   // if IE this would fired.
                        ng.onreadystatechange = function(){ // for IE.
                         if((("loaded" === ng.readyState || "complete" === ng.readyState) && !ng.onloadDone)){
                              angular.bootstrap(document,["app"]);
                         }
                        }
                    }
                   ng.onload = function(){   // for other browsers.
                    angular.bootstrap(document,["app"]);
                   }
           })(window.document);
     </script>
</body>
</html>