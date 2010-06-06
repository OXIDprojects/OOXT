<!DOCTYPE html>
<html lang="{$oView->getActiveLangAbbr()}">
<head>
   {* Title Dilimiter *}
   {assign var="delimiter" value=" - "}
   
   <title>{$oxcmp_shop->oxshops__oxtitleprefix->value|wrapin:"":$delimiter}{$title|default:$oView->getTitle()|strip_tags}{$titlesuffix|default:$oView->getTitleSuffix()|wrapin:$delimiter}</title>

   <meta http-equiv="Content-Type" content="text/html; charset={$charset}" />

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
   
   <!-- TODO: Link CSS Files here! -->

   <link rel="icon" type="image/x-icon" href="{$oViewConf->getImageUrl()}icons/favicon.ico" /> 
   <link rel="apple-touch-icon" href="{$oViewConf->getImageUrl()}icons/apple-favicon.png" />
   
   {if $rsslinks}
      {foreach from=$rsslinks item=rssentry}
      <link rel="alternate" type="application/rss+xml" title="{$rssentry.title|strip_tags}" href="{$rssentry.link}" />
      {/foreach}
   {/if}
</head>