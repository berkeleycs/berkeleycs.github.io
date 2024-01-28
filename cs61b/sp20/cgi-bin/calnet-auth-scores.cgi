<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>Login - CAS &#8211; Central Authentication Service</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><meta charset="UTF-8"/><meta http-equiv="Content-Type" content="application/xhtml+xml; charset=UTF-8"/><meta name="keywords" content="Central Authentication Service"/><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/><script src="https://auth.berkeley.edu/cas/js/common.js" type="text/javascript"></script>

    <link rel="stylesheet" href="https://auth.berkeley.edu/cas/themes/default/media.css" type="text/css"/><link rel="icon" href="https://auth.berkeley.edu/cas/favicon.ico" type="image/x-icon"/><script src="https://auth.berkeley.edu/cas/js/jquery.min.js" type="text/javascript"></script>    
    <script src="https://auth.berkeley.edu/cas/js/firefox.js" type="text/javascript"></script>

    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="themes/default/ie.css"/>
    <script src="js/ie8.polyfill.js"></script>
    <![endif]--></head>

<body xmlns="http://www.w3.org/1999/xhtml">
<div class="tesselation"></div>

<div class="hidden"><h1>UC Berkeley</h1></div>
<div class="wrapper">
    <div id="content" role="main">
        <div>
        <script src="https://auth.berkeley.edu/cas/js/login.js" type="text/javascript"></script>

        <form method="post" id="loginForm" onsubmit="return checkId();" role="main">
            <fieldset>

                <h2 class="title">
    <strong>CalNet</strong> Authentication Service
