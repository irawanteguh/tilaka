<?php
    class Tilaka{

        public static function oauth(){
            $body   = array("client_id"=>CLIENT_ID_TILAKA,"client_secret"=>CLIENT_SECRET_TILAKA,"grant_type"=>"client_credentials");
            $header = array("Content-Type: application/x-www-form-urlencoded");

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."auth",
                'method'  => "POST",
                'header'  => $header,
                'body'    => http_build_query($body),
                'savelog' => true,
                'source'  => "TILAKA-TOKEN"
            ]);

            $responsecurl = json_decode($responsecurl,TRUE);
            return $responsecurl;
        }

        public static function uuid($name,$email){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."generateUUID?name=".$name."&email=".$email,
                'method'  => "POST",
                'header'  => $header,
                'body'    => "",
                'savelog' => true,
                'source'  => "TILAKA-UUID"
            ]);

            return json_decode($responsecurl,TRUE);
        }

        public static function uuidreenroll($useridentifier){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."generateUUID?request_type=re_enroll&user_identifier=".$useridentifier,
                'method'  => "POST",
                'header'  => $header,
                'body'    => "",
                'savelog' => true,
                'source'  => "TILAKA-UUIDENROLL"
            ]);

            return json_decode($responsecurl,TRUE);
        }

        public static function registerkyc($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."registerForKycCheck",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-REGISTERKYC"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function checkregistrasiuser($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."userregstatus",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-CHECKREGISTRASIUSER"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function checkcertificateuser($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."checkcertstatus",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-CHECKCERTIFICATEUSER"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function revoke($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKA_BASE_URL."requestRevokeCertificate",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-REVOKE"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function uploadfile($location){
            $header = array("Authorization: Bearer ".Tilaka::oauth()['access_token']);
            
            $mimedoc =mime_content_type($location);
            $infodoc =pathinfo($location);
            $namedoc =$infodoc['basename'];

            $requestbody = array(
                'file' => new CURLFILE($location,$mimedoc,$namedoc)
            );

            $responsecurl = curl([
                'url'     => TILAKALITE_URL."api/v1/upload",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $requestbody,
                'savelog' => false,
                'source'  => "TILAKA-UPLOADFILE"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function requestsign($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKALITE_URL."api/v1/requestsign",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-REQSIGN"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function excutesign($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKALITE_URL."api/v1/executesign",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-EXECUTESIGN"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

        public static function excutesignstatus($body){
            $header = array("Content-Type: application/json","Authorization: Bearer ".Tilaka::oauth()['access_token']);

            $responsecurl = curl([
                'url'     => TILAKALITE_URL."api/v1/checksignstatus",
                'method'  => "POST",
                'header'  => $header,
                'body'    => $body,
                'savelog' => true,
                'source'  => "TILAKA-SIGNSTATUS"
            ]);

            return json_decode($responsecurl,TRUE); 
        }

    }

?>