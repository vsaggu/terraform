
provider "google" {
  credentials = "${file("ferrous-cogency-238209-139b10bb21bb.json")}"
  project = "ferrous-cogency-238209"
  region = "${var.region}"
}
