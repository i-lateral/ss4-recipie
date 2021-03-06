<h2 class="text-center"><span>$MenuTitle</span></h2>
<div class="row">
	<div class="col-sm content" role="main">
        <p>$Content.Summary</p>
        <% if $Address || $PhoneNumber || $Email %>
            <p>
                <strong>Contact Info:</strong>
            </p>
                <% if $Address %>
                    <address>
                        $Address
                    </address>
                <% end_if %>
            <% if $PhoneNumber || $Email %>
                <p>
                    <% if $PhoneNumber %>
                        $PhoneNumber
                    <% end_if %>
                    <% if $Email %>
                        <% if $PhoneNumber %><br /><% end_if %>
                        <a href="mailto:{$Email}">$Email</a>
                    <% end_if %>
                </p>
            <% end_if %>
        <% end_if %>
        <p><a href="$Link"><strong>$MenuTitle</strong></a></p>
    </div>
	<div class="col-sm" role="main">
        <% if $MapEmbed %>
            <div class="embed-responsive embed-responsive-map">
                $MapEmbed.RAW
            </div>
        <% else_if $FeaturedImage %>
            <p class="banner-image">$FeaturedImage.ContentBanner</p>
        <% end_if %>
    </div>
</div>