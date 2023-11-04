---
layout: page
title: This is the page title, specified in the YAML at the top of the file
custom-javascript-list:
    - "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
---

This is another page.  Let's see how we put this into the structure!

* IP address: <input class="variable_def" id="var_ip" value="1.2.3.4" />
* Hostname: {% include def.html name="hostname" default="myhost.com" %}

Some text, including the IP address: <span class="var_ip">ip</span>

Some text, including the hostname: {% include ref.html name="hostname" %}

Some more text, including the IP address: <span class="var_ip">ip</span>

IP address in a `code span: <span class="var_ip">ip</span>`

Hostname in a `code span: {% include ref.html name="hostname" %}`

IP address in a code block:

    This is the IP address: <span class="var_ip">ip</span>

Hostname in a code block:

    This is the hostname: {% include ref.html name="hostname" %}

<script>
function update() {
  $("." + $(this).prop("id")).text($(this).val());
}
$(".variable_def")
  .on("change keyup paste", update)
  .each(update);
</script>
