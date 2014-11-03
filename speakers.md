---
layout: wide
---

<div class="speaker_list">
	<ul>
		{% for speaker_hash in site.data.speakers %}
			{% assign speaker = speaker_hash[1] %}
			<li>
				<div class="speaker">
					<img class="speaker_head" src="/images/orgs/{{ speaker.org_normal }}/{{ speaker.name_normal }}.png">
					<h3> <a href="./{{ speaker.name_normal }}" > {{ speaker.name }} </a> </h3>
					<span> {{ speaker.title }} {% if speaker.org %} @ {{ speaker.org }} {% endif %} </span>
				</div>
			</li>
		{% endfor %}
		<div style='clear:both;'></div>	
	</ul>	
</div>