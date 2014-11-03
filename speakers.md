---
layout: wide
---

<div class="speaker_list">
	<ul>
		{% for speaker_hash in site.data.speakers %}
			{% assign speaker = speaker_hash[1] %}
			<li>
				<div class="speaker">
					<a href="./{{ speaker.name_normal }}" > 
						<img class="speaker_head" src="/images/orgs/{{ speaker.org_normal }}/{{ speaker.name_normal }}.png">
						<h3> {{ speaker.name }} </h3>
					</a>
					<span> {{ speaker.title }} {% if speaker.org %} @ {{ speaker.org }} {% endif %} </span>
				</div>
			</li>
		{% endfor %}
		<div style='clear:both;'></div>	
	</ul>	
</div>