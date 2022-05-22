name:footer
description:Нижняя часть сайта (подвал)
======
<div class="container flex">
	<div class="logo">
		[[if? &is=`[*id*]:not:1` &then=`<a href="/"><img src="assets/templates/belarmmet/img/logo.png" alt=""/></a>`
					&else=`<img src="assets/templates/belarmmet/img/logo.png"  alt=""/>`]]
	</div>
	<div><a href="#callback" data-uk-modal class="primary-button">Заказать звонок</a></div>
	{{footer-menu}} 
	<div class="webcompany">
		<p>
		<a href="https://webcompany.by/uslugi/prodvizhenie" target="_blank">Продвижение сайтов в Минске<img src="assets/templates/belarmmet/img/webcompany.png" alt=""/></a></p>
	</div>
</div>


</script>