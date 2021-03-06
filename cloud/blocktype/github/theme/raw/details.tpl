{if $microheaders}{include file="viewmicroheader.tpl"}{else}{include file="header.tpl"}{/if}

        <h2>
            {if $viewid != 0}
            <a href="{$WWWROOT}view/view.php?id={$viewid}">{$viewtitle}</a>{if $ownername} {str tag=by section=view}
            <a href="{$WWWROOT}{$ownerlink}">{$ownername}</a>: {$data.name}{/if}
            {else}{$viewtitle}{/if}
        </h2>

        <div id="view">
        <h4>
            <div class="fl filedata-thumb">
                <a href="{$WWWROOT}artefact/cloud/blocktype/github/download.php?id={$id}">
				{if $type == 'folder'}
                <img alt="" src="{theme_url filename="images/folder.gif"}">
                {else}
                <img alt="" src="./icons/{$data.repoicon}.png">
                {/if}
				</a>
            </div>
            {if $data.type == 'file'}<a href="{$WWWROOT}artefact/cloud/blocktype/github/download.php?id={$id}">{$data.name}</a>{else}{$data.name}{/if}
        </h4>

        <table class="filedata">
            <tbody>
                <tr>
                    <th>{str tag=Description section=artefact.file}:</th>
                    <td style="vertical-align:middle">{$data.description}</td>
                </tr>
                <tr>
                    <th>{str tag=language section=mahara}:</th>
                    <td style="vertical-align:middle">{$data.language}</td>
                </tr>
                <tr>
                    <th>{str tag=Created section=artefact.file}:</th>
                    <td style="vertical-align:middle">{$data.created}</td>
                </tr>
                <tr>
                    <th>{str tag=lastmodified section=artefact.file}:</th>
                    <td style="vertical-align:middle">{$data.updated}</td>
                </tr>
                {if $type != 'folder'}
                <tr>
                    <th>{str tag=Size section=artefact.file}:</th>
                    <td style="vertical-align:middle">{$data.size} ({$data.bytes} {str tag=bytes section=artefact.file})</td>
                </tr>
                {/if}
                <tr>
                    <th>{str tag=Download section=artefact.file}:</th>
                    <td style="vertical-align:middle">
                    <a href="{$WWWROOT}artefact/cloud/blocktype/github/download.php?id={$data.fullname}&archive=tarball&branch={$data.branch}">{str tag=Download section=artefact.file}&nbsp;TAR</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="{$WWWROOT}artefact/cloud/blocktype/github/download.php?id={$data.fullname}&archive=zipball&branch={$data.branch}">{str tag=Download section=artefact.file}&nbsp;ZIP</a>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>

{if $microheaders}{include file="microfooter.tpl"}{else}{include file="footer.tpl"}{/if}
