<!DOCTYPE html>
<html lang="en">
<head>
    <% base_tag %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=10"/>
    $MetaTags
    <link rel="shortcut icon" href="/favicon.ico"/>
    <% if $SiteConfig.AdditionalHeadContent %>
        $SiteConfig.AdditionalHeadContent.RAW
    <% end_if %>
</head>
<body class="$ClassName.ShortName $URLSegment">
<a href="#maincontent" id="skipnav">Skip to main content</a>