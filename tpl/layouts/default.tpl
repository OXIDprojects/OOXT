<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$oView->getActiveLangAbbr()}" lang="{$oView->getActiveLangAbbr()}">
<head>
   <title></title>

   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

   {if $oView->noIndex() == 1}
   <meta name="robots" content="noindex, nofollow" />
   {elseif $oView->noIndex() == 2}
   <meta name="robots" content="noindex, follow" />
   {/if}
   
   {extif value=$oView->getMetaDescription()}
   <meta name="description" content="{$value}" />
   {/extif}
   
   {extif value=$oView->getMetaKeywords()}
   <meta name="keywords" content="{$value}" />
   {/extif}
   
   {extif value=$oView->getCanonicalUrl()}
   <link rel="canonical" href="{$value}" />
   {/extif}

   <!-- <link rel="icon" type="image/x-icon" href="/favicon.ico" /> 
   <link rel="apple-touch-icon" href="/apple-favicon.png" /> -->
   
   {if $rsslinks}
      {foreach from=$rsslinks item=rssentry}
      <link rel="alternate" type="application/rss+xml" title="{$rssentry.title|strip_tags}" href="{$rssentry.link}" />
      {/foreach}
   {/if}
</head>
   <body>
      {$ooxt_content}
   </body>
</html>