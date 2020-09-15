terraform {
  backend "gcs" {
    bucket      = "<Bucket_Name>"
    prefix      = "<Key_Prefix_Name>"
    credentials = "~/<DIR_PATH>/<Service_Account_File_Name>.json"
  }
}