</h2>
<p class="note" ></p>

                <p>
                    <label for="username" id="username-label"><span class="accesskey">C</span>alNet ID:</label>

                    <input class="required"
                           id="username"
                           size="25"
                           type="text"
                           autocomplete="off"
                           autocapitalize="none"
                           aria-required="true"
                           aria-labelledby="username-label" name="username" value=""/></p>

                <p>
                    <label for="password"><span class="accesskey">P</span>assphrase (Case Sensitive):</label>

                    <input class="required"
                           type="password"
                           id="password"
                           size="25"
                           autocomplete="off" name="password" value=""/></p>

                <p class="submit">
                    <input type="hidden" name="execution" value="f8f3df5f-3fb4-4566-befd-473f3d514c06_ZXlKaGJHY2lPaUpJVXpVeE1pSjkuODdhNnprb3A5VERoNkVPRzI4WUFhcEFVRkVMZE96R1RlcjFvZ1JMQ3RiKzE5S1FxS2o1bGRhQ3VLcU1QQ3FacFJZRFY2dHZTTDZOaVZsNnJpdVpSUW4rb1NoYnRBY3h0dkpiMGRPOGRVQXZqVHZpRlp3cW5QRXlaRHpGeDNxTjJxd29sUzdIMi9BSUZYdTczTjJQM0RJTHl2T2pTbkFhTVE5c09UMksxRHdGK0pFU1V5SG03bEUrd0NVZEc0Y1lYcnRKY1BvaE9VSWgrRzRZQUJvSlcrY3FnM0daOFRuSDVVWjk3MU9BcXdMcnl1UDVPQnp1VXlrTjFkVVR6cDlxVUw3NTZoWEtXTUFwYTFjOFFiWVk2R0lIeW04WnV4WHhGU2w5cGpEMVVaSFBmQ29TVHdCK2tRZzY0RTFkYVFQdDBTT3cxaHhSVmtlZHRVYk4wZ0lUYjE5Sm1LWDNkR3hkaDRVQWt4Y1FQREhIdkMzbHVDcGhhbDdkU0pXcGlxeERBb2xwbE53dUhCRUJiWHBQUDlzNG9UMGtTUEd3WERYUWN4TVZHNXNRaVFYWnBJdlJXZ0VIKzJnekpHNnVmMGZENFJORDMwbE5OMm5Sck5PQ2hKOGEyc2hvWkU3anByT2JHWmwrVDU4ckFYMkpOOTMyd0ZERjRua0dlajdxaG9QQ3ZjS2RJWEV6YVpSN2Q4ZGpPWDlTOE1YcHBXbDNQMkNrNmg0K3lsdFpjRnZhTHVtREpwWm02ZGtMellSUm1qRnorMGltdFc0MUo1aGRDTjRjWDdnZ1ZhMjZsUnBjTWIwRVFjaE9raTFzK2FOQ1hnZWk2d2ZwTTRYQlJJQzFuanZLallzZ0srRjJ2YUxrM3FXQkVkeVQxWTRpWkxxb0hhWFk2SkVjSHFKbDdXZCsvR3hHNkNiQVNvTU9INEEza3JMTlFYK2QwUFk3QlUwOVFTVnAxTllJSVdyMFpBUHRwNzE4VDBMWkZiZHRhMjMyQ29pclZoVmhsVjYxMU9icXRzTHBEZEJBYVdDcFdEa25Xc0UwTlpMTFpqbHcwajBPbVZuK3V4eDFmQ093cm8vM0VVU000ajgxU3R3bDU3NGhRVktHaUFtY1ZGRlFCU3MyZDBSekhSRDVaNTdnWEV2M0xJamtRUjltRldUcGVraDhXUFp3cFA4TmI4RGhPUGNvTWtBT2RTQzQ2c1BlaE43WlFhUkRFa1BlcHpYMHdMY3FoSDBKRXdIWVhFNmEvU29QajFrRXQ5TmtKSjhhQkJuUWNmRFV3d0dYWndJek1CNEh4U0cwUmd6aG5VaFYzK3FXbXMyNTJEb2JHVm85VE9WMms5SVJJdG1mZEIxUDVxVlFOeE41Tzd6cnAvWnlrZmYwZHY2SVdDT1hHUVp5ZE11Q3RRY2EyYnNQQjdmaXo0WERBV1VUQnZWcFZsMEJtb0tYcTY4ZGtRNTFHKzE5b09iNGhaeGhLOHN4aTRhTW9XaGVCamsxclY4NTdsYTBabmIvKzZoR2ZBVGZYTVNqOFQvV3lINFA0WEJJdlVCcFV0Rk02TFc5LzlEY2xyQXU1UFFaVW1QSkdvVGozazVNZ0Vpam9ZMzNuVVhTTVVWWHpUazRsZjlNN1dOY2UwODdPSGFORGQvdVcvOEEvWStoRS9nOUxRSmlXdm4xSGFJYWw0Y0tDUEdCTEhDRE5IbWNMbElMV2k0VllFYXpEbjMzeUR6enVwZ2NiYzMzcEZBeCs5YjRkaFJBc1pPRUlVK0g5MlJha2hmVFdPSnhBWUF5K0wvbHMxbmxSbExVTG9neTMxeWZML2pUdlgrQXJYc0FIZ1F0RENFcHVlNU1BVUpYdVE1NmphcmJoY3ovTDR0eWJwRjV4WEEwalRHU3RoVUV4dGx0TzI5VHdnKzlKc0l5STVaTTVTNFp5NlorNmI4N0ZxYmpuZlhUL0dsdG1temlRQWZzUlNSZFAraFpUdWR1RDd6WTNNdkk4NVlOUThJakk4QUM1MWR0eVY4NkNOR2xZcExaUVVPS0hkejhqOU04dklINVI1cTljb0w0WE9LZHZKd2lQU0VvcXU3UXV6U0tUV1pBcUpmb3Z6QzREak83eVBrWkV6Y2VNaUxsL25ScGE1S0dEMy9VZGRqMWd3T1R3Qm5ZSzdXRGlTTnJSd2d6RHBSd09peWVtby8rY1M4MW54U1BOd0wzWjBUb2ZPaEl5VGVkYmpYQW8yaFZjWEVsV29SbGxSdDhNK0JZZmlJblRYMitjamdtblRUSmRPcnhKTEhMMHBsZ0lncUJMd2ErSy9waFphNzh0OEtXQ25vMjVRN3Vsa1o2U2ZZanhndFNpcFhXbE0rMjBzT2NSQTdSdCsrVlMyaXRwcTJTdkhWU005eVN3R3dUeVFEVDlmVTRoZ2o2dWVTWUs3THdoUUZ6YlYrT3pWYTdzTG1iLzBGSytFQ1RDenROOUVXeTRXTjZLWSt4SlRqU240RWJhOXowT2ppV3RJTGNvQmNLcGQ2SnV2RndvelBTZ24rempBMkNORmRWUFM1OEdBUGk0NkNNdzBQM1BnMWQ1azAyb0svQ3dvNnVvbEFDaXRZdHN1ekZ2Uk9XNjJrSXp0cFVyWC81MHpRcFdkbWt4dEczQ0wzQVU2ckQ2U09xMjZZRnBvcllxL3g0UVpmLzcxR1YzdktMK3hqUjluOHExN1JqUzhFWlRWWHljcGFBaU9GTFpiSXJZdWdyYjFKK0JaUjBxVlBwQkxQRTk2aUk0dEE1WFBrSFllMkpteWZCZ2VWaTNVaTJ4cHFBM2Vpakw5RjhvVFQwTFhBSlM1WVRKU014Z3M0ZVY1UGt6dDVXWW5hUjJiYVA3UGR1MkdQS0RSY291WEdMakkyNzhmL2dJQXk5NTV1SHlTdnBkWWlhSmZ1eXIyVjBubTVOMFVKYVdNeUxCL3RMd2J2OFBoajJzZ3ppNzh1T0xiRlhYcGtiUkNxZGlCS3ZOeEIxRVoxQXBnL21PaFpwZitrMy9BREFiWFhPMWgwZm1RMS9jV3BWSzJGQ0hQTVlwNEE3LzJCTHM3c3JRVE8zdjFROXROVWZKUTJQMGZ0bGhxM2N5SVJYSlRodFFxMmx1ZDRVUVdpRTZDcEliaVFIS2JTS2lFbEg3MVJyN2J5K09uK2Y0YTFGcXNYM0VTOS9kWXhXQWlNUnptOVJvRkZDK2pScEpNZkVpT2YybkV6NEs0OXdDR1B4dWx5RHoyaE5PbjFFUXBLcnpNMkN3elQ0cDV4NWtmc1JCZTFXb3ZJSUt6czRFYWFKRDRVVjZyZjZ4WjUwSTR3b0VlQVlxSDAydytLb25DUEdyUzNxTHZDaU1oK09aRzVxZG5nV29EeWZYWkJCdzhQL2xBQ3NvRXpub0xqckZrNXZHakl3NmNBbEpGWG1DeHJEOXRGeS9abXFpSjVja0tqUnU5WVEwdmliTXcyWTNaSGp1c0FxZ09nOHFJVVFIUzdNWTdKWmtuQWhNeUxuWHdweGpVZ1ppZ1gvSmp1eDl5a0hUTzV2aTZqQitTVUd5REpLeUdYcTYwcldadTFSRFk5bEQ4MXZjUkkvR2wyUFU2SjRNYmRETU1FK0lycE9KUmRtZzkvNkk0ZkdQQmZEYUNHalNhUGl5bGNXdkNxRnFxQzJKTDFpbkhFOFdOSFJpS1FUWkFkYW5XaUNNVGwrSHkzaHBxU0lWcFNkZjJSNW5TRFdsYklnVDBYV2xUcmJ0VEZVNmd0eHp3SnpFN2tjR2pkQ2pWWTE3K0JoQ091SmhweXFBSjJzSWZaQkwwamRUamlWbVFxNGw2M0Z0M2Ntc2UwOERINGhGZ0FXK0xpb0NiWlRxVm9XQWZ4MnpTT1JEMktLdDVJUkhEUENuN2c1bVZiWkd1ZGRmaU04dGgvTURzY09keEhVbjJiamhxKzQwN21US3BXbVRIOG9EMHRIN3ZVdmpkTjA0bHRjK3Bldy85NEJybm5NRzhXZlZQTTBNdkh6U3AzZFV1Z1p4NnZGSDZTeFZvTC91ZXg2c2lRZG9NcWtTNGhBSDhTMk1BdTZYcitHeUxZK0gvOUZlZGkxQXpCVktOUGpJVzNCOXNwOWxGMGtDQm8zc3NsenFuQ01LT0xJVTBoYmRtSkljdkFXdXRzMFFsRVFQbjhBU21HQ1N0NnhTcmdIUUpGVHlyV094UVptWi95UDNpU01zd0hpcDBNLzhnMEdOcm5RWE5IN2tyNHFXVFJzeTYwUkFIM1YwQVNGTUFIWEVzQW5VTXlzVWtvWWdNSU1GTVp0a0NhVXJFU2h6WHZXVVVUT01VQ1VRY2NSTnJiQ2huRlprKytQakFLMnhRR1lHT1QvZklUWURMYWVzU3NheXdnL2lkSnhnQUpFdVdKM2FEdEg2cW5ROGlWWGUzUVJZMlJ4NnFNdVBOdTh0TUt6VjVPcFhFeGNnVElNb0o3Ri9xd2RFQXpscHc0Znl3ckZVTUdGbjJqZGw4ZFEwdG9FU01HMmo5cktjV3pvTWNITmhkVCt5MDRFaWpva2VoeGZZOGxUdDMwUUFGdmVyZ2FqcFBtaGFaM1prcDBrMUY5d05KaG1FZVdMbkJzZ0hHYXdtS0YwVUpkcnNON3haTlFEOVN5eGhOK00rOTN2SjBnbWZUQT09LnBlSTNOeGlYNjlkWDBTLTBiWTJrYXpWOFBkZkR5OG9XeUw1ZjBrWHFRcENYWU9pQVRwOGJUYUdnY2V0QXEtclh6bWdIMlo5MnQ0RC1hd0V2VnpxZUpR"/><input type="hidden" name="_eventId" value="submit"/><input type="hidden" name="geolocation"/>

                    <input class="button"
                           name="submit"
                           id="submit"
                           value="Sign In"
                           type="submit"/><span class="hidden"><br/><br/></span>

                    <span class='help'>
                        <a id="showHelpText" href='calnet-auth-scores.cgi#' aria-owns="helpText"><span class="forScreenReaders">Show </span>HELP<span class="forScreenReaders"> below</span></a>
                        <a id='hideHelpText' href='calnet-auth-scores.cgi#' style="display: none;">Hide HELP</a>
                    </span>
                </p>
                <p>
                    <label style="font-size: 0.7em; text-transform: uppercase; padding:0px">
                        <a href="https://bpr.calnet.berkeley.edu/account-manager/">Forgot CalNet ID or Passphrase?</a>
                        </label>
                </p>
                <p>
                    <label style="font-size: 0.7em; text-transform: uppercase; padding:0px">
                        <a href="https://mycalnet.berkeley.edu">Manage my CalNet account</a>
                    </label>
                </p>
            </fieldset>

            <div id="helpTextTop">

                <div>
                    <div id="helpText" class="help-copy" style="display: none"  aria-hidden="true"  role="complementary"  tabindex="-1">
                        <div><div role="region" tabindex="1">
    <h4 class="calnet-help">How to Sign In as a SPA</h4>
    
    <p>
        To sign in to a Special Purpose Account (SPA) via a list, add a "<strong>+</strong>" to your CalNet ID 
        (e.g., "<strong>+mycalnetid</strong>"), then enter your passphrase. The next screen will show a drop-down 
        list of all the SPAs you have permission to access. Select the SPA you wish to sign in as.
    </p>

    <p>
        To sign in directly as a SPA, enter the SPA name, "<strong>+</strong>", and your CalNet ID into 
        the CalNet ID field (e.g., “<span style="white-space:nowrap;"><strong>spa-mydept+mycalnetid</strong></span>”), 
        then enter your passphrase.
    </p>

    <p>
        To view and manage your SPAs, log into the <a href="https://idc.berkeley.edu/spa/">Special Purpose Accounts</a> application with your personal credentials.
    </p>

