<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>
    <#if (content.title)??>
      <#escape x as x?xml>${content.title}</#escape>
      <#else>CJUG
    </#if>
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/css/main.css" />
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
		<noscript><link rel="stylesheet" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/css/noscript.css" /></noscript>
</head>

<body class="is-preload">