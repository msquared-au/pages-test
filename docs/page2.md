---
layout: page
title: This is the page title, specified in the YAML at the top of the file
custom-javascript-list:
    - "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
---

This is another page.  Let's see how we put this into the structure!

* IP address: <input class="variable_def" id="var_ip" value="1.2.3.4" />

Some text, including the IP address: <span class="var_ip">ip</span>

Some more text, including the IP address: <span class="var_ip">ip</span>

Hello tag: {% hello %}

<script>
function update() {
  $("." + $(this).prop("id")).text($(this).val());
}
$(".variable_def")
  .on("change keyup paste", update)
  .each(update);
</script>
