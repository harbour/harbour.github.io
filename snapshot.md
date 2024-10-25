---
layout: default
title: "Snapshot Builds"
---
{% if site.fork %}
# Snapshot Build
{% else %}
# Nightly Builds
{% endif %}

{% if site.fork %}
Latest source code can be downloaded from the repository page and it is also
linked from the homepage. Snapshot binaries for the Windows platform are also
built after each commit and are made available from the releases page and the
homepage. These Windows binaries require an x64 OS to run and able to produce
both x86 and x64 applications. The C compiler used in these snapshot builds
is the latest release of MinGW.

Binary builds for other platforms can be built directly from source. See more
on how to do that in the [README](https://github.com/{{ site.repo_slug }}/#readme).

While these packages are _not_ intended for production use; they are most of
the time solid to use in production. It is worth to keep an eye on the latest
commits and/or [ChangeLog]({{ site.baseurl }}/changelog{{ site.ilink_suffix }})
to see if there is any work in progress and what changes to expect.
{% else %}
(NOTE) Seems like the nightly builds are not being updated anymore... please check.

You can find the latest development sources for Harbour directly on our website.
Source code is checked out of version repository and packaged every night and
made available along with the binaries built for Windows.

These packages are _not_ intended for production use; please use the packages at
the download page.
{% endif %}

If you do encounter a bug, please test the latest snapshot build to see if it
has already been fixed before reporting it.

# Download Links

To download latest development sources, go to the
[Project Status]({{ site.baseurl }}/#project-status) section on the main page.
{% if site.fork %}
To download snapshot or stable binaries of Harbour, visit [here]({{ site.dl_url }}).
{% else %}
To download nightly or stable release of Harbour, visit [here]({{ site.dl_url }}).
{% endif %}
