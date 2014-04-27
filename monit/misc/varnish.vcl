# orginal http://www.computerminds.co.uk/articles/monitoring-varnish
#
# Include vcl file for monit in default.vcl
#  include "/etc/monit/misc/varnish.vcl";
# Note: add the include before the vcl_recv statement in the default.vcl

sub vcl_recv {
  # Change this URL to something that will NEVER be a real URL for the hosted
  # site, it will be effectively inaccessible.
  if (req.url == "/monit-url-check-rndstr2") {
    error 200 "Varnish up";
  }
}