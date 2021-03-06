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
                {if $type == 'folder'}
                <img alt="" src="{theme_url filename="images/folder.gif"}">
                {else}
                {if $data.type == 'file'}<a href="{$WWWROOT}artefact/cloud/blocktype/googledrive/download.php?id={$id}">{/if}
                <img alt="" src="{theme_url filename="images/file.gif"}">
                {if $data.type == 'file'}</a>{/if}
                {/if}
            </div>
            {if $data.type == 'file'}<a href="{$WWWROOT}artefact/cloud/blocktype/googledrive/download.php?id={$id}">{$data.name}</a>{else}{$data.name}{/if}
        </h4>

        <table class="filedata">
            <tbody>
                <tr>
                    <th>{str tag=Description section=artefact.file}:</th>
                    <td style="vertical-align:middle">{$data.description}</td>
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
                    <td style="vertical-align:middle">{if $data.size == '-'}-{else}{$data.size} ({$data.bytes} {str tag=bytes section=artefact.file}){/if}</td>
                </tr>
                {/if}
                <tr>
                    <th>{str tag=Shared section=artefact.cloud}:</th>
                    <td style="vertical-align:middle">{if $data.shared}<img alt="" src="{theme_url filename="images/success.gif"}">{/if}</td>
                </tr>
                {if $data.type == 'file'}
                <tr>
                    <th>{str tag=Download section=artefact.file}:</th>
                    <td style="vertical-align:middle">
                    <a href="{$WWWROOT}artefact/cloud/blocktype/googledrive/download.php?id={$id}">{str tag=Download section=artefact.file}</a>
                    </td>
                </tr>
                {/if}
            </tbody>
        </table>
        </div>

{if $microheaders}{include file="microfooter.tpl"}{else}{include file="footer.tpl"}{/if}