</div>
</div>
                        <div><div tabindex="3">
    <h3 class="calnet-help">Help</h3>

    <p>For assistance, see:</p>

    <p><a href="https://calnetweb.berkeley.edu/it-help-desk-and-calnet-support">Help desk information</a></p>

    <p><a href="https://mycalnet.berkeley.edu">Manage my CalNet account</a>

</div>
</div>
                    </div>
                    <noscript>
                        <div class="help-copy"  role="complementary">
                            <div><div role="region" tabindex="1">
    <h4 class="calnet-help">How to Sign In as a SPA</h4>
    
    <p>
        To sign in to a Special Purpose Account (SPA) via a list, add a "<strong>+</strong>" to your CalNet ID 
        (e.g., "<strong>+mycalnetid</strong>"), then enter your passphrase. The next screen will show a drop-down 
        list of all the SPAs you have permission to access. Select the SPA you wish to sign in as.
    </p>

    <p>
        To sign in directly as a SPA, enter the SPA name, "<strong>+</strong>", and your CalNet ID into 
        the CalNet ID field (e.g., “<span style="white-space:nowrap;"><strong>spa-mydept+mycalnetid</strong></span>”), 
        then enter your passphrase.
    </p>

    <p>
        To view and manage your SPAs, log into the <a href="https://idc.berkeley.edu/spa/">Special Purpose Accounts</a> application with your personal credentials.
    </p>

</div>
</div>
                            <div><div tabindex="3">
    <h3 class="calnet-help">Help</h3>

    <p>For assistance, see:</p>

    <p><a href="https://calnetweb.berkeley.edu/it-help-desk-and-calnet-support">Help desk information</a></p>

    <p><a href="https://mycalnet.berkeley.edu">Manage my CalNet account</a>

</div>
</div>
                        </div>
                    </noscript>
                </div>

            </div>

        </form>

        <script type="text/javascript">
            var i = "One moment please..."
            $("#fm1").submit(function() {
                $(":submit").attr("disabled", true);
                $(":submit").attr("value", i);
                return true;
            });
        </script>

    </div>
        <div class="copyright" aria-hidden="true">
            <small>Copyright &copy; <script type="text/javascript">
                var theDate=new Date()
                document.write(theDate.getFullYear())
            </script> UC Regents. All rights reserved.</small>
        </div><!--end copyright-->

    </div><!-- end content -->
</div><!-- end wrapper -->
<div class="debuggingInfo" aria-hidden="true">
    Served from: <span>auth-p1.calnet.berkeley.edu/169.229.218.87</span> - <span>5.3.15.1</span>.
</div>

</body>
</html>