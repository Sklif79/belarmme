name:AjaxSearch_tplAjaxResult
description:Result Tpl for AjaxSearch
======
<div class="[+as.resultClass+]">
  <strong><a class="[+as.resultLinkClass+]" href="[+as.resultLink+]" title="[+as.longtitle+]">[+as.pagetitle+]</a></strong>
[+as.descriptionShow:is=`1`:then=`
  <small><span class="[+as.descriptionClass+]">[+as.description+]</span></small>
`+]
[+as.extractShow:is=`1`:then=`
  <div class="[+as.extractClass+]"><p>[+as.extract+]</p></div>
`+]
[+as.breadcrumbsShow:is=`1`:then=`
  <span class="[+as.breadcrumbsClass+]">[+as.breadcrumbs+]</span>
`+]
</div>